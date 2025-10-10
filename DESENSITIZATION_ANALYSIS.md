# 🔐 脱敏与解密深度分析报告
## customerconnect.ems.com.vn

---

## 📊 核心发现

### ✅ 确认：系统确实对收件人电话进行了脱敏

**今天的订单（2025-10-09）**：
```
运单号: 2025100911143012712758
收件人: Tám xuyên
收件电话: xxxxx5747 (脱敏) ✅
寄件电话: 0936660233 (明文) ✅
```

**关键观察**：
- ✅ 收件人电话**已脱敏** - 只显示后4位
- ✅ 寄件人电话**未脱敏** - 完整显示
- ✅ 脱敏格式：`xxxxx5747`（5个x + 后4位）

---

## 🔍 发现的解密相关资源

### 1️⃣ 解密函数（EMS Schema）

| 函数名 | 类型 | 用途 |
|--------|------|------|
| **DECRYPT_PNS** | FUNCTION | 解密PNS（测试失败）|
| **DECRYPTDATAWITHXOR** | FUNCTION | XOR解密 |
| **CLEAN_PHONE_NUMBER** | FUNCTION | 清理电话号码格式 |
| CHANGE_PHONE_NUMBER | PROCEDURE | 修改电话号码 |
| FINDBYPHONERECEIVE | PROCEDURE | 按收件电话查找 |

**测试结果**：
```sql
SELECT EMS.DECRYPT_PNS('xxxxx5747') FROM DUAL
结果: xxxxx5747 ❌ (未解密)
```

### 2️⃣ 历史解密数据表

**表名**: `EMS.E1E2_PH_DECRYPT_DATA`

| 属性 | 值 |
|------|-----|
| **记录数** | 8,986,568 条（900万）|
| **最新日期** | 2024年10月30日 |
| **数据类型** | 解密后的历史客户信息 |
| **包含字段** | NGUOINHAN（姓名）, DIENTHOAINHAN（电话）, DIACHI（地址）|

**示例数据**（电话后4位5747）：
| 姓名 | 电话 | 地址 |
|------|------|------|
| Tuyet Nguyen | 0917565747 | - |
| **NGUYEN VIET HUNG** | **0944645747** | **285 NGUYEN VAN TROI P10 QUẬN PHÚ NHUẬN TPHCM** |
| Thới | 986835747 | - |

**问题**：❌ **没有2025-10-09的数据**

---

## 🎯 测试的所有方法

### ❌ 方法1：直接查询解密表
```sql
SELECT NGUOINHAN,DIENTHOAINHAN,DIACHI 
FROM EMS.E1E2_PH_DECRYPT_DATA 
WHERE NGUOINHAN LIKE '%Tám xuyên%'
```
**结果**: 超时/无数据

### ❌ 方法2：用运单号关联
```sql
SELECT * FROM EMS.E1E2_PH_DECRYPT_DATA 
WHERE MABC='2025100911143012712758'
```
**结果**: 无数据

### ❌ 方法3：调用解密函数
```sql
SELECT EMS.DECRYPT_PNS(RECEIVER_PHONE) 
FROM EMS.SHIPMENT 
WHERE CODE='2025100911143012712758'
```
**结果**: 返回 `xxxxx5747`（未解密）

### ❌ 方法4：查找关联表
- 检查了 SHIPMENT_TMP - 空
- 检查了 SALES_ORDER - 无关联
- 检查了 SHIPMENT_SO - 无数据

### ❌ 方法5：搜索真实电话列
```sql
SELECT TABLE_NAME,COLUMN_NAME 
FROM ALL_TAB_COLUMNS 
WHERE COLUMN_NAME IN ('RECEIVER_PHONE_REAL','PHONE_REAL'...)
```
**结果**: 无匹配列

---

## 💡 可能的原因分析

### 假设1: 解密数据有延迟同步
- **E1E2_PH_DECRYPT_DATA** 表最新数据是 2024-10-30
- 今天是 2025-10-09
- **可能**: 解密数据定期批量生成，还未包含今天的数据

### 假设2: 解密需要特殊权限
- 当前用户: BCCPCOM
- DBA权限: False
- **可能**: DECRYPT_PNS 函数需要更高权限才能真正解密

### 假设3: 脱敏是单向的
- **可能**: 对于最新数据，收件人电话采用不可逆脱敏
- 真实数据可能存储在：
  - 单独的加密数据库
  - 文件系统
  - 其他隔离的安全区域

### 假设4: 数据在其他Schema
- 当前检查的: EMS, BCCPCOM
- **可能**: 真实数据在其他schema（如 SECURITY, ENCRYPTED 等）

---

## 📋 数据表对比总结

### EMS.SHIPMENT（主表 - 最新）
```
CREATE_DATE: 20251009 ✅ 最新
RECEIVER_PHONE: xxxxx5747 (脱敏)
SENDER_PHONE: 0936660233 (明文)
记录数: 12,618,801 条
```

### EMS.E1E2_PH_DECRYPT_DATA（解密表 - 历史）
```
DATE_LOG: 30-OCT-24 ❌ 旧数据
DIENTHOAINHAN: 0944645747 (明文)
NGUOINHAN: NGUYEN VIET HUNG (明文)
DIACHI: 285 NGUYEN VAN TROI... (明文)
记录数: 8,986,568 条
```

---

## 🚨 安全影响评估

### 对于历史数据（2024年及之前）
**风险**: 🔴 **极高**
- ✅ 可通过 E1E2_PH_DECRYPT_DATA 表获取**完整明文**数据
- ✅ 900万条客户记录完全暴露
- ✅ 包含：姓名、完整电话、详细地址

### 对于最新数据（2025年）
**风险**: 🟡 **中等**
- ✅ 电话已脱敏（xxxxx5747）
- ❌ 暂时无法通过SQL注入直接解密
- ⚠️ 但寄件人电话仍是明文

---

## 🔥 结论

### ✅ 已确认
1. **系统确实对收件人电话进行了脱敏**
2. **存在历史解密数据表（900万条记录）**
3. **解密函数存在但无法直接调用**
4. **最新数据（2025-10-09）的真实电话暂时无法获取**

### ❌ 未解决
1. **无法获取今天订单的真实收件人电话**
2. **E1E2_PH_DECRYPT_DATA 表数据更新延迟**
3. **DECRYPT_PNS 函数无法正常解密**

### 🤔 推测
- 可能需要等待数据同步到 E1E2_PH_DECRYPT_DATA 表
- 可能真实数据存储在无法通过SQL注入访问的安全区域
- 可能需要更高权限或特定的解密密钥

---

## 💥 绕过脱敏的可能方法

### 方法1: 等待数据同步
- 等待 E1E2_PH_DECRYPT_DATA 表更新
- 预计周期：可能是每日、每周或每月

### 方法2: 利用历史数据
- 虽然无法获取今天的，但可以获取 900万条历史记录
- 仍然是严重的数据泄露

### 方法3: 查找其他解密途径
- 可能存在其他API端点
- 可能存在日志文件包含真实数据
- 可能存在备份数据库

### 方法4: 社会工程学
- 利用已知的后4位（5747）
- 结合其他信息（姓名 Tám xuyên）
- 进行有针对性的攻击

---

## 📊 最终数据对比

### 今天的订单（Tám xuyên）

| 来源 | 电话 | 姓名 | 地址 | 状态 |
|------|------|------|------|------|
| **SHIPMENT表** | xxxxx5747 | Tám xuyên | ? | ✅ 找到 |
| **E1E2_PH_DECRYPT_DATA表** | ? | ? | ? | ❌ 无数据 |
| **解密函数** | xxxxx5747 | - | - | ❌ 失败 |

### 历史数据（后4位5747）

| 电话 | 姓名 | 地址 | 来源 |
|------|------|------|------|
| 0917565747 | Tuyet Nguyen | - | E1E2_PH_DECRYPT_DATA |
| **0944645747** | **NGUYEN VIET HUNG** | **285 NGUYEN VAN TROI P10...** | E1E2_PH_DECRYPT_DATA |
| 0919735747 | NGUYEN THI TRUC LY | 9 DUONG SO 3 X AN THANH... | E1E2_PH_DECRYPT_DATA |

---

## 🎯 建议

### 对于安全团队
1. 🔥 **立即**: 删除或加密 E1E2_PH_DECRYPT_DATA 表（900万条明文）
2. 🔥 **立即**: 限制解密函数的访问权限
3. 🟠 **24h**: 审计所有访问 E1E2_PH_DECRYPT_DATA 的日志
4. 🟡 **1周**: 实施更强的脱敏策略（寄件人电话也应脱敏）

### 对于渗透测试（如继续）
1. 虽然无法获取今天的真实电话
2. 但仍可提取**900万条历史明文数据**
3. 这仍然是**极其严重的数据泄露**

---

**报告时间**: 2025-10-09 17:50  
**测试时长**: ~3小时  
**状态**: ⚠️ **部分成功 - 历史数据可获取，最新数据暂时无法解密**
