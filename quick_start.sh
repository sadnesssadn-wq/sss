#!/bin/bash
# 快速开始：WAF绕过 + 代理池

TARGET=$1

if [ -z "$TARGET" ]; then
    echo "用法: $0 <target_url>"
    echo "示例: $0 https://target.com"
    exit 1
fi

echo "[+] 初始化代理池..."
source /workspace/proxy_manager.sh

# 1. 测试代理
echo "[+] 测试代理可用性..."
cat /workspace/proxy_pool.txt | while read proxy; do
    test_proxy "$proxy" &
    [ $(jobs -r | wc -l) -ge 20 ] && wait -n
done
wait

WORKING=$(wc -l < working_proxies.txt 2>/dev/null || echo "0")
echo "[+] 可用代理: $WORKING"

# 2. WAF绕过测试
echo "[+] 开始WAF绕过测试..."
source /workspace/waf_bypass.sh

# SQL注入绕过
echo "[*] SQL注入绕过测试..."
sqli_bypass "$TARGET?id=1" "id"

# XSS绕过
echo "[*] XSS绕过测试..."
xss_bypass "$TARGET?q=test" "q"

# 403绕过
echo "[*] 403绕过测试..."
bypass_403 "$TARGET/admin"

# 3. 使用代理执行nuclei
echo "[*] 使用代理执行nuclei扫描..."
nuclei_with_proxy "$TARGET"

echo "[+] 完成！结果保存在:"
echo "    - sqli_bypass_success.txt"
echo "    - xss_bypass_success.txt"
echo "    - 403_bypass_success.txt"
echo "    - working_proxies.txt"
