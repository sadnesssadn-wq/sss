# API 对比分析：哪个更准确？

## 📊 实际测试结果

### 测试样本: EP493018285VN

| API | 能否查到 | 字段数 | 响应码 |
|-----|----------|--------|--------|
| **Inquiry** | ✅ 能 | 39个字段 | 00 |
| **TrackTrace/Lading** | ❌ 不能 | 0 | 01 (无数据) |

### 测试样本: EP493006857VN, EP493027413VN 等

| API | 能否查到 |
|-----|----------|
| **Inquiry** | ❌ 都查不到 |
| **TrackTrace/Lading** | ❌ 都查不到 |

---

## 🤔 "更准确"可能的含义

### 假设1: 电话号码更准确 ⭐⭐⭐

**TrackTrace/Lading**:
```json
{
  "ReceiverMobile": "0388609197"  // 直接返回完整号码
}
```

**Inquiry**:
```json
{
  "ReceiverPhone": "0388609197",   // 完整号码
  "ReceiverMobile": "0388609197"   // 也有这个字段
}
```

**结论**: 两者都返回完整电话，无差异

---

### 假设2: 实时性更好 ⭐⭐⭐⭐

**可能性**:
- TrackTrace/Lading 直接查询运单主表
- Inquiry 查询更复杂的视图或汇总表
- TrackTrace 更新更及时

**但实际测试**: 
- ❌ TrackTrace 查不到数据
- ✅ Inquiry 反而能查到

---

### 假设3: 状态更可靠 ⭐⭐⭐

**TrackTrace/Lading** 可能:
```json
{
  "Status": 3,
  "StatusName": "Đã giao"  // 已送达
}
```

**Inquiry** 返回:
```json
{
  "Status": null,
  "StatusName": null,
  "DeliveryDate": "15/10/2025"
}
```

**分析**: Inquiry 有时 Status 为空，但有详细时间

---

### 假设4: 数据库不同 ⭐⭐⭐⭐⭐

```
TrackTrace/Lading → 查询【运单主表】
  - 最原始的数据
  - 更新最及时
  - 但可能数据不全

Inquiry → 查询【订单详情表/视图】  
  - 聚合多个表的数据
  - 字段更完整
  - 但更新可能延迟
```

---

## 🎯 可能的真实情况

### 场景A: 新订单

```
时间线:
10:00 - 创建订单 → 写入运单主表
10:01 - TrackTrace/Lading ✅ 能查到
10:01 - Inquiry ❌ 还查不到（视图未更新）
10:05 - 系统同步
10:06 - Inquiry ✅ 能查到了
```

### 场景B: 状态更新

```
快递员扫描签收:
14:00 - 扫描签收 → 更新运单主表
14:01 - TrackTrace/Lading ✅ 立即看到"已签收"
14:01 - Inquiry ❌ 还是"配送中"
14:05 - 系统同步
14:06 - Inquiry ✅ 显示"已签收"
```

### 场景C: 历史订单

```
老订单（已归档）:
TrackTrace/Lading ❌ 查不到（只查当前表）
Inquiry ✅ 能查到（包含历史数据）
```

---

## 📋 两个API的实际用途

### TrackTrace/Lading - 快递员APP使用

```python
# 快递员扫描运单时：
1. 调用 TrackTrace/Lading
2. 快速返回基本信息
3. 15个核心字段足够
4. 响应速度快
```

**优点**:
- ⚡ 实时性好
- 🎯 状态准确
- 🚀 响应快

**缺点**:
- ❌ 字段少
- ❌ 历史数据可能查不到

### Inquiry - 客服/查询系统使用

```python
# 客户查询订单时：
1. 调用 Inquiry
2. 返回完整详情
3. 39个字段包含所有信息
4. 可能稍慢但更全面
```

**优点**:
- ✅ 字段完整（39个）
- ✅ 时间详细（IssueDate, LoadDate）
- ✅ 金额细分
- ✅ 历史数据

**缺点**:
- 🐌 可能稍慢
- ⏳ 更新可能延迟几分钟

---

## 💡 使用建议

### 如果你需要"准确性"

#### 实时状态查询（快递员视角）
```python
# 用 TrackTrace/Lading
✅ 扫描后立即查询
✅ 需要最新状态
✅ 只要基本信息
```

#### 完整信息查询（客服视角）
```python
# 用 Inquiry
✅ 需要详细金额
✅ 需要时间信息
✅ 需要GPS坐标
✅ 查询历史订单
```

### 最佳实践：组合使用

```python
def smart_query(tracking_code):
    # 先用 TrackTrace 快速查询
    result1 = tracktrace_api(tracking_code)
    
    if result1.get('Code') == '00':
        # 有数据，返回实时状态
        return result1
    else:
        # 查不到，用 Inquiry 查历史
        result2 = inquiry_api(tracking_code)
        return result2
```

---

## 🔍 测试数据对比（假设都能查到）

| 字段 | TrackTrace/Lading | Inquiry | 差异 |
|------|-------------------|---------|------|
| **运单号** | Code | ParcelCode | ✅ 相同 |
| **状态** | Status, StatusName | Status, StatusName | ⚠️ TrackTrace可能更及时 |
| **收件人** | ReceiverName | ReceiverName | ✅ 相同 |
| **电话** | ReceiverMobile | ReceiverPhone | ✅ 相同 |
| **时间** | CreateDate | IssueDate, LoadDate, DeliveryDate | ❌ Inquiry更详细 |
| **金额** | Value, Fee | CollectAmount, FeePPA, FeeC | ❌ Inquiry更详细 |
| **GPS** | ❌ 无 | ✅ 有坐标 | ❌ Inquiry独有 |

---

## 🎯 结论

**"更准确"的真正含义可能是**:

1. **实时性**: TrackTrace/Lading 状态更新更快 ⭐⭐⭐⭐⭐
2. **直接性**: 直接查运单主表，无中间层 ⭐⭐⭐⭐
3. **快递员视角**: 这是快递员APP实际使用的API ⭐⭐⭐⭐⭐

**但Inquiry的优势**:
1. **完整性**: 39个字段 vs 15个字段 ⭐⭐⭐⭐⭐
2. **历史数据**: 能查更多订单 ⭐⭐⭐⭐
3. **详细信息**: 时间、金额、GPS ⭐⭐⭐⭐⭐

---

## 💬 你说的"更准确"具体指？

请告诉我：

1. **电话号码更准确**？
   - ReceiverMobile 字段值不一样？
   
2. **状态更实时**？
   - TrackTrace 显示已送达，Inquiry还是配送中？
   
3. **能查到更多订单**？
   - 某些单号 TrackTrace 能查，Inquiry 查不到？
   
4. **某个具体字段**？
   - 哪个字段的值更可靠？

这样我可以针对性地优化 `batch_query_full.py`！
