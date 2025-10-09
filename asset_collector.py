#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
资产收集工具 - 集成 FOFA 和 Shodan API
用于合法授权的安全测试和资产发现
"""

import requests
import json
import csv
import base64
import argparse
import sys
from datetime import datetime
from pathlib import Path
from typing import List, Dict, Optional
import time

class AssetCollector:
    """资产收集主类"""
    
    def __init__(self, config_file: str = "config.json"):
        """初始化配置"""
        self.config = self.load_config(config_file)
        self.results = []
        
    def load_config(self, config_file: str) -> Dict:
        """加载配置文件"""
        try:
            with open(config_file, 'r', encoding='utf-8') as f:
                return json.load(f)
        except FileNotFoundError:
            print(f"[!] 配置文件 {config_file} 不存在，请先创建配置文件")
            print("[*] 使用 --init 参数初始化配置文件")
            sys.exit(1)
        except json.JSONDecodeError:
            print(f"[!] 配置文件 {config_file} 格式错误")
            sys.exit(1)
    
    def fofa_search(self, query: str, size: int = 100) -> List[Dict]:
        """
        FOFA 搜索
        :param query: FOFA 查询语句
        :param size: 返回结果数量
        """
        print(f"\n[*] 正在使用 FOFA 搜索: {query}")
        
        fofa_config = self.config.get('fofa', {})
        email = fofa_config.get('email', '')
        key = fofa_config.get('key', '')
        
        if not email or not key:
            print("[!] FOFA API 配置不完整，跳过 FOFA 搜索")
            return []
        
        # FOFA API 端点
        url = "https://fofa.info/api/v1/search/all"
        
        # Base64 编码查询语句
        qbase64 = base64.b64encode(query.encode()).decode()
        
        params = {
            'email': email,
            'key': key,
            'qbase64': qbase64,
            'size': size,
            'fields': 'host,ip,port,protocol,domain,title,country,city,server,banner'
        }
        
        try:
            response = requests.get(url, params=params, timeout=30)
            response.raise_for_status()
            data = response.json()
            
            if not data.get('error'):
                results = data.get('results', [])
                print(f"[+] FOFA 发现 {len(results)} 条资产")
                
                # 格式化结果
                formatted_results = []
                fields = ['host', 'ip', 'port', 'protocol', 'domain', 'title', 'country', 'city', 'server', 'banner']
                
                for item in results:
                    result = {
                        'source': 'FOFA',
                        'query': query,
                        'timestamp': datetime.now().isoformat()
                    }
                    for i, field in enumerate(fields):
                        if i < len(item):
                            result[field] = item[i]
                    formatted_results.append(result)
                
                return formatted_results
            else:
                print(f"[!] FOFA 错误: {data.get('errmsg', 'Unknown error')}")
                return []
                
        except requests.exceptions.RequestException as e:
            print(f"[!] FOFA 请求失败: {e}")
            return []
    
    def shodan_search(self, query: str, limit: int = 100) -> List[Dict]:
        """
        Shodan 搜索
        :param query: Shodan 查询语句
        :param limit: 返回结果数量限制
        """
        print(f"\n[*] 正在使用 Shodan 搜索: {query}")
        
        shodan_config = self.config.get('shodan', {})
        api_key = shodan_config.get('api_key', '')
        
        if not api_key:
            print("[!] Shodan API Key 未配置，跳过 Shodan 搜索")
            return []
        
        url = "https://api.shodan.io/shodan/host/search"
        
        params = {
            'key': api_key,
            'query': query,
            'limit': limit
        }
        
        try:
            response = requests.get(url, params=params, timeout=30)
            response.raise_for_status()
            data = response.json()
            
            matches = data.get('matches', [])
            print(f"[+] Shodan 发现 {len(matches)} 条资产")
            
            # 格式化结果
            formatted_results = []
            for match in matches:
                result = {
                    'source': 'Shodan',
                    'query': query,
                    'timestamp': datetime.now().isoformat(),
                    'ip': match.get('ip_str', ''),
                    'port': match.get('port', ''),
                    'protocol': match.get('transport', ''),
                    'domain': ','.join(match.get('hostnames', [])),
                    'country': match.get('location', {}).get('country_name', ''),
                    'city': match.get('location', {}).get('city', ''),
                    'org': match.get('org', ''),
                    'asn': match.get('asn', ''),
                    'product': match.get('product', ''),
                    'version': match.get('version', ''),
                    'banner': match.get('data', '')[:200]  # 限制长度
                }
                formatted_results.append(result)
            
            return formatted_results
            
        except requests.exceptions.RequestException as e:
            print(f"[!] Shodan 请求失败: {e}")
            return []
    
    def search(self, query: str, engines: List[str] = ['fofa', 'shodan'], size: int = 100):
        """
        执行搜索
        :param query: 搜索查询语句
        :param engines: 搜索引擎列表
        :param size: 结果数量
        """
        print(f"\n{'='*60}")
        print(f"[*] 开始资产收集")
        print(f"[*] 查询语句: {query}")
        print(f"[*] 使用引擎: {', '.join(engines)}")
        print(f"{'='*60}")
        
        all_results = []
        
        if 'fofa' in engines:
            fofa_results = self.fofa_search(query, size)
            all_results.extend(fofa_results)
            time.sleep(1)  # 避免请求过快
        
        if 'shodan' in engines:
            shodan_results = self.shodan_search(query, size)
            all_results.extend(shodan_results)
        
        self.results = all_results
        print(f"\n[+] 总计收集到 {len(all_results)} 条资产信息")
        
        return all_results
    
    def export_json(self, filename: str):
        """导出为 JSON 格式"""
        output_file = f"{filename}.json"
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(self.results, f, ensure_ascii=False, indent=2)
        print(f"[+] 结果已导出到: {output_file}")
    
    def export_csv(self, filename: str):
        """导出为 CSV 格式"""
        if not self.results:
            print("[!] 没有结果可导出")
            return
        
        output_file = f"{filename}.csv"
        
        # 获取所有可能的字段
        all_keys = set()
        for result in self.results:
            all_keys.update(result.keys())
        
        fieldnames = sorted(list(all_keys))
        
        with open(output_file, 'w', encoding='utf-8-sig', newline='') as f:
            writer = csv.DictWriter(f, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(self.results)
        
        print(f"[+] 结果已导出到: {output_file}")
    
    def display_results(self, limit: int = 10):
        """显示结果摘要"""
        if not self.results:
            print("[!] 没有结果")
            return
        
        print(f"\n{'='*60}")
        print(f"[*] 资产摘要 (显示前 {min(limit, len(self.results))} 条)")
        print(f"{'='*60}")
        
        for i, result in enumerate(self.results[:limit], 1):
            print(f"\n[{i}] 来源: {result.get('source', 'Unknown')}")
            print(f"    IP: {result.get('ip', 'N/A')}")
            print(f"    端口: {result.get('port', 'N/A')}")
            print(f"    域名: {result.get('domain', 'N/A')}")
            print(f"    国家/城市: {result.get('country', 'N/A')}/{result.get('city', 'N/A')}")
            if result.get('title'):
                print(f"    标题: {result.get('title', 'N/A')}")


def init_config():
    """初始化配置文件"""
    config = {
        "fofa": {
            "email": "your_fofa_email@example.com",
            "key": "your_fofa_api_key"
        },
        "shodan": {
            "api_key": "your_shodan_api_key"
        }
    }
    
    config_file = "config.json"
    
    if Path(config_file).exists():
        response = input(f"[!] 配置文件 {config_file} 已存在，是否覆盖? (y/N): ")
        if response.lower() != 'y':
            print("[*] 取消操作")
            return
    
    with open(config_file, 'w', encoding='utf-8') as f:
        json.dump(config, f, ensure_ascii=False, indent=2)
    
    print(f"[+] 配置文件已创建: {config_file}")
    print("[*] 请编辑配置文件，填入你的 API keys")


def main():
    parser = argparse.ArgumentParser(
        description='资产收集工具 - 集成 FOFA 和 Shodan',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
示例:
  # 初始化配置文件
  python asset_collector.py --init
  
  # 使用 FOFA 和 Shodan 搜索
  python asset_collector.py -q "apache" -e fofa shodan -s 50
  
  # 只使用 FOFA 搜索
  python asset_collector.py -q 'domain="example.com"' -e fofa
  
  # 导出结果
  python asset_collector.py -q "nginx" -o results --json --csv
        '''
    )
    
    parser.add_argument('--init', action='store_true', help='初始化配置文件')
    parser.add_argument('-q', '--query', type=str, help='搜索查询语句')
    parser.add_argument('-e', '--engines', nargs='+', choices=['fofa', 'shodan'], 
                       default=['fofa', 'shodan'], help='选择搜索引擎 (默认: fofa shodan)')
    parser.add_argument('-s', '--size', type=int, default=100, help='结果数量 (默认: 100)')
    parser.add_argument('-c', '--config', type=str, default='config.json', help='配置文件路径')
    parser.add_argument('-o', '--output', type=str, help='输出文件名前缀')
    parser.add_argument('--json', action='store_true', help='导出为 JSON 格式')
    parser.add_argument('--csv', action='store_true', help='导出为 CSV 格式')
    parser.add_argument('--display', type=int, default=10, help='显示结果数量 (默认: 10)')
    
    args = parser.parse_args()
    
    # 初始化配置
    if args.init:
        init_config()
        return
    
    # 检查必需参数
    if not args.query:
        parser.print_help()
        print("\n[!] 错误: 需要提供查询语句 (-q/--query)")
        sys.exit(1)
    
    # 执行搜索
    collector = AssetCollector(args.config)
    collector.search(args.query, args.engines, args.size)
    
    # 显示结果
    collector.display_results(args.display)
    
    # 导出结果
    if args.output:
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        output_name = f"{args.output}_{timestamp}"
        
        if args.json:
            collector.export_json(output_name)
        
        if args.csv:
            collector.export_csv(output_name)
        
        # 如果没有指定格式，默认导出两种格式
        if not args.json and not args.csv:
            collector.export_json(output_name)
            collector.export_csv(output_name)


if __name__ == "__main__":
    main()
