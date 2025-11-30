#!/bin/bash
# 批量验证存活（高并发）

INPUT="raw_data/all_collected.txt"
OUTPUT="processed/collected_alive.txt"

> "$OUTPUT"

echo "[*] 开始验证 $(wc -l < $INPUT) 个网站..."

cat "$INPUT" | xargs -P 100 -I {} sh -c '
    url="{}"
    if curl -skL --max-time 5 "$url" -o /dev/null -w "%{http_code}" 2>/dev/null | grep -qE "^(200|301|302|403)"; then
        echo "$url"
    fi
' >> "$OUTPUT"

echo "[✅] 验证完成: $(wc -l < $OUTPUT) 个存活"
