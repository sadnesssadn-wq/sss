#!/bin/bash
# 🔥 GHTK应用完整抓包环境配置
# 支持Flutter应用的SSL Pinning绕过

echo "╔══════════════════════════════════════════════════════╗"
echo "║  🔥 GHTK应用完整抓包环境配置 🔥                ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""

# 颜色定义
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

# 检查依赖
echo -e "${YELLOW}[1/6]${NC} 检查依赖..."

command -v adb >/dev/null 2>&1 || {
    echo -e "${RED}[!] ADB未安装${NC}"
    exit 1
}

command -v frida >/dev/null 2>&1 || {
    echo -e "${YELLOW}[!] 正在安装Frida...${NC}"
    pip3 install frida-tools
}

echo -e "${GREEN}[✓]${NC} 依赖检查完成"
echo ""

# 检测设备
echo -e "${YELLOW}[2/6]${NC} 检测Android设备..."
DEVICE=$(adb devices | grep -w "device" | awk '{print $1}' | head -1)

if [ -z "$DEVICE" ]; then
    echo -e "${RED}[!] 未检测到Android设备${NC}"
    echo "请确保:"
    echo "  1. USB调试已启用"
    echo "  2. 设备已通过adb connect连接"
    exit 1
fi

echo -e "${GREEN}[✓]${NC} 设备已连接: $DEVICE"
echo ""

# 检查Frida Server
echo -e "${YELLOW}[3/6]${NC} 检查Frida Server..."

FRIDA_RUNNING=$(adb shell "ps -A | grep frida-server" 2>/dev/null)

if [ -z "$FRIDA_RUNNING" ]; then
    echo -e "${YELLOW}[!] Frida Server未运行，正在启动...${NC}"
    
    # 获取设备架构
    ARCH=$(adb shell getprop ro.product.cpu.abi)
    echo "  设备架构: $ARCH"
    
    # 推送frida-server (假设已下载)
    if [ ! -f "frida-server" ]; then
        echo -e "${RED}[!] frida-server文件不存在${NC}"
        echo "请从 https://github.com/frida/frida/releases 下载"
        exit 1
    fi
    
    adb push frida-server /data/local/tmp/
    adb shell "chmod 755 /data/local/tmp/frida-server"
    adb shell "/data/local/tmp/frida-server &" &
    sleep 2
    
    echo -e "${GREEN}[✓]${NC} Frida Server已启动"
else
    echo -e "${GREEN}[✓]${NC} Frida Server运行中"
fi
echo ""

# 配置BurpSuite代理
echo -e "${YELLOW}[4/6]${NC} 配置系统代理..."

BURP_IP="192.168.1.100"  # 修改为你的BurpSuite主机IP
BURP_PORT="8080"

echo "  BurpSuite代理: $BURP_IP:$BURP_PORT"
echo ""
read -p "是否配置设备代理? (y/n): " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    # WiFi代理设置
    adb shell settings put global http_proxy "$BURP_IP:$BURP_PORT"
    echo -e "${GREEN}[✓]${NC} 代理已配置"
    
    # 安装BurpSuite证书
    echo -e "${YELLOW}[!]${NC} 请手动安装BurpSuite证书:"
    echo "  1. 访问 http://burp 下载证书"
    echo "  2. 设置 -> 安全 -> 从存储设备安装"
else
    echo -e "${YELLOW}[!]${NC} 跳过代理配置"
fi
echo ""

# 安装目标应用
echo -e "${YELLOW}[5/6]${NC} 检查目标应用..."

PACKAGE="com.EComJSC.EComShop"
APP_INSTALLED=$(adb shell pm list packages | grep $PACKAGE)

if [ -z "$APP_INSTALLED" ]; then
    echo -e "${YELLOW}[!] 应用未安装${NC}"
    
    if [ -f "ecomshop.apk" ]; then
        echo "  正在安装..."
        adb install ecomshop.apk
        echo -e "${GREEN}[✓]${NC} 应用已安装"
    else
        echo -e "${RED}[!] APK文件不存在${NC}"
    fi
else
    echo -e "${GREEN}[✓]${NC} 应用已安装"
fi
echo ""

# 启动Frida Hook
echo -e "${YELLOW}[6/6]${NC} 启动SSL Pinning绕过..."

cat > /tmp/ghtk_ssl_bypass.js << 'EOF'
console.log("\n[*] GHTK SSL Pinning绕过启动...\n");

Java.perform(function() {
    // Flutter特定绕过
    try {
        var ssl_verify_result = Module.findExportByName("libflutter.so", "ssl_verify_result");
        if (ssl_verify_result) {
            Interceptor.replace(ssl_verify_result, new NativeCallback(function() {
                return 0;
            }, 'int', []));
            console.log("[✓] Flutter SSL验证已绕过");
        }
    } catch(err) {}
    
    // OkHttp3绕过
    try {
        var CertificatePinner = Java.use("okhttp3.CertificatePinner");
        CertificatePinner.check.overload('java.lang.String', 'java.util.List').implementation = function() {
            console.log("[✓] OkHttp3 Pinning已绕过");
            return;
        };
    } catch(err) {}
    
    console.log("\n[✓] SSL Pinning绕过完成，开始抓包!\n");
});
EOF

echo -e "${GREEN}[✓]${NC} 配置完成"
echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║  🎯 开始抓包                                      ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""
echo "运行以下命令启动Hook:"
echo -e "${GREEN}frida -U -f $PACKAGE -l /tmp/ghtk_ssl_bypass.js --no-pause${NC}"
echo ""
echo "或使用完整脚本:"
echo -e "${GREEN}frida -U -f $PACKAGE -l universal_ssl_bypass.js --no-pause${NC}"
echo ""
echo "配置BurpSuite:"
echo "  1. Proxy -> Options -> Add"
echo "  2. 绑定地址: All interfaces"
echo "  3. 端口: 8080"
echo "  4. Intercept -> Intercept is on"
echo ""
echo -e "${YELLOW}现在启动应用，所有流量将被捕获！${NC}"
