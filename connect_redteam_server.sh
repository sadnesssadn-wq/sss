#!/bin/bash
# Red Team Server SSH Connection Script
# Target: 82.29.71.156 (vps55303961.hosteons.net)

TARGET_IP="82.29.71.156"
TARGET_USER="root"
TARGET_PASS='@admin123'

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}[+] Connecting to Red Team Server...${NC}"
echo -e "${YELLOW}[i] Target: ${TARGET_USER}@${TARGET_IP}${NC}"

# Check if sshpass is installed
if ! command -v sshpass &> /dev/null; then
    echo -e "${RED}[-] sshpass not found. Installing...${NC}"
    sudo apt-get update && sudo apt-get install -y sshpass
fi

# Connect to server
sshpass -p "${TARGET_PASS}" ssh \
    -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
    ${TARGET_USER}@${TARGET_IP}
