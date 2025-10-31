#!/bin/bash
# 快速侦察脚本 - 30秒内完成目标初步侦察
# 用法: ./quick_recon.sh target.com

TARGET=$1
OUTPUT_DIR="recon_${TARGET}_$(date +%Y%m%d_%H%M%S)"

if [ -z "$TARGET" ]; then
    echo "用法: $0 target.com"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"
cd "$OUTPUT_DIR"

echo "[*] 快速侦察: $TARGET"

# 并行执行所有侦察
(
    # 1. 子域名枚举（快速）
    echo "[1/8] 子域名..." && \
    subfinder -d "$TARGET" -silent -all 2>/dev/null > subs.txt &
    
    # 2. DNS记录
    echo "[2/8] DNS..." && \
    dig "$TARGET" ANY +short > dns.txt &
    
    # 3. WHOIS
    echo "[3/8] WHOIS..." && \
    whois "$TARGET" > whois.txt &
    
    # 4. IP解析
    echo "[4/8] IP..." && \
    host "$TARGET" | grep "has address" | awk '{print $4}' > ips.txt &
    
    # 5. HTTP指纹
    echo "[5/8] HTTP..." && \
    curl -s -I "https://$TARGET" > http_headers.txt &
    
    # 6. 证书信息
    echo "[6/8] SSL证书..." && \
    echo | openssl s_client -connect "$TARGET:443" 2>/dev/null | openssl x509 -noout -text > cert.txt &
    
    # 7. 快速端口扫描
    echo "[7/8] 端口..." && \
    nmap -sS -Pn -n -p 21,22,23,80,443,445,3306,3389,8080,8443 "$TARGET" -oG ports.txt &
    
    # 8. Wayback URLs
    echo "[8/8] 历史URL..." && \
    curl -s "http://web.archive.org/cdx/search/cdx?url=$TARGET/*&output=text&fl=original&collapse=urlkey" 2>/dev/null | head -100 > wayback.txt &
    
    wait
)

# 汇总结果
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "【侦察完成】"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "子域名: $(wc -l < subs.txt) 个"
echo "IP: $(wc -l < ips.txt) 个"
echo "开放端口: $(grep -c "/open/" ports.txt 2>/dev/null || echo 0) 个"
echo "历史URL: $(wc -l < wayback.txt) 个"
echo ""
echo "结果目录: $OUTPUT_DIR"
echo ""

# 快速分析高价值目标
echo "【高价值目标】"
grep -E "443|8080|8443" ports.txt 2>/dev/null && echo "  → Web服务"
grep -E "3306|1433|5432|27017|6379" ports.txt 2>/dev/null && echo "  → 数据库暴露"
grep -E "445|139" ports.txt 2>/dev/null && echo "  → SMB服务"
grep -E "22" ports.txt 2>/dev/null && echo "  → SSH服务"

# 生成下一步命令
echo ""
echo "【下一步】"
echo "Web扫描: httpx -l subs.txt -title -tech-detect -status-code"
echo "漏洞扫描: nuclei -l subs.txt -severity critical,high"
echo "端口详扫: nmap -sV -p- -iL ips.txt"
