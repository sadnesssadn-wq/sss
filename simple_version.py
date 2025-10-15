#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
简化版本 - 无代理，少线程，用于快速测试
"""
import hashlib, requests, json, time
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")
state = {'found': 0, 'tested': 0, 'orders': [], 'lock': threading.Lock(), 'start_time': time.time()}
print_lock = threading.Lock()

# 实时CSV文件
realtime_csv_file = f"simple_orders_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"
csv_lock = threading.Lock()

def safe_print(msg):
    with print_lock:
        print(f"[{datetime.now().strftime('%H:%M:%S')}] {msg}")

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def is_today(date_str):
    if not date_str:
        return False
    
    date_str = str(date_str)
    today_dd_mm_yyyy = datetime.now().strftime("%d/%m/%Y")
    today_mm_dd_yyyy = datetime.now().strftime("%m/%d/%Y")
    
    return (today_dd_mm_yyyy in date_str or 
            today_mm_dd_yyyy in date_str)

def init_csv():
    """初始化CSV文件"""
    headers = ['运单号', '收件人', '电话', 'COD金额', '运费', '发件日期', '装载日期', '发现时间']
    
    with open(realtime_csv_file, 'w', encoding='utf-8-sig') as f:
        f.write(','.join(headers) + '\n')
    
    safe_print(f"📄 CSV文件: {realtime_csv_file}")

def save_to_csv(order):
    """保存到CSV"""
    with csv_lock:
        try:
            row = [
                order['tracking'],
                order.get('ReceiverName', ''),
                order.get('ReceiverPhone', ''),
                str(order.get('CollectAmount', 0)),
                str(order.get('FeeShip', 0)),
                order.get('IssueDate', ''),
                order.get('LoadDate', ''),
                datetime.now().strftime('%H:%M:%S')
            ]
            
            # 简单CSV格式化
            formatted_row = [f'"{str(item)}"' for item in row]
            
            with open(realtime_csv_file, 'a', encoding='utf-8-sig') as f:
                f.write(','.join(formatted_row) + '\n')
                f.flush()
                
        except Exception as e:
            safe_print(f"❌ CSV保存错误: {e}")

def check_order(tracking):
    """简化版订单检查"""
    try:
        with state['lock']:
            state['tested'] += 1
        
        # 显示进度
        if state['tested'] % 10 == 0:
            elapsed = time.time() - state['start_time']
            speed = state['tested'] / elapsed if elapsed > 0 else 0
            safe_print(f"📊 已扫{state['tested']} | 找到{state['found']} | {speed:.1f}/s")
        
        sig = sign(tracking)
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": PRIVATE_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        
        # 无代理直连，短超时
        response = requests.post(
            f"{API_URL}api/Delivery/Inquiry",
            headers=headers,
            data={"ParcelCode": tracking, "Signature": sig},
            timeout=8
        )
        
        if response.status_code == 200:
            data = response.json()
            if data.get('Code') == '00' and data.get('Value'):
                v = data['Value']
                
                # 检查条件
                delivery_date = v.get('DeliveryDate', '')
                is_delivered = bool(delivery_date)
                
                issue_date = v.get('IssueDate', '')
                load_date = v.get('LoadDate', '')
                is_today_order = is_today(issue_date) or is_today(load_date)
                
                # 当天未配送
                if not is_delivered and is_today_order:
                    order = {
                        'tracking': tracking,
                        'ReceiverName': v.get('ReceiverName', ''),
                        'ReceiverPhone': v.get('ReceiverPhone', ''),
                        'CollectAmount': v.get('CollectAmount', 0),
                        'FeeShip': v.get('FeeShip', 0),
                        'IssueDate': issue_date,
                        'LoadDate': load_date,
                    }
                    
                    with state['lock']:
                        state['found'] += 1
                        state['orders'].append(order)
                    
                    save_to_csv(order)
                    
                    safe_print(f"✅ [{state['found']}] {tracking} | "
                              f"{order['ReceiverName'][:15]} | "
                              f"{order['CollectAmount']:,}₫")
                    
                    return True
        
        return False
        
    except Exception as e:
        if "timeout" in str(e).lower():
            safe_print(f"⏰ 超时: {tracking}")
        else:
            safe_print(f"❌ 错误: {tracking} - {e}")
        return False

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🚀 简化版扫描器 - 快速测试                              ║
╚════════════════════════════════════════════════════════════════════════════╝

⚡ 简化配置:
  • 无代理直连 (更快更稳定)
  • 10线程并发 (避免过载)
  • 小范围测试 (1000个号段)
  • 实时显示进度

🎯 测试范围: 已知有当天订单的区域
📄 保存文件: {realtime_csv_file}
""")
    
    init_csv()
    
    # 小范围测试
    test_ranges = [
        ('EF', 47530800, 47530900, 1),    # 100个
        ('EP', 493018200, 493018400, 1),  # 200个  
        ('EP', 493006800, 493007000, 1),  # 200个
        ('EP', 493011000, 493011200, 1),  # 200个
        ('EP', 492999300, 492999600, 1),  # 300个
    ]
    
    safe_print("🚀 开始测试扫描...")
    start_time = time.time()
    
    # 使用少量线程避免过载
    with ThreadPoolExecutor(max_workers=10) as executor:
        futures = []
        
        for prefix, start, end, step in test_ranges:
            for num in range(start, end, step):
                tracking = f"{prefix}{num:09d}VN"
                futures.append(executor.submit(check_order, tracking))
        
        safe_print(f"📋 提交了 {len(futures)} 个扫描任务")
        
        for future in as_completed(futures):
            try:
                future.result()
            except Exception as e:
                safe_print(f"❌ 任务异常: {e}")
    
    # 结果统计
    elapsed = time.time() - start_time
    safe_print(f"""
\n{'='*60}
🎉 测试完成！
{'='*60}
找到订单: {state['found']} 个
已测试: {state['tested']} 个
成功率: {state['found']/state['tested']*100:.2f}%
耗时: {elapsed:.1f} 秒
速度: {state['tested']/elapsed:.1f} 次/秒

📄 结果文件: {realtime_csv_file}
{'='*60}
""")

if __name__ == "__main__":
    main()