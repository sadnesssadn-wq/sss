#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
验证第一条订单 - 检查前面是否还有更早的
"""

import hashlib
import requests
import json
from datetime import datetime
import time
import os

# ==================== 配置 ====================
API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")

# 代理池
class ProxyPool:
    def __init__(self):
        self.proxies = []
        self.current_index = 0
        
    def parse_proxy(self, proxy_str):
        parts = proxy_str.strip().split(':')
        if len(parts) == 4:
            ip, port, username, password = parts
            return f"http://{username}:{password}@{ip}:{port}"
        return f"http://{proxy_str}"
    
    def load_from_file(self, filename):
        if not os.path.exists(filename):
            return False
        with open(filename, 'r') as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith('#'):
                    proxy_url = self.parse_proxy(line)
                    self.proxies.append({'http': proxy_url, 'https': proxy_url})
        return len(self.proxies) > 0
    
    def get_proxy(self):
        if not self.proxies:
            return None
        proxy = self.proxies[self.current_index]
        self.current_index = (self.current_index + 1) % len(self.proxies)
        return proxy

proxy_pool = ProxyPool()

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def is_today(date_str):
    return TODAY in str(date_str) if date_str else False

def check_order(tracking):
    """检查订单，返回 (is_today, issue_date, order_info)"""
    proxy = proxy_pool.get_proxy()
    
    try:
        sig = sign(tracking)
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": API_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        data = {"ParcelCode": tracking, "Signature": sig}
        
        response = requests.post(API_URL, headers=headers, data=data, proxies=proxy, timeout=10)
        
        if response.status_code == 200:
            result = response.json()
            if result.get('Code') == '00' and result.get('Value'):
                value = result['Value']
                issue_date = value.get('IssueDate', '')
                
                order_info = {
                    'tracking': tracking,
                    'IssueDate': issue_date,
                    'ReceiverName': value.get('ReceiverName', ''),
                    'CollectAmount': value.get('CollectAmount', 0),
                }
                
                return (is_today(issue_date), issue_date, order_info)
        
        return (False, None, None)
    except:
        return (False, None, None)

def verify_first_order(candidate_num, check_count=1000):
    """
    验证候选的第一条订单
    在它前面检查 check_count 个号，看是否还有更早的今日订单
    """
    print(f"\n🔍 验证 EP{candidate_num:09d}VN 是否真的是第一条")
    print(f"策略: 检查它前面 {check_count} 个号\n")
    
    start_num = candidate_num - check_count
    end_num = candidate_num - 1
    
    print(f"检查范围: EP{start_num:09d}VN - EP{end_num:09d}VN\n")
    
    found_earlier = []
    
    for num in range(start_num, end_num + 1):
        tracking = f"EP{num:09d}VN"
        
        is_today_order, issue_date, info = check_order(tracking)
        
        # 每100个显示一次进度
        if (num - start_num + 1) % 100 == 0:
            progress = (num - start_num + 1) * 100 / check_count
            print(f"进度: {num - start_num + 1}/{check_count} ({progress:.0f}%)")
        
        if is_today_order:
            print(f"\n⚠️  发现更早的今日订单: {tracking}")
            print(f"   日期: {issue_date}")
            print(f"   收件人: {info['ReceiverName']}\n")
            found_earlier.append(info)
        
        time.sleep(0.05)  # 避免太快
    
    print("\n" + "=" * 80)
    
    if found_earlier:
        print(f"❌ EP{candidate_num:09d}VN 不是第一条！")
        print(f"\n在它前面发现了 {len(found_earlier)} 条更早的今日订单：\n")
        
        for i, order in enumerate(found_earlier, 1):
            print(f"{i}. {order['tracking']} - {order['ReceiverName']}")
        
        # 找出真正的第一条
        found_earlier.sort(key=lambda x: x['tracking'])
        real_first = found_earlier[0]
        
        print(f"\n真正的第一条应该是: {real_first['tracking']}")
        print("⚠️  建议: 对这个新的第一条再次验证")
        
        return (False, real_first)
    else:
        print(f"✅ 确认 EP{candidate_num:09d}VN 就是第一条！")
        print(f"在它前面 {check_count} 个号中没有找到今日订单")
        
        return (True, None)

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🔍 验证第一条订单                                        ║
╚════════════════════════════════════════════════════════════════════════════╝

📅 今天: {TODAY}
🎯 目标: 验证找到的第一条是否真的是第一条

""")
    
    # 加载代理
    use_proxy = proxy_pool.load_from_file('proxies.txt')
    if use_proxy:
        print(f"✅ 加载了 {len(proxy_pool.proxies)} 个代理\n")
    else:
        print("⚠️  无代理模式\n")
    
    # 从上次扫描结果中读取第一条
    result_files = [f for f in os.listdir('.') if f.startswith('EP_first_') and f.endswith('.json')]
    
    if result_files:
        result_files.sort(reverse=True)
        latest_file = result_files[0]
        
        print(f"📂 读取上次扫描结果: {latest_file}")
        
        with open(latest_file, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        first_order = data.get('first_order')
        
        if first_order:
            tracking = first_order['tracking']
            number = first_order['number']
            
            print(f"\n上次找到的第一条:")
            print(f"运单号: {tracking}")
            print(f"编号: {number}")
            print(f"日期: {first_order['IssueDate']}")
            print(f"收件人: {first_order['ReceiverName']}")
            
            # 验证
            is_confirmed, real_first = verify_first_order(number, check_count=1000)
            
            if not is_confirmed and real_first:
                print("\n" + "=" * 80)
                print("🔄 需要继续验证新找到的第一条")
                print("=" * 80)
                
                # 对新找到的第一条再次验证
                new_number = int(real_first['tracking'][2:11])
                verify_first_order(new_number, check_count=1000)
        else:
            print("\n❌ 文件中没有first_order数据")
    else:
        print("\n❌ 未找到扫描结果文件")
        print("请先运行 find_first_EP_reverse.py")
        print("\n或者手动输入要验证的订单号:")
        
        tracking_input = input("运单号 (例如 EP492999365VN): ").strip()
        
        if tracking_input:
            try:
                number = int(tracking_input[2:11])
                verify_first_order(number, check_count=1000)
            except:
                print("❌ 运单号格式错误")

if __name__ == "__main__":
    main()
