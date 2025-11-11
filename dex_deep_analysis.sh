#!/bin/bash
# DEX深度分析 - 查找API签名和公开调用方式

DEX_DIR="/workspace/viettelpost_extracted/main_apk"

echo "[💥] DEX深度分析 - 查找签名和公开端点"
echo ""

# 1. 查找配置类
echo "[+] 查找Config/Constants类..."
cd "$DEX_DIR" && strings classes*.dex | grep -E "Config|Constants|Settings" | grep -v "configuration" | head -30

echo ""
echo "[+] 查找BaseURL/ApiUrl相关..."
cd "$DEX_DIR" && strings classes*.dex | grep -iE "baseurl|api_url|endpoint|host" | head -30

echo ""
echo "[+] 查找签名相关方法名..."
cd "$DEX_DIR" && strings classes*.dex | grep -E "signature|sign|encrypt|hash|hmac" | grep -v "Signature" | head -30

echo ""
echo "[+] 查找Header相关..."
cd "$DEX_DIR" && strings classes*.dex | grep -E "X-|x-api-key|Authorization|Bearer" | head -30

echo ""
echo "[+] 查找公开端点..."
cd "$DEX_DIR" && strings classes*.dex | grep -iE "public|guest|open|external" | grep -i "api\|endpoint\|url" | head -30

echo ""
echo "[+] 查找tracking/order类..."
cd "$DEX_DIR" && strings classes*.dex | grep -E "TrackingService|OrderService|ApiService" | head -20

echo ""
echo "[+] 查找retrofit/okhttp配置..."
cd "$DEX_DIR" && strings classes*.dex | grep -iE "retrofit|okhttp|interceptor" | head -20
