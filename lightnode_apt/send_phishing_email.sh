#!/bin/bash
# 钓鱼邮件发送脚本
# 使用方法: bash send_phishing_email.sh [scenario] [target_email]

SCENARIO=$1
TARGET=$2

if [ -z "$SCENARIO" ] || [ -z "$TARGET" ]; then
    echo "使用方法: bash send_phishing_email.sh [scenario] [target_email]"
    echo ""
    echo "可用场景:"
    echo "  1 - API文档验证 (Apifox)"
    echo "  2 - LightCDN迁移错误"
    echo "  3 - Stripe支付失败"
    echo "  4 - 阿里云安全警报"
    echo "  5 - Trustpilot差评"
    echo ""
    echo "示例: bash send_phishing_email.sh 2 support@lightnode.com"
    exit 1
fi

echo "=== 钓鱼邮件发送脚本 ==="
echo "场景: $SCENARIO"
echo "目标: $TARGET"
echo ""

# 检查SMTP配置
if [ ! -f ~/.smtp_config ]; then
    echo "❌ 错误: 未找到SMTP配置文件"
    echo ""
    echo "请创建 ~/.smtp_config 文件，内容如下:"
    echo ""
    cat << 'SMTP_CONFIG'
SMTP_SERVER="smtp.gmail.com"
SMTP_PORT="587"
SMTP_USER="your_email@gmail.com"
SMTP_PASS="your_app_password"
SMTP_CONFIG
    exit 1
fi

source ~/.smtp_config

# 选择邮件模板
case $SCENARIO in
    1)
        SUBJECT="[Apifox] API文档访问权限更新 - 需要立即确认"
        FROM="noreply@apifox.com"
        TEMPLATE="apifox_verification"
        ;;
    2)
        SUBJECT="[紧急] LightCDN迁移数据同步失败 - 需要手动处理"
        FROM="support@lightcdn.com"
        TEMPLATE="lightcdn_migration_error"
        ;;
    3)
        SUBJECT="[Stripe] 多笔支付失败 - 账户可能被暂停"
        FROM="disputes@stripe.com"
        TEMPLATE="stripe_payment_failed"
        ;;
    4)
        SUBJECT="[阿里云安全中心] 检测到高危漏洞 - ECS实例47.238.114.118"
        FROM="security@alibabacloud.com"
        TEMPLATE="aliyun_security_alert"
        ;;
    5)
        SUBJECT="[Trustpilot] 新的1星差评 - 需要立即回复"
        FROM="customer-complaints@trustpilot.com"
        TEMPLATE="trustpilot_bad_review"
        ;;
    *)
        echo "❌ 错误: 未知场景编号"
        exit 1
        ;;
esac

echo "邮件主题: $SUBJECT"
echo "伪造发件人: $FROM"
echo ""

# 发送邮件（需要Python + smtplib）
python3 << PYTHON_EOF
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
import os

smtp_server = "$SMTP_SERVER"
port = $SMTP_PORT
user = "$SMTP_USER"
password = "$SMTP_PASS"

msg = MIMEMultipart('alternative')
msg['From'] = "$FROM"
msg['To'] = "$TARGET"
msg['Subject'] = "$SUBJECT"

# 这里应该加载HTML模板
html = """
<p>这是测试邮件</p>
<p>实际使用时，需要加载对应的HTML模板文件</p>
"""

msg.attach(MIMEText(html, 'html'))

try:
    server = smtplib.SMTP(smtp_server, port)
    server.starttls()
    server.login(user, password)
    server.send_message(msg)
    server.quit()
    print("✅ 邮件发送成功!")
except Exception as e:
    print(f"❌ 发送失败: {e}")
PYTHON_EOF

echo ""
echo "=== 发送完成 ==="
echo "提示: 实际使用时需要:"
echo "1. 配置真实的SMTP服务器"
echo "2. 准备钓鱼页面"
echo "3. 加载完整的HTML邮件模板"
