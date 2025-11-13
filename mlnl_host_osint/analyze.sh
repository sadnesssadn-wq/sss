#!/bin/bash
echo "[*] 邮箱格式分析..."
echo "  发现邮箱: hello@mlnl.host"
echo "  格式推测: [name]@mlnl.host"
echo ""
echo "[*] 可能的邮箱:"
for name in admin support sales info contact billing tech ceo founder; do
    echo "  - ${name}@mlnl.host"
done
echo ""
echo "[*] OSINT搜索建议:"
echo "  1. Google: \"millenial.host\" OR \"mlnl.host\" + \"founder\" OR \"CEO\""
echo "  2. LinkedIn: company:millenial OR company:mlnl"
echo "  3. Twitter: @millenial_host (已发现)"
echo "  4. Facebook: 已发现短链"
echo "  5. GitHub: 搜索 \"millenial.host\" 或 \"mlnl.host\""
