#!/bin/bash
# DEX提取硬编码账号和Token

DEX_DIR="/workspace/viettelpost_extracted/main_apk"

echo "[🔥] 方案5：DEX中提取硬编码凭证"
echo ""

# 1. 查找硬编码的用户名/密码
echo "[+] 查找硬编码账号..."
cd "$DEX_DIR" && strings classes*.dex | grep -iE "username.*[:=]|password.*[:=]" | grep -v "Username\|Password" | head -30

echo ""
echo "[+] 查找测试账号..."
cd "$DEX_DIR" && strings classes*.dex | grep -iE "test.*@|admin.*@|demo.*@" | head -20

echo ""
echo "[+] 查找硬编码Token..."
cd "$DEX_DIR" && strings classes*.dex | grep -E "^eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+\.[A-Za-z0-9_-]*$" | head -10

echo ""
echo "[+] 查找Bearer Token..."
cd "$DEX_DIR" && strings classes*.dex | grep -i "Bearer.*eyJ" | head -10

echo ""
echo "[+] 查找API Key..."
cd "$DEX_DIR" && strings classes*.dex | grep -iE "api.?key|apikey|x-api-key" | grep "[:=]" | head -20

echo ""
echo "[+] 查找设备ID/客户端ID..."
cd "$DEX_DIR" && strings classes*.dex | grep -iE "client.?id|device.?id|app.?id" | grep "[:=]" | head -20

echo ""
echo "[+] 查找默认凭证常量..."
cd "$DEX_DIR" && strings classes*.dex | grep -E "DEFAULT_USER|DEFAULT_PASSWORD|TEST_USER|TEST_PASSWORD" | head -20
