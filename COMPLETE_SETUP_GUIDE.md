# EMS Portal - 完整安装测试指南

## 🎯 从零开始到完成测试的完整流程

---

## 📱 第一步: 获取EMS Portal App

### 方法1: 使用已下载的APK (最快) ⭐

APK文件位置:
```
远程服务器: root@82.29.71.156:/root/ems_portal.apk
本地工作目录: /workspace/ems_portal.apk (如果已复制)
```

**下载到本地:**
```bash
# 从远程服务器下载
sshpass -p '@admin1314@' scp -P 2233 root@82.29.71.156:~/ems_portal.apk ./

# 检查文件
ls -lh ems_portal.apk
file ems_portal.apk
```

### 方法2: 从APK下载网站

**推荐网站:**

1. **APKPure** (推荐)
   ```
   https://apkpure.com/ems-portal/com.emsportal
   
   步骤:
     1. 访问网站
     2. 搜索 "EMS Portal"
     3. 点击 "Download APK"
     4. 等待下载完成
   ```

2. **APKCombo**
   ```
   https://apkcombo.com/ems-portal/com.emsportal/
   
   • 可以选择特定版本
   • 支持直接下载
   ```

3. **APKMirror**
   ```
   https://www.apkmirror.com/
   
   • 搜索 "EMS Portal Vietnam"
   • 下载最新版本
   ```

### 方法3: Google Play Store

```
链接: https://play.google.com/store/apps/details?id=com.emsportal

注意: 
  • 可能需要越南的Google账号
  • 或使用VPN切换到越南地区
```

---

## 📲 第二步: 安装App

### 选项A: 安装到真实Android手机

#### 1. 通过ADB安装 (推荐)

```bash
# 1. 检查手机连接
adb devices
# 应该显示: List of devices attached
#           XXXXXXXX    device

# 2. 安装APK
adb install ems_portal.apk

# 如果提示已安装，覆盖安装:
adb install -r ems_portal.apk

# 3. 验证安装
adb shell pm list packages | grep emsportal
# 应该显示: package:com.emsportal

# 4. 启动App
adb shell am start -n com.emsportal/.user.activity.LogInActivity
```

**如果没有ADB:**
```bash
# Linux/Ubuntu
sudo apt install adb

# macOS
brew install android-platform-tools

# Windows
# 下载 Android SDK Platform Tools
# https://developer.android.com/studio/releases/platform-tools
```

#### 2. 直接在手机安装

```bash
# 1. 传输APK到手机
adb push ems_portal.apk /sdcard/Download/

# 或通过其他方式:
#   - USB文件传输
#   - 蓝牙
#   - 微信/QQ发送文件
#   - 云盘下载

# 2. 在手机上:
#    文件管理器 → Download → ems_portal.apk → 安装

# 3. 如果提示"禁止安装未知应用":
#    设置 → 安全 → 允许安装未知来源应用
```

### 选项B: 安装到Android模拟器

#### 推荐: Genymotion

```bash
# 1. 下载Genymotion
https://www.genymotion.com/download/

# 2. 安装并注册账号

# 3. 创建虚拟设备
#    - 选择 Google Pixel 或类似设备
#    - Android版本: 8.0+

# 4. 启动虚拟设备

# 5. 安装APK (直接拖拽)
#    把ems_portal.apk拖到模拟器窗口

# 或使用ADB
adb install ems_portal.apk
```

#### 备选: Android Studio AVD

```bash
# 1. 安装Android Studio
https://developer.android.com/studio

# 2. 打开AVD Manager
#    Tools → AVD Manager

# 3. Create Virtual Device
#    - Phone: Pixel 4
#    - System Image: Android 10 (Q)
#    - 完成配置

# 4. 启动AVD

# 5. 安装APK
adb install ems_portal.apk
```

---

## 🔧 第三步: 配置MITM代理

### 1. 安装mitmproxy

```bash
# 安装
pip3 install mitmproxy

# 验证
mitmproxy --version
```

### 2. 启动mitmproxy

```bash
# 启动web界面 (推荐)
mitmweb -p 8080

# 浏览器会自动打开: http://127.0.0.1:8081

# 或使用命令行界面
mitmproxy -p 8080
```

### 3. 获取电脑IP地址

```bash
# Linux/macOS
ifconfig | grep "inet " | grep -v 127.0.0.1

# 或
ip addr show | grep "inet "

# 示例输出:
#   inet 192.168.1.100/24 brd 192.168.1.255 scope global
#        ^^^^^^^^^^^ 这就是你的IP
```

### 4. 手机配置代理

```
1. 打开WiFi设置
2. 长按当前连接的WiFi
3. 修改网络 / 修改
4. 高级选项 (Advanced options)
5. 代理 (Proxy): 手动 (Manual)
6. 代理主机名 (Proxy hostname): 你的电脑IP (例如 192.168.1.100)
7. 代理端口 (Proxy port): 8080
8. 保存
```

### 5. 安装mitmproxy证书

```
1. 在手机浏览器打开: http://mitm.it

2. 点击 "Android"

3. 下载证书 (mitm-proxy-ca-cert.pem)

4. 安装证书:
   设置 → 安全 → 加密与凭据 → 安装证书
   → 选择 CA证书
   → 选择下载的证书
   → 输入锁屏密码
   → 完成
```

---

## 📝 第四步: 注册账号

### 准备越南手机号

#### 选项1: 付费接码平台 (推荐)

```
网站: https://sms-activate.org/

步骤:
  1. 注册账号
  2. 充值 (~$1)
  3. 搜索 "Vietnam"
  4. 购买号码
  5. 记录号码

费用: $0.5-1 美元
时效: 20分钟
```

#### 选项2: 免费接码平台

```
网站:
  • https://www.receive-sms-online.info/
  • https://sms24.me/en/countries/vietnam/

注意:
  • 号码可能已被使用
  • 多试几个号码
```

### 在App中注册

```
1. 打开EMS Portal App

2. 点击 "注册" / "Đăng ký"

3. 填写信息:
   • 手机号: 0901234567 (接码平台的号码)
   • 姓名: Test User
   • 密码: Test123456
   • 确认密码: Test123456

4. 点击 "发送验证码"

5. 在接码平台查看验证码

6. 输入验证码

7. 点击 "注册"

8. 注册成功，自动登录
```

---

## 🔑 第五步: 获取Token

### 从mitmweb获取

```
1. 打开mitmweb界面: http://127.0.0.1:8081

2. 在搜索框输入: Authorization

3. 找到登录请求 (通常是 POST /api/v1/auth/login)

4. 查看请求详情

5. 找到响应中的Token:
   {
     "code": "success",
     "data": {
       "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."
               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
     }
   }

6. 复制Token

7. 保存到文件:
   echo "eyJhbGc..." > token.txt
```

### 或从请求Header获取

```
在mitmweb中查看后续API请求:

Headers:
  Authorization: Bearer eyJhbGc...
                        ^^^^^^^^ 复制这部分
```

---

## ✅ 第六步: 测试后端验证

### 1. 先测试Token有效性

```bash
# 设置环境变量
export TOKEN="你的Token"

# 测试Token
curl "http://ws.ems.com.vn/api/v1/orders/list" \
  -H "Authorization: Bearer $TOKEN"

# 如果返回订单列表 → Token有效
```

### 2. 测试默认账号 (可选)

```bash
# 尝试找测试账号
python3 test_default_accounts.py

# 如果找到 → 会自动保存Token
```

### 3. 运行后端验证测试

```bash
# 准备两个Token (两个不同账号)
TOKEN_A="账号A的Token"
TOKEN_B="账号B的Token"

# 运行测试
python3 backend_validation_test.py "$TOKEN_A" "$TOKEN_B"

# 工具会自动:
#   1. 验证Token有效性
#   2. 获取账号B的订单
#   3. 用账号A的Token尝试访问
#   4. 判断是否存在IDOR
```

### 4. 如果只有一个Token

```bash
# 快速测试
python3 unauthorized_access_test.py --token "$TOKEN"

# 或批量扫描
python3 mass_idor_extractor.py --token "$TOKEN" --mode smart
```

---

## 📊 完整时间线

| 步骤 | 时间 | 说明 |
|------|------|------|
| 下载APK | 2分钟 | 从远程服务器或网站 |
| 安装App | 1分钟 | ADB安装 |
| 配置MITM | 5分钟 | 安装工具+配置 |
| 注册账号 | 5分钟 | 接码平台+注册 |
| 获取Token | 2分钟 | 从mitmweb复制 |
| 测试验证 | 1分钟 | 运行测试脚本 |
| **总计** | **15-20分钟** | |

---

## 🎬 快速命令清单

```bash
# 1. 下载APK
sshpass -p '@admin1314@' scp -P 2233 root@82.29.71.156:~/ems_portal.apk ./

# 2. 安装
adb install ems_portal.apk

# 3. 启动MITM
mitmweb -p 8080

# 4. 查看电脑IP
ifconfig | grep "inet " | grep -v 127.0.0.1

# 5. 手机设置代理 (手动操作)
#    WiFi → 代理 → 你的IP:8080

# 6. 安装证书 (手动操作)
#    浏览器打开 http://mitm.it

# 7. 注册并登录 (手动操作)
#    在App中注册

# 8. 获取Token (手动操作)
#    在mitmweb中搜索 Authorization

# 9. 测试
export TOKEN="你的Token"
python3 backend_validation_test.py $TOKEN $TOKEN
```

---

## 🔥 如果遇到问题

### APK安装失败

```bash
# 卸载旧版本
adb uninstall com.emsportal

# 重新安装
adb install ems_portal.apk
```

### MITM证书问题

```bash
# Android 7+需要额外配置
# 如果证书不工作，使用Android 6的模拟器
```

### Token获取不到

```bash
# 使用Frida直接提取
python3 extract_token_frida.py
```

### 注册失败

```bash
# 换一个接码号码
# 或使用测试账号
python3 test_default_accounts.py
```

---

## 📚 相关文档

| 文档 | 说明 |
|------|------|
| `DOWNLOAD_APP.txt` | App下载详细指南 |
| `HOW_TO_REGISTER.txt` | 注册快速指南 |
| `QUICK_TOKEN_GUIDE.txt` | Token获取指南 |
| `AUDIT_SUMMARY.txt` | 审计总结 |
| `backend_validation_test.py` | 后端验证测试工具 |

---

## 🎯 完成检查清单

- [ ] APK已下载
- [ ] App已安装到手机/模拟器
- [ ] mitmproxy已安装
- [ ] mitmweb已启动
- [ ] 手机代理已配置
- [ ] mitmproxy证书已安装
- [ ] 接码号码已获取
- [ ] 账号已注册
- [ ] Token已获取
- [ ] Token已测试有效
- [ ] 后端验证测试已运行

---

生成日期: 2025-11-01
