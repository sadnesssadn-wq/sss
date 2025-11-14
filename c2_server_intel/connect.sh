#!/bin/bash
# 快速SSH连接脚本

TARGET="82.29.71.156"
PORT="2233"
USER="root"
PASS="@admin1314@"

echo "[*] 连接到C2服务器..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
    -p $PORT $USER@$TARGET
