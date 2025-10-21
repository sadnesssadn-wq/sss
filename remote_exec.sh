#!/bin/bash
# Remote Command Execution Script for Red Team Server
# Usage: ./remote_exec.sh "command"

TARGET_IP="82.29.71.156"
TARGET_USER="root"
TARGET_PASS='@admin123'

if [ -z "$1" ]; then
    echo "Usage: $0 \"command\""
    echo "Example: $0 \"ls -la /root\""
    exit 1
fi

sshpass -p "${TARGET_PASS}" ssh \
    -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
    ${TARGET_USER}@${TARGET_IP} "$1"
