#!/bin/bash
# 发送测试邮件到support@lightnode.com获取邮件签名
# 邮件签名通常包含：姓名、职位、电话、内部分机

cat > /tmp/test_email.txt << 'EMAILEOF'
To: support@lightnode.com
From: test@test.com
Subject: Pre-sales Question

Hello,

I'm interested in your VPS services.
Could you please send me a pricing quote?

Thank you!
EMAILEOF

echo "[准备就绪] 需要实际SMTP服务器发送测试邮件"
echo "[目标] 获取support@lightnode.com的邮件签名"
echo "[预期信息] 员工姓名、职位、分机号、部门"
