#!/bin/bash
# 按优先级排序，生成最终攻击列表

echo "[*] 生成优先级攻击列表..."

# 提取存活的URL
cat processed/alive_raw.txt 2>/dev/null | cut -d'|' -f1 > processed/alive_urls.txt

# 高优先级关键词（高价值目标）
HIGH_PRIORITY="admin|api|test|dev|staging|uat|partner|seller|manage|dashboard|console|backend|internal"
MEDIUM_PRIORITY="shop|store|mall|buy|sell|giao|chuyen|van"

# 分优先级
echo "[*] 分优先级..."

# ⭐⭐⭐ 最高优先级（管理后台/测试环境/API）
grep -iE "$HIGH_PRIORITY" processed/alive_urls.txt > reports/priority_critical.txt 2>/dev/null

# ⭐⭐ 中优先级（主站/业务系统）
grep -viE "$HIGH_PRIORITY" processed/alive_urls.txt | \
grep -iE "$MEDIUM_PRIORITY" > reports/priority_high.txt 2>/dev/null

# ⭐ 低优先级（其他）
grep -viE "$HIGH_PRIORITY|$MEDIUM_PRIORITY" processed/alive_urls.txt > reports/priority_medium.txt 2>/dev/null

# 统计
CRITICAL=$(wc -l < reports/priority_critical.txt 2>/dev/null || echo 0)
HIGH=$(wc -l < reports/priority_high.txt 2>/dev/null || echo 0)
MEDIUM=$(wc -l < reports/priority_medium.txt 2>/dev/null || echo 0)

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 优先级分类完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "⭐⭐⭐ 最高优先级: $CRITICAL 个"
echo "       (admin/api/test/dev环境)"
echo ""
echo "⭐⭐ 高优先级: $HIGH 个"
echo "       (电商/物流主站)"
echo ""
echo "⭐ 中优先级: $MEDIUM 个"
echo "       (其他站点)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 生成最终报告
cat > reports/FINAL_REPORT.md << 'REPORT'
# 🇻🇳 越南电商/物流渗透测试目标库

## 📊 数据统计

REPORT

echo "- **总域名库**: $(wc -l < processed/all_domains.txt)" >> reports/FINAL_REPORT.md
echo "- **存活检测**: $(wc -l < processed/alive_urls.txt 2>/dev/null || echo 0) 个" >> reports/FINAL_REPORT.md
echo "- **电商平台**: $(wc -l < processed/ecommerce.txt)" >> reports/FINAL_REPORT.md
echo "- **物流平台**: $(wc -l < processed/logistics.txt)" >> reports/FINAL_REPORT.md
echo "" >> reports/FINAL_REPORT.md

cat >> reports/FINAL_REPORT.md << 'REPORT'

## 🎯 攻击优先级

### ⭐⭐⭐ 最高优先级（Critical）
**特征**: 管理后台、API接口、测试环境
**数量**: CRITICAL_COUNT 个
**文件**: `priority_critical.txt`

**建议**:
- 优先测试，成功率最高
- 测试环境通常防护较弱
- 管理后台可能有弱密码
- API接口可能无鉴权

**典型目标**:
REPORT

head -20 reports/priority_critical.txt 2>/dev/null | sed 's/^/- /' >> reports/FINAL_REPORT.md

cat >> reports/FINAL_REPORT.md << 'REPORT'

### ⭐⭐ 高优先级（High）
**特征**: 电商/物流主站
**数量**: HIGH_COUNT 个
**文件**: `priority_high.txt`

**建议**:
- 业务逻辑漏洞为主
- 支付/订单流程测试
- 权限越权测试

### ⭐ 中优先级（Medium）
**特征**: 其他相关站点
**数量**: MEDIUM_COUNT 个
**文件**: `priority_medium.txt`

## 🔥 高价值目标速查

### 测试环境
REPORT

grep -iE 'test|staging|uat|dev' reports/priority_critical.txt 2>/dev/null | head -10 | sed 's/^/- /' >> reports/FINAL_REPORT.md

cat >> reports/FINAL_REPORT.md << 'REPORT'

### 管理后台
REPORT

grep -iE 'admin|manage|dashboard|console' reports/priority_critical.txt 2>/dev/null | head -10 | sed 's/^/- /' >> reports/FINAL_REPORT.md

cat >> reports/FINAL_REPORT.md << 'REPORT'

### API接口
REPORT

grep -iE 'api' reports/priority_critical.txt 2>/dev/null | head -10 | sed 's/^/- /' >> reports/FINAL_REPORT.md

# 替换计数
sed -i "s/CRITICAL_COUNT/$CRITICAL/g" reports/FINAL_REPORT.md
sed -i "s/HIGH_COUNT/$HIGH/g" reports/FINAL_REPORT.md
sed -i "s/MEDIUM_COUNT/$MEDIUM/g" reports/FINAL_REPORT.md

echo ""
echo "[✅] 最终报告已生成: reports/FINAL_REPORT.md"
