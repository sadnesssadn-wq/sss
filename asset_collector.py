#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
资产收集工具 - 集成 FOFA 和 Shodan API
支持多种查询方式和结果导出
"""

import requests
import json
import base64
import time
import argparse
from datetime import datetime
from typing import List, Dict, Optional
import csv


class FOFACollector:
    """FOFA API 资产收集器"""
    
    def __init__(self, email: str, api_key: str):
        self.email = email
        self.api_key = api_key
        self.base_url = "https://fofa.info/api/v1/search/all"
        
    def search(self, query: str, size: int = 100, fields: str = "host,ip,port,title,domain,protocol") -> Dict:
        """
        执行 FOFA 搜索
        
        Args:
            query: FOFA 查询语句
            size: 返回结果数量（最大10000）
            fields: 返回字段，逗号分隔
            
        Returns:
            搜索结果字典
        """
        try:
            # Base64 编码查询语句
            qbase64 = base64.b64encode(query.encode()).decode()
            
            params = {
                'email': self.email,
                'key': self.api_key,
                'qbase64': qbase64,
                'size': size,
                'fields': fields,
                'full': 'true'
            }
            
            print(f"[FOFA] 正在查询: {query}")
            response = requests.get(self.base_url, params=params, timeout=30)
            
            if response.status_code == 200:
                data = response.json()
                if data.get('error'):
                    print(f"[FOFA] 错误: {data.get('errmsg', '未知错误')}")
                    return {'results': [], 'size': 0}
                
                # 解析结果
                results = []
                field_list = fields.split(',')
                
                for item in data.get('results', []):
                    result = {}
                    for i, field in enumerate(field_list):
                        result[field] = item[i] if i < len(item) else None
                    results.append(result)
                
                print(f"[FOFA] 找到 {len(results)} 条结果")
                return {
                    'results': results,
                    'size': data.get('size', 0),
                    'query': query
                }
            else:
                print(f"[FOFA] HTTP 错误: {response.status_code}")
                return {'results': [], 'size': 0}
                
        except Exception as e:
            print(f"[FOFA] 异常: {str(e)}")
            return {'results': [], 'size': 0}


class ShodanCollector:
    """Shodan API 资产收集器"""
    
    def __init__(self, api_key: str):
        self.api_key = api_key
        self.base_url = "https://api.shodan.io"
        
    def search(self, query: str, limit: int = 100) -> Dict:
        """
        执行 Shodan 搜索
        
        Args:
            query: Shodan 查询语句
            limit: 返回结果数量
            
        Returns:
            搜索结果字典
        """
        try:
            url = f"{self.base_url}/shodan/host/search"
            params = {
                'key': self.api_key,
                'query': query,
                'limit': limit
            }
            
            print(f"[Shodan] 正在查询: {query}")
            response = requests.get(url, params=params, timeout=30)
            
            if response.status_code == 200:
                data = response.json()
                results = []
                
                for match in data.get('matches', []):
                    result = {
                        'ip': match.get('ip_str'),
                        'port': match.get('port'),
                        'transport': match.get('transport'),
                        'domain': ','.join(match.get('hostnames', [])),
                        'org': match.get('org', ''),
                        'os': match.get('os', ''),
                        'product': match.get('product', ''),
                        'version': match.get('version', ''),
                        'data': match.get('data', '')[:200],  # 截取前200字符
                        'timestamp': match.get('timestamp', '')
                    }
                    results.append(result)
                
                print(f"[Shodan] 找到 {len(results)} 条结果（总计 {data.get('total', 0)} 条）")
                return {
                    'results': results,
                    'total': data.get('total', 0),
                    'query': query
                }
            else:
                print(f"[Shodan] HTTP 错误: {response.status_code} - {response.text}")
                return {'results': [], 'total': 0}
                
        except Exception as e:
            print(f"[Shodan] 异常: {str(e)}")
            return {'results': [], 'total': 0}
    
    def host_info(self, ip: str) -> Optional[Dict]:
        """
        获取指定 IP 的详细信息
        
        Args:
            ip: 目标 IP 地址
            
        Returns:
            主机信息字典
        """
        try:
            url = f"{self.base_url}/shodan/host/{ip}"
            params = {'key': self.api_key}
            
            print(f"[Shodan] 查询主机信息: {ip}")
            response = requests.get(url, params=params, timeout=30)
            
            if response.status_code == 200:
                return response.json()
            else:
                print(f"[Shodan] 主机查询失败: {response.status_code}")
                return None
                
        except Exception as e:
            print(f"[Shodan] 主机查询异常: {str(e)}")
            return None


class AssetCollector:
    """资产收集管理器"""
    
    def __init__(self, fofa_email: str = None, fofa_key: str = None, 
                 shodan_key: str = None):
        self.fofa = FOFACollector(fofa_email, fofa_key) if fofa_email and fofa_key else None
        self.shodan = ShodanCollector(shodan_key) if shodan_key else None
        self.results = {
            'fofa': [],
            'shodan': [],
            'timestamp': datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        }
        
    def collect_fofa(self, query: str, size: int = 100):
        """从 FOFA 收集资产"""
        if not self.fofa:
            print("[错误] FOFA API 未配置")
            return
        
        result = self.fofa.search(query, size)
        self.results['fofa'].extend(result.get('results', []))
        
    def collect_shodan(self, query: str, limit: int = 100):
        """从 Shodan 收集资产"""
        if not self.shodan:
            print("[错误] Shodan API 未配置")
            return
        
        result = self.shodan.search(query, limit)
        self.results['shodan'].extend(result.get('results', []))
        
    def export_json(self, filename: str = None):
        """导出为 JSON 格式"""
        if not filename:
            filename = f"assets_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(self.results, f, ensure_ascii=False, indent=2)
        
        print(f"\n[导出] JSON 文件已保存: {filename}")
        
    def export_csv(self, filename: str = None):
        """导出为 CSV 格式"""
        if not filename:
            filename = f"assets_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
        
        all_assets = []
        
        # 处理 FOFA 结果
        for item in self.results.get('fofa', []):
            asset = {
                'source': 'FOFA',
                'ip': item.get('ip', ''),
                'host': item.get('host', ''),
                'port': item.get('port', ''),
                'domain': item.get('domain', ''),
                'title': item.get('title', ''),
                'protocol': item.get('protocol', ''),
            }
            all_assets.append(asset)
        
        # 处理 Shodan 结果
        for item in self.results.get('shodan', []):
            asset = {
                'source': 'Shodan',
                'ip': item.get('ip', ''),
                'host': '',
                'port': item.get('port', ''),
                'domain': item.get('domain', ''),
                'title': item.get('product', ''),
                'protocol': item.get('transport', ''),
                'org': item.get('org', ''),
                'os': item.get('os', '')
            }
            all_assets.append(asset)
        
        if all_assets:
            with open(filename, 'w', encoding='utf-8', newline='') as f:
                writer = csv.DictWriter(f, fieldnames=all_assets[0].keys())
                writer.writeheader()
                writer.writerows(all_assets)
            
            print(f"[导出] CSV 文件已保存: {filename}")
        else:
            print("[警告] 没有数据可导出")
    
    def print_summary(self):
        """打印摘要信息"""
        print("\n" + "="*60)
        print("资产收集摘要")
        print("="*60)
        print(f"收集时间: {self.results['timestamp']}")
        print(f"FOFA 结果: {len(self.results.get('fofa', []))} 条")
        print(f"Shodan 结果: {len(self.results.get('shodan', []))} 条")
        print(f"总计: {len(self.results.get('fofa', [])) + len(self.results.get('shodan', []))} 条")
        print("="*60)


def main():
    parser = argparse.ArgumentParser(
        description='资产收集工具 - 集成 FOFA 和 Shodan API',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
示例:
  # 使用 FOFA 搜索
  python asset_collector.py --fofa --query 'domain="example.com"' --output results.json
  
  # 使用 Shodan 搜索
  python asset_collector.py --shodan --query 'org:"Example Inc"' --output results.csv
  
  # 同时使用两个平台
  python asset_collector.py --both --query 'apache' --limit 50
        """
    )
    
    parser.add_argument('--fofa-email', help='FOFA 账号邮箱')
    parser.add_argument('--fofa-key', help='FOFA API Key')
    parser.add_argument('--shodan-key', help='Shodan API Key')
    parser.add_argument('--query', '-q', required=True, help='查询语句')
    parser.add_argument('--fofa', action='store_true', help='使用 FOFA')
    parser.add_argument('--shodan', action='store_true', help='使用 Shodan')
    parser.add_argument('--both', action='store_true', help='同时使用 FOFA 和 Shodan')
    parser.add_argument('--limit', type=int, default=100, help='返回结果数量（默认100）')
    parser.add_argument('--output', '-o', help='输出文件名')
    parser.add_argument('--format', choices=['json', 'csv'], default='json', help='输出格式（默认json）')
    
    args = parser.parse_args()
    
    # 尝试从环境变量或配置文件读取 API 密钥
    try:
        from config import FOFA_EMAIL, FOFA_KEY, SHODAN_KEY
        fofa_email = args.fofa_email or FOFA_EMAIL
        fofa_key = args.fofa_key or FOFA_KEY
        shodan_key = args.shodan_key or SHODAN_KEY
    except ImportError:
        fofa_email = args.fofa_email
        fofa_key = args.fofa_key
        shodan_key = args.shodan_key
    
    # 初始化收集器
    collector = AssetCollector(fofa_email, fofa_key, shodan_key)
    
    # 执行收集
    if args.both or args.fofa:
        collector.collect_fofa(args.query, args.limit)
    
    if args.both or args.shodan:
        collector.collect_shodan(args.query, args.limit)
    
    # 打印摘要
    collector.print_summary()
    
    # 导出结果
    if args.format == 'json':
        collector.export_json(args.output)
    else:
        collector.export_csv(args.output)


if __name__ == "__main__":
    main()
