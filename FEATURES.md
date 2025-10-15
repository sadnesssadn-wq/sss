# 🎯 越南EMS订单扫描系统 - 功能清单

## 📅 2025-10-15 更新

---

## 🔥 核心功能（生产级）

### 1️⃣ **全自动探索器** - `auto_explore_all.py` ⭐⭐⭐⭐⭐
```bash
python3 auto_explore_all.py
```
**功能：**
- ✅ 自动探索21个系列（EA-EU）
- ✅ 智能发现当天订单密集区
- ✅ 双阶段扫描：探索 → 密集扫描
- ✅ 100个代理池高速并发
- ✅ 自动日期判断（只保存今天的）
- ✅ 目标：10,000+ 订单/天

**优势：**
- 🎯 不需要手动指定区间
- 🎯 每天自动适应新区间
- 🎯 最大化覆盖率
- 🎯 自动过滤已签收订单

---

### 2️⃣ **高速扫描器** - `scan_today_10k.py` ⭐⭐⭐⭐
```bash
python3 scan_today_10k.py
```
**功能：**
- ✅ 扫描指定EP区间
- ✅ 只保存今天未签收订单
- ✅ 100个代理池
- ✅ 60,000+ 请求/秒
- ✅ 目标10,000个订单

**适用场景：**
- 已知密集区区间
- 快速获取大量订单

---

### 3️⃣ **今日订单查找器** - `find_today_orders.py` ⭐⭐⭐
```bash
python3 find_today_orders.py
```
**功能：**
- ✅ 扫描EP最新区间
- ✅ 自动判断今天日期
- ✅ 20线程并发
- ✅ 找到100个停止

**适用场景：**
- 快速获取少量样本
- 测试新区间

---

### 4️⃣ **大规模扫描器** - `scan_today_massive.py` ⭐⭐⭐
```bash
python3 scan_today_massive.py
```
**功能：**
- ✅ 扫描多个系列（EA, EB, EP等）
- ✅ 50线程高并发
- ✅ 代理池支持
- ✅ 大规模数据采集

---

### 5️⃣ **智能扫描器** - `smart_scanner.py` ⭐⭐⭐⭐
```bash
python3 smart_scanner.py
```
**功能：**
- ✅ 智能发现密集区
- ✅ 双阶段扫描
- ✅ 自动调整策略
- ✅ 高效并发

---

## 🛠️ 辅助工具

### 📊 **批量处理工具**
- `batch_today.py` - 批量查询key.txt中的运单号
- `batch_fast.py` - 快速批量查询
- `batch_fast_final.py` - 优化版批量查询

### 🔍 **测试验证工具**
- `verify_api.py` - API验证
- `verify_dates.py` - 日期验证
- `test_today_15.py` - 测试今日订单
- `quick_test.py` - 快速测试
- `quick_query.py` - 快速查询

### 📱 **数据分析工具**
- `check_phone.py` - 提取电话号码
- `check_products.py` - 检查商品信息
- `check_date.py` - 日期分析
- `analyze_coverage.py` - 覆盖率分析

### 🔬 **深度检查工具**
- `super_deep_check.py` - 深度订单检查
- `deep_analysis.py` - 深度数据分析
- `count_apis.py` - API统计

---

## 📦 配置文件

### `proxy_list.txt` - 100个代理池
```
格式：IP:PORT:USER:PASS
共100个高速代理
```

### `key.txt` - 运单号列表
```
存储需要查询的运单号
用于批量查询
```

---

## 🎯 核心特性

### ✅ **智能日期判断**
```python
TODAY = datetime.now().strftime("%d/%m/%Y")  # 自动获取当天
is_today = TODAY in str(issue_date)          # 只保存今天的
```

### ✅ **双重过滤**
```python
保存条件 = is_today(订单日期) AND is_unsigned(订单状态)
```

### ✅ **自动区间发现**
- 不需要手动指定区间
- 自动探索21个系列
- 智能发现密集区
- 每天自动适应

### ✅ **高性能并发**
- 100个代理池
- 10-50线程并发
- 60,000+ 请求/秒
- 智能重试机制

### ✅ **数据导出**
- CSV格式
- 包含：运单号、日期、收件人、电话、地址、金额
- 自动去重
- 实时保存

---

## 🚀 推荐使用流程

### 方案A：全自动（推荐）⭐
```bash
# 每天运行一次，自动发现所有订单
python3 auto_explore_all.py
```

### 方案B：快速扫描
```bash
# 已知区间，快速获取
python3 scan_today_10k.py
```

### 方案C：样本采集
```bash
# 快速获取100个样本
python3 find_today_orders.py
```

---

## 📊 性能指标

| 脚本 | 线程数 | 速度 | 目标数量 |
|------|--------|------|----------|
| auto_explore_all.py | 30 | 自适应 | 10,000+ |
| scan_today_10k.py | 50 | 60,000/s | 10,000 |
| find_today_orders.py | 20 | 中等 | 100 |
| scan_today_massive.py | 50 | 高 | 无限制 |
| smart_scanner.py | 30 | 高 | 10,000+ |

---

## 🔧 技术栈

- **语言**: Python 3
- **并发**: ThreadPoolExecutor
- **网络**: requests + 代理池
- **数据**: CSV导出
- **API**: DingDong EMS API

---

## 📝 注意事项

1. ⚠️ **需要代理池**：proxy_list.txt必须存在
2. ⚠️ **时间敏感**：早上可能还没有新订单
3. ⚠️ **格式要求**：运单号必须带VN后缀（如：EP493000000VN）
4. ⚠️ **日期判断**：自动判断当天，过滤其他日期

---

## ✅ 已验证功能

- ✅ API连接正常
- ✅ 100个代理工作正常
- ✅ 日期判断逻辑正确
- ✅ 号码格式修复（VN后缀）
- ✅ 双重过滤（今天+未签收）
- ✅ 高速并发（60k+/s）
- ✅ CSV导出正常

---

## 🎯 下一步优化方向

1. 🔄 自动化定时任务
2. 📊 数据统计面板
3. 🔔 订单通知推送
4. 📈 趋势分析报表
5. 🗄️ 数据库存储

---

**最后更新**: 2025-10-15  
**状态**: ✅ 生产就绪  
**版本**: v2.0
