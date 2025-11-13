#!/bin/bash
# SMTP VRFY邮箱验证脚本
MAIL_SERVER="mxbiz1.qq.com"
PORT=25

test_email() {
    local email=$1
    echo "Testing: $email"
    (
        sleep 1
        echo "HELO test.com"
        sleep 1
        echo "VRFY $email"
        sleep 1
        echo "QUIT"
    ) | telnet $MAIL_SERVER $PORT 2>/dev/null | grep -E "250|550|551"
}

# 测试官方邮箱
for user in admin postmaster support business sales info contact service help webmaster tech hr finance billing marketing ceo cto cfo founder dev ops security; do
    test_email "$user@lightnode.com"
    sleep 2
done
