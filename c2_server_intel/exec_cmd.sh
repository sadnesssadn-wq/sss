#!/bin/bash
# 远程命令执行脚本

TARGET="82.29.71.156"
PORT="2233"
USER="root"
PASS="@admin1314@"

if [ -z "$1" ]; then
    echo "用法: $0 <命令>"
    echo "示例: $0 'whoami'"
    exit 1
fi

CMD="$@"

sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
    -p $PORT $USER@$TARGET "$CMD"
