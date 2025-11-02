# EMS Portal - 注册完整指南

## 🎯 注册方式

### 方式1: 在App中直接注册 (推荐)
### 方式2: 通过API注册 (如果App不支持)
### 方式3: 使用测试账号 (无需注册)

---

## ⭐ 方式1: App内注册 (最简单)

### 步骤1: 下载安装App

```bash
# 如果还没有安装，从之前下载的APK安装
adb install ems_portal.apk

# 或在手机上直接下载
# Google Play Store 搜索 "EMS Portal Vietnam"
```

### 步骤2: 打开App并开始注册

```
1. 打开 EMS Portal App
2. 在登录页面找到 "注册" 按钮
   - 中文: "注册" 
   - 越南语: "Đăng ký"
   - 英文: "Sign Up" / "Register"
3. 点击进入注册页面
```

### 步骤3: 填写注册信息

**需要的信息:**

```
1. 手机号码 (Phone)
   格式: 0901234567 (越南手机号)
   
   越南手机号格式:
     • 09 开头: 09XXXXXXXX (10位)
     • 08 开头: 08XXXXXXXX (10位)
     • 07 开头: 07XXXXXXXX (10位)
   
   ⚠️ 必须是真实号码，需要接收验证码

2. 姓名 (Full Name)
   例如: Nguyen Van A
        Test User
        任意姓名

3. 密码 (Password)
   要求: 
     • 至少6-8位
     • 可能需要包含数字+字母
   
   推荐: Test123456

4. 确认密码 (Confirm Password)
   重复输入密码

5. 验证码 (OTP/SMS Code)
   • 点击 "发送验证码"
   • 接收短信
   • 输入6位数字验证码
```

### 步骤4: 提交注册

```
1. 填写完所有信息
2. 勾选同意条款 (如果有)
3. 点击 "注册" / "Đăng ký" / "Register"
4. 等待验证
5. 注册成功 → 自动登录
```

### 步骤5: 配合MITM获取Token

**如果你已经设置了MITM:**

```
注册成功并登录后:
  → mitmweb会自动捕获登录请求
  → 搜索 "Authorization"
  → 复制Token
```

---

## 📱 如果没有越南手机号

### 解决方案A: 使用接码平台 (推荐)

#### 1. 免费接码平台

```
网站:
  • https://www.receive-sms-online.info/
  • https://sms24.me/en/countries/vietnam/
  • https://receive-smss.com/

使用方法:
  1. 打开网站
  2. 搜索 "Vietnam" 或 "越南"
  3. 选择一个可用号码
  4. 在App注册时使用这个号码
  5. 返回网站查看验证码
  6. 输入验证码完成注册

注意:
  • 免费号码可能被很多人使用过
  • 如果注册失败，换一个号码试试
  • 有些号码可能已经注册过EMS Portal
```

#### 2. 付费接码平台 (更可靠)

```
推荐平台: https://sms-activate.org/

价格: 约0.5-1美元/次

步骤:
  1. 注册账号
  2. 充值 (支持支付宝、微信、加密货币)
  3. 搜索 "Vietnam"
  4. 选择 "EMS" 或 "其他" 服务
  5. 购买号码
  6. 获得临时越南号码
  7. 在App中注册
  8. 在平台上接收验证码
  9. 完成注册
```

### 解决方案B: 使用Android模拟器

```
如果接码平台都不行:

1. 安装Android模拟器:
   • Genymotion (推荐)
   • BlueStacks
   • Android Studio AVD

2. 在模拟器中安装EMS Portal

3. 使用接码平台号码注册

4. 使用Frida提取Token (无需MITM)
   python3 extract_token_frida.py
```

---

## 🔧 方式2: 通过API直接注册

**如果App注册有问题，可以尝试直接调用API**

### 查找注册API

根据代码分析，可能的注册端点:

```
POST http://ws.ems.com.vn/api/v1/auth/register
POST http://ws.ems.com.vn/api/v1/user/register
```

### 注册请求示例

```bash
# 步骤1: 发送注册请求
curl -X POST "http://ws.ems.com.vn/api/v1/auth/register" \
  -H "Content-Type: application/json" \
  -d '{
    "phone": "0901234567",
    "password": "Test123456",
    "fullname": "Test User",
    "device_id": "test_device_123"
  }'

# 步骤2: 发送验证码
# (注册后可能需要验证)
curl -X POST "http://ws.ems.com.vn/api/v1/auth/verify-otp" \
  -H "Content-Type: application/json" \
  -d '{
    "phone": "0901234567",
    "otp": "123456"
  }'

# 步骤3: 登录获取Token
curl -X POST "http://ws.ems.com.vn/api/v1/auth/login" \
  -H "Content-Type: application/json" \
  -d '{
    "phone": "0901234567",
    "password": "Test123456"
  }'
```

### Python自动注册脚本

```python
#!/usr/bin/env python3
"""
EMS Portal 自动注册
"""

import requests
import json
import time

base = "http://ws.ems.com.vn"

def register_account(phone, password, fullname):
    """注册账号"""
    
    print(f"\n[1] 注册账号: {phone}")
    
    # 尝试注册
    r = requests.post(
        f"{base}/api/v1/auth/register",
        json={
            "phone": phone,
            "password": password,
            "fullname": fullname,
            "device_id": "auto_register_001"
        },
        timeout=10
    )
    
    print(f"    状态: {r.status_code}")
    
    if r.status_code == 200:
        data = r.json()
        print(f"    响应: {data}")
        
        if data.get('code') == 'success':
            print(f"    ✓ 注册成功!")
            
            # 检查是否需要验证
            if 'otp_required' in data:
                print(f"\n[2] 需要输入验证码")
                otp = input("    请输入收到的验证码: ")
                
                # 验证OTP
                r2 = requests.post(
                    f"{base}/api/v1/auth/verify-otp",
                    json={"phone": phone, "otp": otp}
                )
                
                if r2.json().get('code') == 'success':
                    print(f"    ✓ 验证成功!")
                else:
                    print(f"    ✗ 验证失败: {r2.json()}")
                    return None
            
            # 登录获取Token
            print(f"\n[3] 登录获取Token...")
            
            r3 = requests.post(
                f"{base}/api/v1/auth/login",
                json={"phone": phone, "password": password}
            )
            
            if r3.status_code == 200:
                login_data = r3.json()
                
                if login_data.get('code') == 'success':
                    token = login_data['data']['token']
                    
                    print(f"    ✓ 登录成功!")
                    print(f"\n{'='*60}")
                    print(f"Token: {token}")
                    print(f"{'='*60}\n")
                    
                    # 保存Token
                    with open(f'token_{phone}.txt', 'w') as f:
                        f.write(token)
                    
                    print(f"Token已保存: token_{phone}.txt")
                    
                    return token
        
        else:
            print(f"    ✗ 注册失败: {data.get('message')}")
    
    return None

# 使用示例
if __name__ == '__main__':
    print("EMS Portal 自动注册")
    print("="*60)
    
    phone = input("手机号 (例如 0901234567): ")
    password = input("密码 (例如 Test123456): ")
    fullname = input("姓名 (例如 Test User): ")
    
    token = register_account(phone, password, fullname)
    
    if token:
        print("\n[完成] 注册并获取Token成功!")
        print(f"\n下一步:")
        print(f"  export TOKEN=\"{token[:50]}...\"")
        print(f"  python3 backend_validation_test.py $TOKEN $TOKEN")
```

---

## 🎮 方式3: 使用测试账号 (无需注册)

**运行测试账号脚本:**

```bash
python3 test_default_accounts.py

# 自动尝试:
#   0901234567 / 123456
#   test / test123
#   demo / demo123
#   ...
```

如果找到有效账号 → 直接使用，无需注册！

---

## 📋 注册常见问题

### Q1: 没有收到验证码？

**解决方法:**

```
1. 检查手机号格式是否正确
   越南号码: 09/08/07 开头，10位数字

2. 等待1-2分钟

3. 点击 "重新发送"

4. 检查短信是否被拦截

5. 尝试换一个手机号
```

### Q2: 提示 "手机号已注册"

**解决方法:**

```
1. 这个号码已经被注册过了

2. 换一个手机号

3. 或者尝试直接登录
   (可能是接码平台的号码被别人用过了)

4. 如果是自己的号码，点击 "忘记密码" 重置
```

### Q3: 注册按钮是灰色的/无法点击

**可能原因:**

```
1. 信息未填写完整
   → 检查所有必填项

2. 密码格式不符合要求
   → 尝试: Test123456

3. 未勾选同意条款
   → 勾选复选框

4. 验证码未输入
   → 先发送并输入验证码
```

### Q4: API注册失败

**可能原因:**

```
1. API端点可能不是 /auth/register
   → 尝试不同端点

2. 参数格式不对
   → 检查JSON格式

3. 可能需要先请求OTP
   → 先调用发送验证码接口

4. 建议直接在App中注册
```

---

## 🚀 完整注册流程 (推荐)

### 准备工作 (5分钟)

```bash
# 1. 安装mitmproxy
pip3 install mitmproxy

# 2. 启动代理
mitmweb -p 8080

# 3. 查看电脑IP
ifconfig | grep "inet " | grep -v 127.0.0.1
# 记下IP，例如: 192.168.1.100
```

### 手机设置 (2分钟)

```
1. 打开WiFi设置
2. 长按当前连接的WiFi → 修改网络
3. 高级选项 → 代理:手动
   主机: 192.168.1.100 (你的电脑IP)
   端口: 8080
4. 保存

5. 浏览器打开 http://mitm.it
6. 下载并安装证书
```

### 注册 (5分钟)

```
1. 准备越南手机号
   • 自己的越南号码
   • 或接码平台: https://sms-activate.org/

2. 打开EMS Portal App

3. 点击 "注册" / "Đăng ký"

4. 填写信息:
   手机号: 0901234567
   姓名: Test User
   密码: Test123456
   确认密码: Test123456

5. 点击 "发送验证码"

6. 输入收到的验证码

7. 点击 "注册"

8. 注册成功 → 自动登录
```

### 获取Token (1分钟)

```
1. 在mitmweb界面 (http://127.0.0.1:8081)

2. 搜索框输入: Authorization

3. 找到登录请求

4. 复制Token:
   Authorization: Bearer eyJhbGc...
                         ^^^^^^^

5. 保存:
   echo "eyJhbGc..." > token.txt
```

---

## 🎯 快速注册清单

- [ ] 安装mitmproxy: `pip3 install mitmproxy`
- [ ] 启动代理: `mitmweb -p 8080`
- [ ] 查看电脑IP: `ifconfig | grep inet`
- [ ] 手机设置WiFi代理
- [ ] 安装mitmproxy证书: http://mitm.it
- [ ] 准备越南手机号 (接码平台)
- [ ] 打开EMS Portal App
- [ ] 点击注册
- [ ] 填写信息 (手机号、姓名、密码)
- [ ] 接收并输入验证码
- [ ] 完成注册
- [ ] 在mitmweb中搜索 "Authorization"
- [ ] 复制并保存Token
- [ ] 测试: `python3 backend_validation_test.py $TOKEN $TOKEN`

---

## 💡 如果实在无法注册

### 备选方案:

```bash
# 1. 先试试测试账号
python3 test_default_accounts.py

# 2. 使用模拟器 + 接码平台
#    下载Genymotion
#    安装EMS Portal
#    使用接码平台号码注册

# 3. 请朋友帮忙
#    如果有越南的朋友，请他们帮忙注册一个测试账号
```

---

## 📞 接码平台推荐

### 免费平台:

1. **receive-sms-online.info**
   - 完全免费
   - 号码有限
   - 可能被多人使用

2. **sms24.me**
   - 免费
   - 越南号码较多

### 付费平台 (推荐):

1. **sms-activate.org** ⭐
   - 价格: ~$0.5-1
   - 可靠性高
   - 支持支付宝
   - 号码是你专用的

2. **5sim.net**
   - 价格类似
   - 界面友好

---

## 🎬 视频教程参考

如果文字不够清楚，可以搜索:
- "Android MITM proxy setup"
- "mitmproxy Android certificate"
- "How to register Vietnamese phone app"

---

生成日期: 2025-11-01
