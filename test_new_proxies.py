#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
测试新代理池是否可用
"""
import hashlib, requests, random
from concurrent.futures import ThreadPoolExecutor

API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

# 新的100个代理
NEW_PROXIES = """23.27.184.245:5846:uadkcvtn:uo2rzar814ph
45.43.70.140:6427:uadkcvtn:uo2rzar814ph
82.24.233.117:5439:uadkcvtn:uo2rzar814ph
136.0.188.71:6034:uadkcvtn:uo2rzar814ph
161.123.130.168:5839:uadkcvtn:uo2rzar814ph
142.147.240.52:6574:uadkcvtn:uo2rzar814ph
166.88.224.145:6043:uadkcvtn:uo2rzar814ph
82.25.215.106:5457:uadkcvtn:uo2rzar814ph
91.211.87.215:7205:uadkcvtn:uo2rzar814ph
104.238.36.64:6071:uadkcvtn:uo2rzar814ph
104.239.40.211:6830:uadkcvtn:uo2rzar814ph
67.227.37.26:5568:uadkcvtn:uo2rzar814ph
108.165.218.84:5823:uadkcvtn:uo2rzar814ph
109.196.160.242:5988:uadkcvtn:uo2rzar814ph
104.238.38.204:6472:uadkcvtn:uo2rzar814ph
140.99.203.108:5985:uadkcvtn:uo2rzar814ph
82.25.224.37:7848:uadkcvtn:uo2rzar814ph
216.74.118.50:6205:uadkcvtn:uo2rzar814ph
104.239.13.199:6828:uadkcvtn:uo2rzar814ph
161.123.152.216:6461:uadkcvtn:uo2rzar814ph
185.72.240.218:7254:uadkcvtn:uo2rzar814ph
104.239.43.88:5816:uadkcvtn:uo2rzar814ph
92.113.115.48:5995:uadkcvtn:uo2rzar814ph
145.223.44.64:5747:uadkcvtn:uo2rzar814ph
155.254.34.216:6196:uadkcvtn:uo2rzar814ph
166.88.169.112:6719:uadkcvtn:uo2rzar814ph
82.23.223.60:7904:uadkcvtn:uo2rzar814ph
166.88.235.140:5768:uadkcvtn:uo2rzar814ph
23.129.252.17:6285:uadkcvtn:uo2rzar814ph
46.203.134.90:5714:uadkcvtn:uo2rzar814ph
82.23.227.49:7352:uadkcvtn:uo2rzar814ph
104.239.13.114:6743:uadkcvtn:uo2rzar814ph
50.114.98.129:5613:uadkcvtn:uo2rzar814ph
154.6.83.144:6615:uadkcvtn:uo2rzar814ph
45.38.86.229:6158:uadkcvtn:uo2rzar814ph
64.137.73.19:5107:uadkcvtn:uo2rzar814ph
45.131.101.19:6286:uadkcvtn:uo2rzar814ph
104.239.40.197:6816:uadkcvtn:uo2rzar814ph
82.21.209.226:6555:uadkcvtn:uo2rzar814ph
23.26.71.157:5640:uadkcvtn:uo2rzar814ph
23.27.91.75:6154:uadkcvtn:uo2rzar814ph
23.95.150.72:6041:uadkcvtn:uo2rzar814ph
82.26.218.128:6436:uadkcvtn:uo2rzar814ph
91.223.126.118:6730:uadkcvtn:uo2rzar814ph
145.223.44.177:5860:uadkcvtn:uo2rzar814ph
45.38.94.42:5963:uadkcvtn:uo2rzar814ph
23.26.95.215:5697:uadkcvtn:uo2rzar814ph
50.114.15.8:5993:uadkcvtn:uo2rzar814ph
82.24.217.113:5443:uadkcvtn:uo2rzar814ph
136.0.109.46:6332:uadkcvtn:uo2rzar814ph
185.101.253.194:5754:uadkcvtn:uo2rzar814ph
38.153.133.31:9435:uadkcvtn:uo2rzar814ph
108.165.161.42:5783:uadkcvtn:uo2rzar814ph
2.57.31.80:6656:uadkcvtn:uo2rzar814ph
45.56.173.242:6225:uadkcvtn:uo2rzar814ph
216.173.104.22:6159:uadkcvtn:uo2rzar814ph
216.173.123.97:6472:uadkcvtn:uo2rzar814ph
104.253.55.119:5549:uadkcvtn:uo2rzar814ph
91.211.87.2:6992:uadkcvtn:uo2rzar814ph
142.111.44.203:5915:uadkcvtn:uo2rzar814ph
191.101.174.88:6136:uadkcvtn:uo2rzar814ph
31.58.26.144:6727:uadkcvtn:uo2rzar814ph
104.232.211.81:5694:uadkcvtn:uo2rzar814ph
104.253.48.76:5500:uadkcvtn:uo2rzar814ph
154.36.85.89:6600:uadkcvtn:uo2rzar814ph
140.99.202.10:5888:uadkcvtn:uo2rzar814ph
45.41.169.227:6888:uadkcvtn:uo2rzar814ph
45.67.0.158:6594:uadkcvtn:uo2rzar814ph
45.150.176.51:5924:uadkcvtn:uo2rzar814ph
104.238.7.43:5970:uadkcvtn:uo2rzar814ph
216.173.75.47:6348:uadkcvtn:uo2rzar814ph
45.39.5.58:6496:uadkcvtn:uo2rzar814ph
46.203.157.176:7119:uadkcvtn:uo2rzar814ph
104.233.20.17:6033:uadkcvtn:uo2rzar814ph
216.74.114.235:6518:uadkcvtn:uo2rzar814ph
142.202.254.167:6145:uadkcvtn:uo2rzar814ph
37.44.219.236:6201:uadkcvtn:uo2rzar814ph
82.24.239.176:7033:uadkcvtn:uo2rzar814ph
104.239.19.194:6871:uadkcvtn:uo2rzar814ph
191.101.181.187:6940:uadkcvtn:uo2rzar814ph
38.154.199.233:5387:uadkcvtn:uo2rzar814ph
45.39.18.128:6564:uadkcvtn:uo2rzar814ph
103.47.53.151:8449:uadkcvtn:uo2rzar814ph
45.39.17.119:5542:uadkcvtn:uo2rzar814ph
216.173.75.226:6527:uadkcvtn:uo2rzar814ph
45.56.175.4:5678:uadkcvtn:uo2rzar814ph
64.137.89.84:6157:uadkcvtn:uo2rzar814ph
82.21.248.115:6451:uadkcvtn:uo2rzar814ph
198.46.241.44:6579:uadkcvtn:uo2rzar814ph
45.83.57.20:6537:uadkcvtn:uo2rzar814ph
104.239.41.168:6523:uadkcvtn:uo2rzar814ph
64.137.77.92:5527:uadkcvtn:uo2rzar814ph
104.253.82.58:6479:uadkcvtn:uo2rzar814ph
82.23.223.166:8010:uadkcvtn:uo2rzar814ph
185.15.178.90:5774:uadkcvtn:uo2rzar814ph
209.127.191.113:5187:uadkcvtn:uo2rzar814ph
191.101.174.78:6126:uadkcvtn:uo2rzar814ph
217.69.127.152:6773:uadkcvtn:uo2rzar814ph
38.225.2.55:5838:uadkcvtn:uo2rzar814ph
92.112.136.179:6123:uadkcvtn:uo2rzar814ph""".strip().split('\n')

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def test_proxy(proxy_str, index):
    """测试单个代理"""
    parts = proxy_str.split(':')
    if len(parts) != 4:
        return {'index': index, 'proxy': proxy_str, 'status': 'format_error', 'time': 0}
    
    ip, port, user, pwd = parts
    proxy = {
        'http': f'http://{user}:{pwd}@{ip}:{port}',
        'https': f'http://{user}:{pwd}@{ip}:{port}'
    }
    
    # 测试已知的15号订单
    tracking = "EP493011083VN"
    sig = sign(tracking)
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": API_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    import time
    start = time.time()
    try:
        r = requests.post(API_URL, 
            headers=headers,
            data={"ParcelCode": tracking, "Signature": sig}, 
            proxies=proxy,
            timeout=10)
        
        elapsed = time.time() - start
        
        if r.status_code == 200:
            result = r.json()
            if result.get('Code') == '00':
                return {'index': index, 'proxy': f"{ip}:{port}", 'status': 'success', 'time': elapsed}
        
        return {'index': index, 'proxy': f"{ip}:{port}", 'status': f'http_{r.status_code}', 'time': elapsed}
    
    except requests.exceptions.Timeout:
        return {'index': index, 'proxy': f"{ip}:{port}", 'status': 'timeout', 'time': 10}
    except requests.exceptions.ProxyError:
        return {'index': index, 'proxy': f"{ip}:{port}", 'status': 'proxy_error', 'time': time.time() - start}
    except Exception as e:
        return {'index': index, 'proxy': f"{ip}:{port}", 'status': f'error:{type(e).__name__}', 'time': time.time() - start}

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                   🧪 测试新代理池（100个）                                ║
╚════════════════════════════════════════════════════════════════════════════╝

代理数量: {len(NEW_PROXIES)}
测试订单: EP493011083VN (已知的15号未配送订单)
并发测试: 20个代理同时测试

开始测试...
""")

success_proxies = []
failed_proxies = []

with ThreadPoolExecutor(max_workers=20) as executor:
    futures = [executor.submit(test_proxy, proxy, i) for i, proxy in enumerate(NEW_PROXIES)]
    
    for i, future in enumerate(futures, 1):
        result = future.result()
        
        if result['status'] == 'success':
            success_proxies.append(result)
            print(f"✅ [{i:3d}/100] {result['proxy']:<25} 成功 ({result['time']:.2f}s)")
        else:
            failed_proxies.append(result)
            print(f"❌ [{i:3d}/100] {result['proxy']:<25} 失败: {result['status']}")

print(f"""
\n{'='*80}
🎉 测试完成！
{'='*80}
成功: {len(success_proxies)}/{len(NEW_PROXIES)} ({len(success_proxies)/len(NEW_PROXIES)*100:.1f}%)
失败: {len(failed_proxies)}/{len(NEW_PROXIES)} ({len(failed_proxies)/len(NEW_PROXIES)*100:.1f}%)

""")

if success_proxies:
    print(f"✅ 可用代理列表 ({len(success_proxies)}个):")
    print("-" * 80)
    for p in sorted(success_proxies, key=lambda x: x['time'])[:10]:
        print(f"  {p['proxy']:<25} 响应时间: {p['time']:.2f}s")
    
    if len(success_proxies) > 10:
        print(f"  ... 还有 {len(success_proxies) - 10} 个可用代理")
    
    avg_time = sum(p['time'] for p in success_proxies) / len(success_proxies)
    print(f"\n  平均响应时间: {avg_time:.2f}s")
else:
    print("❌ 没有可用的代理！")

print("\n" + "="*80)

if len(success_proxies) >= 30:
    print(f"✅ 代理池可用！成功率 {len(success_proxies)/len(NEW_PROXIES)*100:.1f}%")
    print(f"✅ 建议使用 30线程 + {len(success_proxies)}可用代理")
elif len(success_proxies) >= 10:
    print(f"⚠️  代理池部分可用，成功率 {len(success_proxies)/len(NEW_PROXIES)*100:.1f}%")
    print(f"⚠️  建议使用 10-20线程 + {len(success_proxies)}可用代理")
else:
    print(f"❌ 代理池失效严重！成功率仅 {len(success_proxies)/len(NEW_PROXIES)*100:.1f}%")
    print(f"❌ 建议使用无代理版本（scan_undelivered_no_proxy.py）")

print("="*80)
