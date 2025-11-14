#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "步骤12：文件上传测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

UPLOAD_PATHS=(
    "/api/upload"
    "/api/v1/upload"
    "/upload"
    "/api/file/upload"
    "/admin/upload"
)

echo "[*] 测试文件上传端点..."

# 创建测试文件
echo "test content" > test.txt

for target in "admin.giaohangtietkiem.vn" "dashboard.ghtk.vn"; do
    echo ""
    echo "━━━ $target ━━━"
    for path in "${UPLOAD_PATHS[@]}"; do
        echo "  测试: $path"
        resp=$(curl -sk "https://$target$path" -F "file=@test.txt" -m 3 2>&1 | head -3)
        echo "$resp" | grep -qiE "success|uploaded|完成" && echo "    ⚠️  可能可上传"
    done
done

rm -f test.txt

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 文件上传测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
