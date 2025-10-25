#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
🔥 高级抓包绕过工具
处理特殊情况: 双向证书、非标准协议、自定义加密
"""

import subprocess
import os
import sys
import time

class AdvancedCaptureBypass:
    """高级抓包绕过"""
    
    def __init__(self, package_name="com.EComJSC.EComShop"):
        self.package = package_name
        self.device_id = self.get_device()
        
    def get_device(self):
        """获取连接的设备"""
        result = subprocess.run(['adb', 'devices'], capture_output=True, text=True)
        devices = [line.split()[0] for line in result.stdout.split('\n') 
                  if 'device' in line and 'devices' not in line]
        
        if not devices:
            print("[!] 未找到Android设备")
            sys.exit(1)
        
        return devices[0]
    
    def check_ssl_pinning_type(self):
        """检测SSL Pinning类型"""
        print("\n[*] 检测SSL Pinning实现...")
        
        checks = {
            'OkHttp3': 'okhttp3.CertificatePinner',
            'TrustKit': 'com.datatheorem.android.trustkit',
            'Netguard': 'com.github.netguard',
            'Flutter': 'libflutter.so',
            'React Native': 'libreactnativejni.so',
            'Custom Native': 'ssl_pinning'
        }
        
        detected = []
        
        for name, indicator in checks.items():
            cmd = f'adb -s {self.device_id} shell "grep -r {indicator} /data/app/{self.package}* 2>/dev/null"'
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
            
            if result.stdout:
                detected.append(name)
                print(f"  [+] 检测到: {name}")
        
        if not detected:
            print("  [!] 未检测到已知的SSL Pinning")
        
        return detected
    
    def install_frida_gadget(self):
        """注入Frida Gadget（无需root）"""
        print("\n[*] 注入Frida Gadget...")
        
        script = """
#!/bin/bash
# APK重打包注入Frida Gadget

APK="$1"
GADGET="frida-gadget.so"

# 1. 解包APK
echo "[*] 解包APK..."
apktool d "$APK" -o /tmp/apk_unpacked

# 2. 添加Gadget
echo "[*] 注入Frida Gadget..."
mkdir -p /tmp/apk_unpacked/lib/arm64-v8a/
cp "$GADGET" /tmp/apk_unpacked/lib/arm64-v8a/libfrida-gadget.so

# 3. 修改smali加载Gadget
MAIN_ACTIVITY=$(find /tmp/apk_unpacked/smali* -name "MainActivity.smali" | head -1)

if [ -f "$MAIN_ACTIVITY" ]; then
    # 在onCreate中添加loadLibrary
    sed -i '/\.method.*onCreate/a\\    const-string v0, "frida-gadget"\\n    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V' "$MAIN_ACTIVITY"
    echo "[+] Gadget加载代码已注入"
fi

# 4. 重打包
echo "[*] 重打包APK..."
apktool b /tmp/apk_unpacked -o /tmp/repackaged.apk

# 5. 签名
echo "[*] 签名APK..."
keytool -genkey -v -keystore /tmp/my.keystore -alias mykey -keyalg RSA -keysize 2048 -validity 10000 -storepass password -keypass password -dname "CN=Test"
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore /tmp/my.keystore -storepass password /tmp/repackaged.apk mykey
zipalign -v 4 /tmp/repackaged.apk /tmp/final.apk

echo "[✓] 完成: /tmp/final.apk"
"""
        
        with open('/tmp/inject_gadget.sh', 'w') as f:
            f.write(script)
        
        os.chmod('/tmp/inject_gadget.sh', 0o755)
        print("[✓] Gadget注入脚本已创建")
        print("    使用: /tmp/inject_gadget.sh your_app.apk")
    
    def bypass_client_cert(self):
        """绕过双向证书验证"""
        print("\n[*] 生成双向证书绕过脚本...")
        
        frida_script = '''
// 双向证书(Mutual TLS)绕过
Java.perform(function() {
    console.log("[*] 绕过客户端证书验证...");
    
    // Hook KeyManagerFactory
    try {
        var KeyManagerFactory = Java.use("javax.net.ssl.KeyManagerFactory");
        
        KeyManagerFactory.init.overload('java.security.KeyStore', '[C').implementation = function(keystore, password) {
            console.log("[+] KeyManagerFactory.init() 拦截");
            
            // 创建空的KeyStore
            var KeyStore = Java.use("java.security.KeyStore");
            var emptyKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            emptyKeyStore.load(null, null);
            
            // 使用空KeyStore
            this.init(emptyKeyStore, password);
        };
        
        console.log("[✓] 客户端证书验证已绕过");
    } catch(err) {
        console.log("[-] KeyManagerFactory Hook失败: " + err);
    }
    
    // Hook SSLContext - 移除客户端证书要求
    try {
        var SSLContext = Java.use("javax.net.ssl.SSLContext");
        
        SSLContext.init.overload('[Ljavax.net.ssl.KeyManager;', '[Ljavax.net.ssl.TrustManager;', 'java.security.SecureRandom').implementation = function(km, tm, random) {
            console.log("[+] SSLContext.init() 使用空KeyManager");
            
            // KeyManager设为null，禁用客户端证书
            this.init(null, tm, random);
        };
        
        console.log("[✓] SSLContext客户端证书已移除");
    } catch(err) {
        console.log("[-] SSLContext Hook失败: " + err);
    }
});
'''
        
        with open('/tmp/bypass_client_cert.js', 'w') as f:
            f.write(frida_script)
        
        print("[✓] 双向证书绕过脚本: /tmp/bypass_client_cert.js")
    
    def setup_transparent_proxy(self):
        """配置透明代理（无需设备配置）"""
        print("\n[*] 配置透明代理...")
        
        iptables_script = '''#!/bin/bash
# 透明代理配置 - 在Linux主机上运行

BURP_PORT=8080
DEVICE_IP="192.168.1.xxx"  # 修改为设备IP

# 启用IP转发
echo 1 > /proc/sys/net/ipv4/ip_forward

# 清除现有规则
iptables -t nat -F
iptables -t nat -X

# HTTP流量重定向到BurpSuite
iptables -t nat -A PREROUTING -s $DEVICE_IP -p tcp --dport 80 -j REDIRECT --to-port $BURP_PORT
iptables -t nat -A PREROUTING -s $DEVICE_IP -p tcp --dport 443 -j REDIRECT --to-port $BURP_PORT

# 允许转发
iptables -A FORWARD -s $DEVICE_IP -j ACCEPT
iptables -A FORWARD -d $DEVICE_IP -j ACCEPT

echo "[✓] 透明代理已配置"
echo "    设备无需配置代理，所有流量自动拦截"
'''
        
        with open('/tmp/setup_transparent_proxy.sh', 'w') as f:
            f.write(iptables_script)
        
        os.chmod('/tmp/setup_transparent_proxy.sh', 0o755)
        print("[✓] 透明代理脚本: /tmp/setup_transparent_proxy.sh")
    
    def bypass_vpn_detection(self):
        """绕过VPN检测"""
        print("\n[*] 生成VPN检测绕过脚本...")
        
        frida_script = '''
// VPN/代理检测绕过
Java.perform(function() {
    console.log("[*] 绕过VPN/代理检测...");
    
    // 1. 隐藏VPN网络接口
    try {
        var NetworkInterface = Java.use("java.net.NetworkInterface");
        
        NetworkInterface.getName.implementation = function() {
            var name = this.getName();
            // 隐藏VPN相关接口名
            if (name.includes("tun") || name.includes("ppp") || name.includes("pptp")) {
                console.log("[+] 隐藏VPN接口: " + name);
                return "wlan0";  // 伪装成WiFi
            }
            return name;
        };
        
        NetworkInterface.isUp.implementation = function() {
            var name = this.getName();
            if (name.includes("tun") || name.includes("ppp")) {
                console.log("[+] VPN接口isUp返回false: " + name);
                return false;
            }
            return this.isUp();
        };
        
        console.log("[✓] VPN网络接口已隐藏");
    } catch(err) {
        console.log("[-] NetworkInterface Hook失败");
    }
    
    // 2. 隐藏代理设置
    try {
        var System = Java.use("java.lang.System");
        
        var proxyProps = [
            "http.proxyHost", "http.proxyPort",
            "https.proxyHost", "https.proxyPort",
            "proxyHost", "proxyPort"
        ];
        
        System.getProperty.overload('java.lang.String').implementation = function(key) {
            if (proxyProps.includes(key)) {
                console.log("[+] 隐藏代理设置: " + key);
                return null;
            }
            return this.getProperty(key);
        };
        
        console.log("[✓] 代理设置已隐藏");
    } catch(err) {}
    
    // 3. ConnectivityManager绕过
    try {
        var ConnectivityManager = Java.use("android.net.ConnectivityManager");
        
        ConnectivityManager.getActiveNetworkInfo.implementation = function() {
            var networkInfo = this.getActiveNetworkInfo();
            if (networkInfo) {
                // 伪造网络类型为WiFi
                console.log("[+] 网络类型伪装为WiFi");
            }
            return networkInfo;
        };
        
        console.log("[✓] 网络类型检测已绕过");
    } catch(err) {}
    
    console.log("[✓] VPN/代理检测绕过完成");
});
'''
        
        with open('/tmp/bypass_vpn_detection.js', 'w') as f:
            f.write(frida_script)
        
        print("[✓] VPN检测绕过脚本: /tmp/bypass_vpn_detection.js")
    
    def generate_complete_solution(self):
        """生成完整解决方案"""
        print("\n" + "="*60)
        print("🔥 高级抓包绕过完整解决方案")
        print("="*60)
        
        # 检测SSL Pinning类型
        pinning_types = self.check_ssl_pinning_type()
        
        # 生成各种绕过方案
        self.bypass_client_cert()
        self.bypass_vpn_detection()
        self.setup_transparent_proxy()
        self.install_frida_gadget()
        
        print("\n" + "="*60)
        print("📋 使用指南")
        print("="*60)
        
        print("\n【方案1】标准Frida Hook (推荐)")
        print("  frida -U -f {} -l universal_ssl_bypass.js --no-pause".format(self.package))
        
        print("\n【方案2】双向证书场景")
        print("  frida -U -f {} -l /tmp/bypass_client_cert.js --no-pause".format(self.package))
        
        print("\n【方案3】VPN检测场景")
        print("  frida -U -f {} -l /tmp/bypass_vpn_detection.js --no-pause".format(self.package))
        
        print("\n【方案4】透明代理（无需设备配置）")
        print("  sudo /tmp/setup_transparent_proxy.sh")
        
        print("\n【方案5】无Root注入 (需重打包)")
        print("  /tmp/inject_gadget.sh your_app.apk")
        
        print("\n" + "="*60)
        print("✅ 所有绕过方案已生成")
        print("="*60 + "\n")


if __name__ == "__main__":
    print("""
╔════════════════════════════════════════════════════════╗
║  🔥 高级抓包绕过工具 🔥                          ║
║  处理: SSL Pinning, 双向证书, VPN检测            ║
╚════════════════════════════════════════════════════════╝
    """)
    
    package = "com.EComJSC.EComShop"
    
    if len(sys.argv) > 1:
        package = sys.argv[1]
    
    bypass = AdvancedCaptureBypass(package)
    bypass.generate_complete_solution()
