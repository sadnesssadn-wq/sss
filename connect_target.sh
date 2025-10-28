#!/bin/bash
# 目标服务器连接脚本
# 主机: 82.29.71.156:2233
# 用户: root
# 系统: Ubuntu 22.04.1 LTS (Jammy Jellyfish)

TARGET_HOST="82.29.71.156"
TARGET_PORT="2233"
TARGET_USER="root"
TARGET_PASS="@admin1314@"

# SSH连接选项
SSH_OPTS="-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

# 根据参数执行不同操作
if [ "$#" -eq 0 ]; then
    # 无参数：直接登录交互式shell
    sshpass -p "${TARGET_PASS}" ssh ${SSH_OPTS} -p ${TARGET_PORT} ${TARGET_USER}@${TARGET_HOST}
else
    # 有参数：执行命令
    sshpass -p "${TARGET_PASS}" ssh ${SSH_OPTS} -p ${TARGET_PORT} ${TARGET_USER}@${TARGET_HOST} "$@"
fi
