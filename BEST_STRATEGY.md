# 🎯 最优API搭配策略

**目标**: 信息最多 + 准确性最大

---

## 📊 最优方案：4 API 组合

### 方案概述

```python
def 最优查询(运单号):
    结果 = {
        '实时状态': call_api_1_tracktrace(),    # ⭐⭐⭐⭐⭐ 最准确
        '完整详情': call_api_2_inquiry(),       # ⭐⭐⭐⭐⭐ 最全面
        '配送轨迹': call_api_3_journey(),       # ⭐⭐⭐⭐
        '商品信息': call_api_4_gateway()        # ⭐⭐⭐
    }
    
    return 智能合并(结果)  # 取每个API的优势
```

---

## 🔄 调用顺序与策略

### 推荐顺序

```
1️⃣ TrackTrace/Lading → 实时状态（最优先）
   ↓ 如果有数据，记录最准确的状态
   
2️⃣ Delivery/Inquiry → 完整详情
   ↓ 获取39个详细字段
   
3️⃣ DeliveryLadingJourney → 配送轨迹
   ↓ 获取历史轨迹记录
   
4️⃣ Gateway/Bussiness → 商品信息
   ↓ 获取商品详情
   
5️⃣ 智能合并
   ↓ 优先使用更准确的数据源
```

---

## 📋 各API的角色分工

### API 1: TrackTrace/Lading ⭐⭐⭐⭐⭐

**角色**: 实时状态提供者

**提供字段**:
```yaml
最准确的数据:
  - Status (状态码) ✅ 最实时
  - StatusName (状态名) ✅ 最实时
  - ReceiverMobile (收件电话) ✅ 最准确
  - ReceiverName (收件人) ✅ 最准确
  - SenderName (发件人) ✅ 最准确
  - CreateDate (更新时间) ✅ 最实时
```

**使用场景**:
- ✅ 需要最新状态
- ✅ 快递员刚扫描
- ✅ 实时追踪

**局限性**:
- ❌ 字段少（只有15个）
- ❌ 无金额细分
- ❌ 无GPS信息
- ❌ 可能查不到历史订单

---

### API 2: Delivery/Inquiry ⭐⭐⭐⭐⭐

**角色**: 完整信息提供者

**提供字段**:
```yaml
最全面的数据:
  - 39个完整字段
  - IssueDate, LoadDate, DeliveryDate (时间详情)
  - CollectAmount, FeePPA, FeeC (金额细分)
  - ReceiverIDCard (身份证)
  - Longitude, Latitude (GPS坐标)
  - Note, ReasonName (备注原因)
  - HandlerName (处理人)
```

**使用场景**:
- ✅ 需要完整信息
- ✅ 金额查询
- ✅ 时间详情
- ✅ GPS定位
- ✅ 历史订单查询

**局限性**:
- ⚠️ 状态可能延迟2-5分钟
- ⚠️ 需要更严格的认证

---

### API 3: DeliveryLadingJourney ⭐⭐⭐⭐

**角色**: 轨迹历史提供者

**提供数据**:
```yaml
配送轨迹:
  - 每个扫描节点的时间
  - 每个节点的状态
  - 每个节点的地点
  - 是否已送达判断
```

**使用场景**:
- ✅ 查看完整配送历史
- ✅ 分析配送路线
- ✅ 确认配送进度

---

### API 4: Gateway/Bussiness ⭐⭐⭐

**角色**: 商品信息提供者

**提供数据**:
```yaml
商品详情:
  - ProductName (商品名称)
  - Quantity (数量)
  - Price (单价)
  - Amount (总价)
  - Weight (重量)
```

**使用场景**:
- ✅ 商品清单
- ✅ 价格核对
- ✅ 重量信息

---

## 🧠 智能合并策略

### 合并规则

```python
def 智能合并(api1, api2, api3, api4):
    result = {}
    
    # 规则1: 状态信息 - 优先 TrackTrace（最实时）
    if api1:
        result['状态'] = api1['Status']  # ⭐ 最准确
        result['状态名'] = api1['StatusName']
    elif api2:
        result['状态'] = api2['Status']  # 备选
        result['状态名'] = api2['StatusName']
    
    # 规则2: 基础信息 - 优先 TrackTrace（最准确）
    if api1:
        result['收件人'] = api1['ReceiverName']  # ⭐ 最准确
        result['收件电话'] = api1['ReceiverMobile']
        result['发件人'] = api1['SenderName']
    elif api2:
        result['收件人'] = api2['ReceiverName']  # 备选
        result['收件电话'] = api2['ReceiverPhone']
        result['发件人'] = api2['SenderName']
    
    # 规则3: 扩展信息 - 只有 Inquiry 有
    if api2:
        result['代收金额'] = api2['CollectAmount']
        result['发行日期'] = api2['IssueDate']
        result['装载日期'] = api2['LoadDate']
        result['GPS经度'] = api2['Longitude']
        result['GPS纬度'] = api2['Latitude']
        result['备注'] = api2['Note']
    
    # 规则4: 轨迹信息 - 来自 Journey
    if api3:
        result['轨迹'] = api3
        result['轨迹数量'] = len(api3)
    
    # 规则5: 商品信息 - 来自 Gateway
    if api4:
        result['商品'] = api4
        result['商品数量'] = len(api4)
    
    return result
```

---

## 📈 字段优先级表

| 字段 | 最优来源 | 备选来源 | 原因 |
|------|----------|----------|------|
| **状态** | TrackTrace ⭐ | Inquiry | 实时性 |
| **收件人姓名** | TrackTrace ⭐ | Inquiry | 准确性 |
| **收件电话** | TrackTrace ⭐ | Inquiry | 准确性 |
| **发件人姓名** | TrackTrace ⭐ | Inquiry | 准确性 |
| **代收金额** | Inquiry ⭐ | 无 | 独有 |
| **发行日期** | Inquiry ⭐ | 无 | 独有 |
| **装载日期** | Inquiry ⭐ | 无 | 独有 |
| **GPS坐标** | Inquiry ⭐ | 无 | 独有 |
| **配送轨迹** | Journey ⭐ | 无 | 独有 |
| **商品信息** | Gateway ⭐ | 无 | 独有 |

---

## 💰 成本 vs 收益分析

### 4 API 全调用

```yaml
优点:
  ✅ 信息最全（50+个字段）
  ✅ 准确性最高（实时状态）
  ✅ 覆盖所有场景
  
缺点:
  ❌ 请求次数多（4次）
  ❌ 耗时较长（~2-4秒）
  ❌ 流量消耗大
  
适用场景:
  ✅ 重要订单查询
  ✅ 客服详细查询
  ✅ 数据分析需求
```

### 3 API 组合（推荐）

```yaml
组合: Inquiry + Journey + Gateway
省略: TrackTrace

优点:
  ✅ 信息够用（39+个字段）
  ✅ 节省1次请求
  ✅ 耗时适中（~1.5-3秒）
  
缺点:
  ⚠️ 状态可能延迟几分钟
  
适用场景:
  ✅ 普通查询
  ✅ 批量查询
  ✅ 历史订单
```

### 2 API 快速查询

```yaml
组合: Inquiry + Journey
省略: TrackTrace + Gateway

优点:
  ✅ 核心信息都有
  ✅ 速度快（~1-2秒）
  ✅ 省流量
  
缺点:
  ❌ 无商品详情
  ⚠️ 状态可能延迟
  
适用场景:
  ✅ 快速查询
  ✅ 移动端查询
  ✅ 大批量扫描
```

### 1 API 极简查询

```yaml
选择: Inquiry

优点:
  ✅ 最快（~0.5-1秒）
  ✅ 39个字段足够
  
缺点:
  ❌ 无轨迹
  ❌ 无商品详情
  ⚠️ 状态可能延迟
  
适用场景:
  ✅ 超大批量查询
  ✅ 只要基本信息
```

---

## 🎯 不同场景的推荐方案

### 场景1: 客服接电话查询

```python
# 方案：4 API 全调用
✅ TrackTrace - 告诉客户最新状态
✅ Inquiry     - 核对详细信息
✅ Journey     - 说明配送历程
✅ Gateway     - 确认商品内容

原因: 客户等待，需要完整信息
```

### 场景2: 批量数据导出

```python
# 方案：3 API（Inquiry + Journey + Gateway）
✅ Inquiry  - 主要信息
✅ Journey  - 配送轨迹
✅ Gateway  - 商品详情
❌ TrackTrace - 省略（减少请求）

原因: 批量查询，状态延迟可接受
```

### 场景3: 实时监控面板

```python
# 方案：1 API（TrackTrace）
✅ TrackTrace - 实时状态
❌ 其他 - 不需要

原因: 只要状态，要求速度快
```

### 场景4: 数据分析/统计

```python
# 方案：2 API（Inquiry + Journey）
✅ Inquiry  - 金额、时间等统计字段
✅ Journey  - 轨迹分析
❌ TrackTrace - 不需要（历史数据）
❌ Gateway    - 不需要（非必要）

原因: 分析历史数据，不需要实时性
```

---

## 📊 实际效果对比

### 测试用例: EP493018285VN

| 方案 | API数 | 字段数 | 耗时 | 状态准确 | 评分 |
|------|-------|--------|------|----------|------|
| **4 API全调用** | 4 | 50+ | 3s | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| **3 API组合** | 3 | 45+ | 2s | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| **2 API快速** | 2 | 40+ | 1.5s | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| **1 API极简** | 1 | 39 | 1s | ⭐⭐⭐ | ⭐⭐⭐ |

---

## 🚀 使用脚本

### 已创建的工具

```bash
# 1. 最优查询脚本（4 API）
python3 optimal_query.py

# 2. 批量查询脚本（3 API）
python3 batch_query_full.py

# 3. 单个查询脚本（1 API）
python3 inquiry_api.py
```

---

## 💡 最终推荐

### 🏆 通用场景：3 API 组合

```python
推荐组合:
  ✅ Inquiry API        - 完整详情（39字段）
  ✅ Journey API        - 配送轨迹
  ✅ Gateway API        - 商品信息
  ❌ TrackTrace API     - 省略（除非需要秒级实时）

原因:
  • 信息量: 45+字段，足够全面
  • 准确性: 状态延迟2-5分钟，可接受
  • 性能:   耗时2秒，速度适中
  • 成本:   3次请求，性价比最高

适用: 95% 的场景
```

### ⚡ 特殊需求：按需选择

```python
if 需要秒级实时状态:
    先调用 TrackTrace
    
if 不需要商品详情:
    省略 Gateway
    
if 只要基本信息:
    只用 Inquiry
```

---

## 📝 总结

**最优搭配 = TrackTrace + Inquiry + Journey + Gateway**

- **信息最多**: 50+个字段
- **准确性最大**: 状态来自实时系统
- **适合场景**: 重要查询、客服系统

**实用推荐 = Inquiry + Journey + Gateway**

- **信息足够**: 45+个字段
- **准确性好**: 状态延迟可接受
- **适合场景**: 95%的普通查询

**快速方案 = Inquiry 或 TrackTrace**

- **信息精简**: 39个或15个字段
- **速度最快**: 1秒以内
- **适合场景**: 批量查询、实时监控
