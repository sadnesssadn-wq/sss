#!/bin/bash
# 文件下载脚本

TARGET="82.29.71.156"
PORT="2233"
USER="root"
PASS="@admin1314@"

if [ -z "$1" ]; then
    echo "用法: $0 <远程文件路径>"
    echo "示例: $0 /root/.api_keys"
    exit 1
fi

REMOTE_FILE="$1"
LOCAL_FILE=$(basename "$REMOTE_FILE")

echo "[*] 下载: $REMOTE_FILE"
sshpass -p "$PASS" scp -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
    -P $PORT $USER@$TARGET:"$REMOTE_FILE" "$LOCAL_FILE"

if [ $? -eq 0 ]; then
    echo "[✅] 下载成功: $LOCAL_FILE"
    ls -lh "$LOCAL_FILE"
else
    echo "[❌] 下载失败"
fi
