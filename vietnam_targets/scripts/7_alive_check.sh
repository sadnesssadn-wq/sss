#!/bin/bash
# 存活检测 - HTTP/HTTPS探测

echo "[*] 开始存活检测..."
echo "[*] 总计域名: $(wc -l < processed/all_domains.txt)"

# 检测存活（快速）
cat processed/all_domains.txt | head -500 | while read domain; do
    # 尝试HTTP和HTTPS
    for proto in http https; do
        code=$(curl -sk -o /dev/null -w "%{http_code}" --connect-timeout 3 "${proto}://${domain}" 2>/dev/null)
        if [ "$code" -gt 0 ] && [ "$code" != "000" ]; then
            echo "${proto}://${domain}|${code}" >> processed/alive_raw.txt
            echo "[✅] ${domain} - ${code}"
            break
        fi
    done
done

echo "[✅] 存活检测完成（前500个）"
echo "[✅] 存活: $(wc -l < processed/alive_raw.txt 2>/dev/null || echo 0) 个"
