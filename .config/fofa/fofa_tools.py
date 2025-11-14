#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Fofa API 高级工具集
更新日期: 2025-11-04
会员类型: 高级会员
"""

import requests
import base64
import json
import sys
from urllib.parse import quote

# Fofa API 配置
FOFA_EMAIL = "user@example.com"
FOFA_KEY = "b527aaeb14874660d2df8de6f848a071"
FOFA_API = "https://fofa.info/api/v1/search/all"

def fofa_search(query, size=100, page=1, fields="host,ip,port,title,country,city"):
    """
    Fofa 搜索
    :param query: 搜索语句
    :param size: 返回数量
    :param page: 页码
    :param fields: 返回字段
    """
    query_base64 = base64.b64encode(query.encode()).decode()
    
    params = {
        'email': FOFA_EMAIL,
        'key': FOFA_KEY,
        'qbase64': query_base64,
        'size': size,
        'page': page,
        'fields': fields
    }
    
    try:
        resp = requests.get(FOFA_API, params=params, timeout=30)
        return resp.json()
    except Exception as e:
        return {"error": True, "errmsg": str(e)}

def format_results(data):
    """格式化输出结果"""
    if data.get('error'):
        print(f"[❌] 错误: {data.get('errmsg', 'Unknown error')}")
        return
    
    print(f"[✅] 查询成功")
    print(f"[*] 总数: {data.get('size', 0)}")
    print(f"[*] 当前页: {data.get('page', 1)}")
    print(f"[*] 消耗F点: {data.get('consumed_fpoint', 0)}")
    print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
    
    results = data.get('results', [])
    if not results:
        print("[!] 未找到结果")
        return
    
    for idx, item in enumerate(results, 1):
        print(f"\n[{idx}] {item[0]}")
        print(f"    IP: {item[1]}")
        print(f"    端口: {item[2]}")
        if len(item) > 3:
            print(f"    标题: {item[3]}")
        if len(item) > 4:
            print(f"    国家: {item[4]}")
        if len(item) > 5:
            print(f"    城市: {item[5]}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("用法: python3 fofa_tools.py \"搜索语句\" [数量]")
        print("\n示例:")
        print('  python3 fofa_tools.py "domain=baidu.com"')
        print('  python3 fofa_tools.py "title=后台管理" 50')
        sys.exit(1)
    
    query = sys.argv[1]
    size = int(sys.argv[2]) if len(sys.argv) > 2 else 100
    
    print(f"[*] 搜索语句: {query}")
    print(f"[*] 数量限制: {size}")
    print("[*] 查询中...\n")
    
    data = fofa_search(query, size=size)
    format_results(data)
