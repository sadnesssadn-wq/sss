#!/usr/bin/env python3
# 代理池管理器 - 从.cursorrules提取
import random
import requests
from concurrent.futures import ThreadPoolExecutor
import sys

class ProxyPool:
    def __init__(self):
        # 100个真实住宅代理（完整列表）
        self.proxy_credentials = [
            "23.27.184.245:5846:uadkcvtn:uo2rzar814ph",
            "45.43.70.140:6427:uadkcvtn:uo2rzar814ph",
            "82.24.233.117:5439:uadkcvtn:uo2rzar814ph",
            "136.0.188.71:6034:uadkcvtn:uo2rzar814ph",
            "161.123.130.168:5839:uadkcvtn:uo2rzar814ph",
            "142.147.240.52:6574:uadkcvtn:uo2rzar814ph",
            "166.88.224.145:6043:uadkcvtn:uo2rzar814ph",
            "82.25.215.106:5457:uadkcvtn:uo2rzar814ph",
            "91.211.87.215:7205:uadkcvtn:uo2rzar814ph",
            "104.238.36.64:6071:uadkcvtn:uo2rzar814ph",
            "104.239.40.211:6830:uadkcvtn:uo2rzar814ph",
            "67.227.37.26:5568:uadkcvtn:uo2rzar814ph",
            "108.165.218.84:5823:uadkcvtn:uo2rzar814ph",
            "109.196.160.242:5988:uadkcvtn:uo2rzar814ph",
            "104.238.38.204:6472:uadkcvtn:uo2rzar814ph",
            "140.99.203.108:5985:uadkcvtn:uo2rzar814ph",
            "82.25.224.37:7848:uadkcvtn:uo2rzar814ph",
            "216.74.118.50:6205:uadkcvtn:uo2rzar814ph",
            "104.239.13.199:6828:uadkcvtn:uo2rzar814ph",
            "161.123.152.216:6461:uadkcvtn:uo2rzar814ph",
            "185.72.240.218:7254:uadkcvtn:uo2rzar814ph",
            "104.239.43.88:5816:uadkcvtn:uo2rzar814ph",
            "92.113.115.48:5995:uadkcvtn:uo2rzar814ph",
            "145.223.44.64:5747:uadkcvtn:uo2rzar814ph",
            "155.254.34.216:6196:uadkcvtn:uo2rzar814ph",
            "166.88.169.112:6719:uadkcvtn:uo2rzar814ph",
            "82.23.223.60:7904:uadkcvtn:uo2rzar814ph",
            "166.88.235.140:5768:uadkcvtn:uo2rzar814ph",
            "23.129.252.17:6285:uadkcvtn:uo2rzar814ph",
            "46.203.134.90:5714:uadkcvtn:uo2rzar814ph",
            "82.23.227.49:7352:uadkcvtn:uo2rzar814ph",
            "104.239.13.114:6743:uadkcvtn:uo2rzar814ph",
            "50.114.98.129:5613:uadkcvtn:uo2rzar814ph",
            "154.6.83.144:6615:uadkcvtn:uo2rzar814ph",
            "45.38.86.229:6158:uadkcvtn:uo2rzar814ph",
            "64.137.73.19:5107:uadkcvtn:uo2rzar814ph",
            "45.131.101.19:6286:uadkcvtn:uo2rzar814ph",
            "104.239.40.197:6816:uadkcvtn:uo2rzar814ph",
            "82.21.209.226:6555:uadkcvtn:uo2rzar814ph",
            "23.26.71.157:5640:uadkcvtn:uo2rzar814ph",
            "23.27.91.75:6154:uadkcvtn:uo2rzar814ph",
            "23.95.150.72:6041:uadkcvtn:uo2rzar814ph",
            "82.26.218.128:6436:uadkcvtn:uo2rzar814ph",
            "91.223.126.118:6730:uadkcvtn:uo2rzar814ph",
            "145.223.44.177:5860:uadkcvtn:uo2rzar814ph",
            "45.38.94.42:5963:uadkcvtn:uo2rzar814ph",
            "23.26.95.215:5697:uadkcvtn:uo2rzar814ph",
            "50.114.15.8:5993:uadkcvtn:uo2rzar814ph",
            "82.24.217.113:5443:uadkcvtn:uo2rzar814ph",
            "136.0.109.46:6332:uadkcvtn:uo2rzar814ph",
            "185.101.253.194:5754:uadkcvtn:uo2rzar814ph",
            "38.153.133.31:9435:uadkcvtn:uo2rzar814ph",
            "108.165.161.42:5783:uadkcvtn:uo2rzar814ph",
            "2.57.31.80:6656:uadkcvtn:uo2rzar814ph",
            "45.56.173.242:6225:uadkcvtn:uo2rzar814ph",
            "216.173.104.22:6159:uadkcvtn:uo2rzar814ph",
            "104.253.55.119:5549:uadkcvtn:uo2rzar814ph",
            "91.211.87.2:6992:uadkcvtn:uo2rzar814ph",
            "142.111.44.203:5915:uadkcvtn:uo2rzar814ph",
            "191.101.174.88:6136:uadkcvtn:uo2rzar814ph",
            "31.58.26.144:6727:uadkcvtn:uo2rzar814ph",
            "104.232.211.81:5694:uadkcvtn:uo2rzar814ph",
            "104.253.48.76:5500:uadkcvtn:uo2rzar814ph",
            "154.36.85.89:6600:uadkcvtn:uo2rzar814ph",
            "140.99.202.10:5888:uadkcvtn:uo2rzar814ph",
            "45.41.169.227:6888:uadkcvtn:uo2rzar814ph",
            "45.67.0.158:6594:uadkcvtn:uo2rzar814ph",
            "45.150.176.51:5924:uadkcvtn:uo2rzar814ph",
            "104.238.7.43:5970:uadkcvtn:uo2rzar814ph",
            "216.173.75.47:6348:uadkcvtn:uo2rzar814ph",
            "45.39.5.58:6496:uadkcvtn:uo2rzar814ph",
            "46.203.157.176:7119:uadkcvtn:uo2rzar814ph",
            "104.233.20.17:6033:uadkcvtn:uo2rzar814ph",
            "216.74.114.235:6518:uadkcvtn:uo2rzar814ph",
            "142.202.254.167:6145:uadkcvtn:uo2rzar814ph",
            "37.44.219.236:6201:uadkcvtn:uo2rzar814ph",
            "82.24.239.176:7033:uadkcvtn:uo2rzar814ph",
            "104.239.19.194:6871:uadkcvtn:uo2rzar814ph",
            "191.101.181.187:6940:uadkcvtn:uo2rzar814ph",
            "45.39.18.128:6564:uadkcvtn:uo2rzar814ph",
            "103.47.53.151:8449:uadkcvtn:uo2rzar814ph",
            "45.39.17.119:5542:uadkcvtn:uo2rzar814ph",
            "216.173.75.226:6527:uadkcvtn:uo2rzar814ph",
            "45.56.175.4:5678:uadkcvtn:uo2rzar814ph",
            "64.137.89.84:6157:uadkcvtn:uo2rzar814ph",
            "82.21.248.115:6451:uadkcvtn:uo2rzar814ph",
            "198.46.241.44:6579:uadkcvtn:uo2rzar814ph",
            "45.83.57.20:6537:uadkcvtn:uo2rzar814ph",
            "104.239.41.168:6523:uadkcvtn:uo2rzar814ph",
            "64.137.77.92:5527:uadkcvtn:uo2rzar814ph",
            "104.253.82.58:6479:uadkcvtn:uo2rzar814ph",
            "82.23.223.166:8010:uadkcvtn:uo2rzar814ph",
            "185.15.178.90:5774:uadkcvtn:uo2rzar814ph",
            "191.101.174.78:6126:uadkcvtn:uo2rzar814ph",
            "217.69.127.152:6773:uadkcvtn:uo2rzar814ph",
            "38.225.2.55:5838:uadkcvtn:uo2rzar814ph",
            "92.112.136.179:6123:uadkcvtn:uo2rzar814ph",
            "145.223.56.70:7122:uadkcvtn:uo2rzar814ph",
            "38.153.135.81:5461:uadkcvtn:uo2rzar814ph",
            "23.27.210.210:6580:uadkcvtn:uo2rzar814ph"
        ]
        
        self.proxies = []
        self.alive_proxies = []
        self.load_proxies()
    
    def load_proxies(self):
        """加载代理列表"""
        for cred in self.proxy_credentials:
            parts = cred.split(':')
            if len(parts) == 4:
                ip, port, user, password = parts
                proxy_url = f"http://{user}:{password}@{ip}:{port}"
                self.proxies.append({
                    'http': proxy_url,
                    'https': proxy_url,
                    'ip': ip,
                    'port': port,
                    'raw': cred
                })
    
    def test_proxy(self, proxy):
        """测试单个代理"""
        try:
            r = requests.get('https://api.ipify.org?format=json', 
                           proxies=proxy, timeout=8)
            if r.status_code == 200:
                result_ip = r.json().get('ip')
                print(f"✅ {proxy['ip']}:{proxy['port']} - {result_ip}")
                return proxy
            else:
                print(f"❌ {proxy['ip']}:{proxy['port']} - HTTP {r.status_code}")
                return None
        except Exception as e:
            print(f"❌ {proxy['ip']}:{proxy['port']} - {str(e)[:30]}")
            return None
    
    def test_all_proxies(self, max_workers=50):
        """多线程测试所有代理"""
        print(f"[+] 开始测试{len(self.proxies)}个代理（{max_workers}线程）...\n")
        
        with ThreadPoolExecutor(max_workers=max_workers) as executor:
            results = executor.map(self.test_proxy, self.proxies)
        
        self.alive_proxies = [r for r in results if r is not None]
        print(f"\n[+] 测试完成: {len(self.alive_proxies)}/{len(self.proxies)} 可用")
        return self.alive_proxies
    
    def get_random_proxy(self):
        """随机获取一个可用代理"""
        if not self.alive_proxies:
            return random.choice(self.proxies)
        return random.choice(self.alive_proxies)
    
    def export_curl(self, output_file='/tmp/proxies_curl.txt'):
        """导出为curl格式"""
        with open(output_file, 'w') as f:
            for p in self.proxies:
                f.write(f"http://{p['raw'].split(':')[2]}:{p['raw'].split(':')[3]}@{p['ip']}:{p['port']}\n")
        print(f"[+] 已导出curl格式到: {output_file}")
    
    def export_list(self, output_file='/tmp/proxies_list.txt'):
        """导出为IP:PORT:USER:PASS格式"""
        with open(output_file, 'w') as f:
            for p in self.proxies:
                f.write(f"{p['raw']}\n")
        print(f"[+] 已导出列表到: {output_file}")

if __name__ == '__main__':
    pool = ProxyPool()
    
    if len(sys.argv) > 1:
        cmd = sys.argv[1]
        
        if cmd == 'test':
            # 测试所有代理
            pool.test_all_proxies()
        
        elif cmd == 'random':
            # 获取随机代理
            proxy = pool.get_random_proxy()
            print(f"{proxy['http']}")
        
        elif cmd == 'curl':
            # 导出curl格式
            pool.export_curl()
            print("\n使用方式:")
            print("  curl -x $(head -1 /tmp/proxies_curl.txt) https://api.ipify.org")
        
        elif cmd == 'list':
            # 导出完整列表
            pool.export_list()
        
        elif cmd == 'count':
            # 显示数量
            print(f"总计: {len(pool.proxies)} 个代理")
        
        else:
            print("用法:")
            print("  python3 proxy_pool.py test    # 测试所有代理")
            print("  python3 proxy_pool.py random  # 获取随机代理")
            print("  python3 proxy_pool.py curl    # 导出curl格式")
            print("  python3 proxy_pool.py list    # 导出完整列表")
            print("  python3 proxy_pool.py count   # 显示数量")
    else:
        # 默认：测试并显示统计
        print(f"代理池加载完成: {len(pool.proxies)} 个代理")
        print("\n使用示例:")
        print("  测试所有: python3 proxy_pool.py test")
        print("  随机代理: python3 proxy_pool.py random")
