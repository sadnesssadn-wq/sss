#!/bin/bash
MX_SERVER="aspmx.l.google.com"
PORT=25

for email in support@hosteons.com sales@hosteons.com billing@hosteons.com noc@hosteons.com; do
    echo "Testing: $email"
    (
        sleep 1
        echo "EHLO test.com"
        sleep 1
        echo "VRFY $email"
        sleep 1
        echo "QUIT"
    ) | timeout 10 nc $MX_SERVER $PORT 2>/dev/null | grep -E "250|550|551|252"
    sleep 2
done
