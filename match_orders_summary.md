# 📊 09号订单匹配方案总结

## 数据库时间确认
- **当前时间**: 2025-10-10 03:16:39（凌晨）
- **10号订单**: 仅24条（只有3小时数据）
- **09号订单**: 58,984条（完整一天）✅

## 匹配方法：MABC + 姓名

### 第1步：从脱敏表提取订单信息
```sql
SELECT MABC, NGUOINHAN, DIENTHOAINHAN 
FROM EMS.E1E2_PH 
WHERE NGAY='20251009';
```
**结果示例**:
- MABC=100001: LÊ THỊ DUYÊN, Nguyễn Hiền, DUYÊN CHU...
- MABC=100005: giang nguyen thi, Huỳnh Văn Sơn...
- MABC=100916: (之前的Tám xuyên)

⚠️  **问题**: `DIENTHOAINHAN`字段为**空**（不是脱敏，是NULL）

### 第2步：用MABC+姓名去真实数据表匹配
```sql
SELECT NGUOINHAN, DIENTHOAINHAN 
FROM EMS.E1E2_PH_TEMP_DATA2_LOG 
WHERE MABC='100001' 
AND NGUOINHAN LIKE '%DUYÊN%';
```

### 第3步：匹配逻辑
1. **MABC精确匹配**（主键）
2. **姓名模糊匹配**（LIKE '%关键字%'）
3. **过滤无效数据**（DIENTHOAINHAN != '0999999999'）

## 已验证的成功案例

### 案例1：Tám xuyên（10/9订单）
```
脱敏表（E1E2_PH）:
  MABC: 100916
  NGUOINHAN: +++++uyên（脱敏）
  DIENTHOAINHAN: +++++5747（脱敏）

真实表（E1E2_PH_TEMP_DATA2_LOG）:
  MABC: 100916
  NGUOINHAN: Tám Xuyên ✅
  DIENTHOAINHAN: 0368075747 ✅
```
**匹配条件**:
```sql
MABC='100916' AND NGUOINHAN LIKE '%uyên%' AND DIENTHOAINHAN LIKE '%5747'
```

## 批量提取流程

### 方案A：分批MABC查询（推荐）
```python
# 1. 提取所有MABC
mabcs = query("SELECT DISTINCT MABC FROM EMS.E1E2_PH WHERE NGAY='20251009'")

# 2. 逐个MABC查询真实数据
for mabc in mabcs:
    real_data = query(f"""
        SELECT MABC, NGUOINHAN, DIENTHOAINHAN 
        FROM EMS.E1E2_PH_TEMP_DATA2_LOG 
        WHERE MABC='{mabc}' 
        AND DIENTHOAINHAN != '0999999999'
        AND ROWNUM <= 20
    """)
```

### 方案B：按姓名关键字匹配
```sql
-- 提取脱敏表的姓名关键字（去掉+号）
SELECT MABC, 
       REPLACE(REPLACE(NGUOINHAN, '+', ''), ' ', '') AS NAME_KEY
FROM EMS.E1E2_PH 
WHERE NGAY='20251009';

-- 用姓名关键字匹配真实表
SELECT t1.MABC, t1.NGUOINHAN AS MASKED, 
       t2.NGUOINHAN AS REAL, t2.DIENTHOAINHAN AS REAL_PHONE
FROM EMS.E1E2_PH t1
LEFT JOIN EMS.E1E2_PH_TEMP_DATA2_LOG t2 
  ON t1.MABC = t2.MABC
WHERE t1.NGAY='20251009';
```

## 当前限制

### 1. MABC复用问题
- 同一MABC可能对应多个历史订单
- 需要额外条件过滤（姓名、日期）

### 2. 真实数据表的数据同步延迟
- **E1E2_PH_TEMP_DATA2_LOG**: 历史数据，无日期字段有效过滤
- **最新日期未知**（MAX(NGAY)查询超时）
- 只能通过MABC匹配，无法确认是否为当天数据

### 3. 姓名脱敏格式
- E1E2_PH: `+++++uyên`（用+替换前几个字符）
- E1E2_PH_TEMP_DATA2_LOG: `Tám Xuyên`（完整姓名）
- 匹配需要提取**姓名尾部**或**关键字**

## 统计数据

| 表名 | 09号记录数 | 数据状态 | 可用性 |
|------|------------|----------|--------|
| E1E2_PH | 58,984 | 姓名部分可见，电话为空 | ⚠️  |
| SHIPMENT | 2,628 | 全部脱敏（xxxxx尾号） | ❌ |
| E1E2_PH_TEMP_DATA2_LOG | 34.5M（历史） | 真实数据 | ✅ |
| E1E2_PH_TEMP_DATA | 13.7M（历史） | 真实数据 | ✅ |

## 核心SQL示例

### 查询1：提取09号所有MABC
```sql
SELECT LISTAGG(DISTINCT MABC, ',') WITHIN GROUP (ORDER BY MABC)
FROM EMS.E1E2_PH 
WHERE NGAY='20251009' 
AND ROWNUM <= 100;
```

### 查询2：批量匹配真实数据
```sql
SELECT t2.MABC, t2.NGUOINHAN, t2.DIENTHOAINHAN
FROM EMS.E1E2_PH_TEMP_DATA2_LOG t2
WHERE t2.MABC IN ('100001','100005','100916')
  AND t2.DIENTHOAINHAN IS NOT NULL
  AND t2.DIENTHOAINHAN != '0999999999'
  AND LENGTH(t2.DIENTHOAINHAN) >= 9
ORDER BY t2.MABC;
```

### 查询3：按姓名尾缀匹配
```sql
-- 从E1E2_PH提取姓名尾缀
SELECT MABC, SUBSTR(REPLACE(NGUOINHAN, '+', ''), -5) AS NAME_TAIL
FROM EMS.E1E2_PH 
WHERE NGAY='20251009';

-- 在真实表中匹配
SELECT NGUOINHAN, DIENTHOAINHAN
FROM EMS.E1E2_PH_TEMP_DATA2_LOG
WHERE MABC='100916' 
  AND NGUOINHAN LIKE '%uyên';
```

## 结论

✅ **可行方案**:
1. 用MABC作为主键关联两个表
2. 用姓名部分匹配（LIKE）辅助过滤
3. 过滤无效数据（0999999999等）

⚠️  **关键问题**:
1. 真实数据表**没有明确的日期字段**可用于过滤当天数据
2. MABC会**历史复用**，同一运单号可能对应多天的订单
3. 只能通过**姓名相似度**判断是否为同一订单

❌ **无法解决**:
- 100%确认真实表的数据是09号的（因为无日期字段）
- 只能通过MABC+姓名组合"推测"匹配
