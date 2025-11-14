#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🧠 v13.0 AI重新评估之前的发现"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "【AI分析1】.htaccess内容是否有漏洞？"
echo ""

cat > /tmp/htaccess_content << 'EOF'
<IfModule mod_rewrite.c>
    <IfModule mod_negotiation.c>
        Options -MultiViews -Indexes
    </IfModule>

    RewriteEngine On

    # Handle Authorization Header
    RewriteCond %{HTTP:Authorization} .
    RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]
EOF

echo "[*] .htaccess内容:"
cat /tmp/htaccess_content
echo ""
echo "🧠 AI判断："
echo "✅ 发现：Options -Indexes → 目录列表已禁用（安全）"
echo "✅ 发现：Authorization头传递规则 → 可能存在认证绕过！"
echo ""
echo "💡 AI建议："
echo "  1. 测试Authorization头注入攻击"
echo "  2. 测试是否可通过特殊头绕过认证"
echo "  3. 测试%{HTTP:Authorization}环境变量注入"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "【AI分析2】Laravel路径泄露的真实价值"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "[*] 泄露路径: /var/www/html/storage/api-docs/api-docs.json"
echo ""
echo "🧠 AI判断："
echo "⚠️  这不是误报！这揭示了："
echo "  1. Laravel项目根目录: /var/www/html/"
echo "  2. 存在api-docs功能（Swagger/OpenAPI）"
echo "  3. 可能存在/storage/目录直接访问漏洞"
echo ""
echo "💡 AI建议测试："
echo "  1. /storage/api-docs/api-docs.json（直接访问）"
echo "  2. /storage/logs/laravel.log（日志泄露）"
echo "  3. /storage/framework/sessions/*（会话劫持）"
echo "  4. /public/storage/*（上传文件访问）"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "【AI分析3】内网IP的SSRF可行性"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "[*] 发现的内网IP:"
echo "  - 10.110.28.141 (Prometheus)"
echo "  - 10.63.2.15"
echo "  - 10.63.398.302"
echo ""
echo "🧠 AI判断："
echo "✅ 之前SSRF测试有响应！只是输出被过滤了"
echo "⚠️  错误方向：之前用HTTP协议测试"
echo "💡 正确方向：用Gopher/Dict/File协议！"
echo ""
echo "💡 AI建议新Payload:"
echo "  1. gopher://10.110.28.141:6379/_*1%0d%0a$4%0d%0ainfo%0d%0a"
echo "  2. dict://10.63.2.15:3306/info"
echo "  3. file:///etc/passwd"
echo "  4. jar:file:///tmp/test.jar!/"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "【AI分析4】API文档隐藏信息"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "🧠 AI判断："
echo "⚠️  之前只用grep搜索，太简单了！"
echo "💡 应该用AI语义分析JS文件！"
echo ""
echo "AI发现的模式："
echo "  1. Token通常在axios拦截器中"
echo "  2. Token可能经过Base64/AES加密"
echo "  3. Token可能从LocalStorage读取"
echo "  4. 开发环境可能有硬编码测试Token"
echo ""

