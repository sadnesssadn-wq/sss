#!/bin/bash
# .ac.th 快速打点脚本
# 生成时间: 2025-11-07

echo "[+] .ac.th 快速打点流程"
echo ""

# 阶段1: 存活探测 (5分钟)
echo "[+] 阶段1: 存活探测 (5分钟)"
httpx -l /workspace/ac_th_alive_http.txt -mc 200,201,301,302,403 -threads 100 -timeout 5 -o /workspace/alive_web.txt
echo "    完成: $(wc -l < /workspace/alive_web.txt) 个存活"

# 阶段2: 指纹识别 (10分钟)
echo "[+] 阶段2: 指纹识别 (10分钟)"
httpx -l /workspace/alive_web.txt -title -tech-detect -status-code -cdn -ip -threads 50 -o /workspace/fingerprint.txt
echo "    完成: fingerprint.txt"

# 阶段3: 高危漏洞扫描 (15分钟)
echo "[+] 阶段3: 高危漏洞扫描 (15分钟)"
nuclei -l /workspace/alive_web.txt -t ~/nuclei-templates/cves/ -severity critical,high -c 50 -o /workspace/critical_vulns.txt
echo "    完成: critical_vulns.txt"

# 阶段4: 未授权访问扫描 (10分钟)
echo "[+] 阶段4: 未授权访问扫描 (10分钟)"
nuclei -l /workspace/alive_web.txt -t ~/nuclei-templates/exposures/ -severity high,critical -c 50 -o /workspace/exposures.txt
echo "    完成: exposures.txt"

# 阶段5: 高价值目标优先扫描 (10分钟)
echo "[+] 阶段5: 高价值目标扫描"
echo "    管理后台: 25个"
echo "    API接口: 47个"
echo "    测试环境: 99个"
nuclei -l /workspace/ac_th_high_value.txt -t ~/nuclei-templates/ -severity critical,high -c 30 -o /workspace/high_value_vulns.txt
echo "    完成: high_value_vulns.txt"

# 统计
echo ""
echo "[+] 扫描完成统计:"
echo "    存活Web: $(wc -l < /workspace/alive_web.txt 2>/dev/null || echo 0)"
echo "    高危漏洞: $(wc -l < /workspace/critical_vulns.txt 2>/dev/null || echo 0)"
echo "    未授权访问: $(wc -l < /workspace/exposures.txt 2>/dev/null || echo 0)"
echo "    高价值漏洞: $(wc -l < /workspace/high_value_vulns.txt 2>/dev/null || echo 0)"

echo ""
echo "[+] 下一步:"
echo "    1. 查看高危: cat critical_vulns.txt"
echo "    2. 查看未授权: cat exposures.txt"
echo "    3. 打点测试环境: 优先防护弱"
echo "    4. 爆破管理后台: hydra/弱口令"
echo "    5. API测试: IDOR/越权"
