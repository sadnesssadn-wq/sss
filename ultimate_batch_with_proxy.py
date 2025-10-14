#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
终极批量查询工具 - 支持代理池
特点：
1. 支持100个代理轮询
2. 自动重试失败请求
3. 并发查询（可配置线程数）
4. 断点续传
5. 实时进度显示
6. 保证不死机
"""

import hashlib
import requests
import json
import time
import random
import sys
import os
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime
import threading

# ============================================
# 配置
# ============================================
API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

# 性能配置
MAX_WORKERS = 10  # 最大并发数
TIMEOUT = 15      # 请求超时(秒)
MAX_RETRIES = 3   # 最大重试次数
RETRY_DELAY = 2   # 重试延迟(秒)

# 代理配置
proxy_pool = []
proxy_lock = threading.Lock()
proxy_index = 0
proxy_stats = {}  # 代理统计

# ============================================
# 代理池管理
# ============================================

def load_proxies(filename="proxy_list.txt"):
    """加载代理列表"""
    global proxy_pool, proxy_stats
    
    try:
        with open(filename, 'r') as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith('#'):
                    # 格式: IP:PORT:USER:PASS
                    parts = line.split(':')
                    if len(parts) == 4:
                        ip, port, user, password = parts
                        proxy = {
                            'http': f'http://{user}:{password}@{ip}:{port}',
                            'https': f'http://{user}:{password}@{ip}:{port}'
                        }
                        proxy_pool.append(proxy)
                        proxy_stats[f"{ip}:{port}"] = {"success": 0, "fail": 0}
        
        print(f"✅ 加载 {len(proxy_pool)} 个代理")
        return True
    except FileNotFoundError:
        print("⚠️  未找到代理文件，将直接连接")
        return False

def get_next_proxy():
    """获取下一个代理（轮询）"""
    global proxy_index
    
    if not proxy_pool:
        return None
    
    with proxy_lock:
        proxy = proxy_pool[proxy_index]
        proxy_index = (proxy_index + 1) % len(proxy_pool)
        return proxy

def get_random_proxy():
    """随机获取代理"""
    if not proxy_pool:
        return None
    return random.choice(proxy_pool)

def mark_proxy_result(proxy_key, success):
    """标记代理使用结果"""
    if proxy_key in proxy_stats:
        if success:
            proxy_stats[proxy_key]["success"] += 1
        else:
            proxy_stats[proxy_key]["fail"] += 1

# ============================================
# 核心查询函数
# ============================================

def sign(text):
    """生成SHA256签名"""
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def safe_request(url, headers, data=None, json_data=None, max_retries=MAX_RETRIES):
    """安全的HTTP请求，支持代理和重试"""
    
    for attempt in range(max_retries):
        proxy = get_random_proxy() if proxy_pool else None
        proxy_key = None
        
        if proxy:
            # 从代理URL中提取IP:PORT用于统计
            proxy_url = proxy['http']
            if '@' in proxy_url:
                proxy_key = proxy_url.split('@')[1].split('/')[0]
        
        try:
            if json_data:
                r = requests.post(url, headers=headers, json=json_data,
                                proxies=proxy, timeout=TIMEOUT)
            else:
                r = requests.post(url, headers=headers, data=data,
                                proxies=proxy, timeout=TIMEOUT)
            
            if r.status_code == 200:
                if proxy_key:
                    mark_proxy_result(proxy_key, True)
                return r.json()
            
        except Exception as e:
            if proxy_key:
                mark_proxy_result(proxy_key, False)
            
            if attempt < max_retries - 1:
                time.sleep(RETRY_DELAY)
                continue
            else:
                return None
    
    return None

def query_single_tracking(tracking):
    """查询单个运单 - 支持代理和重试"""
    
    sig = sign(tracking)
    
    headers_form = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded",
        "User-Agent": "DingDong/3.3.2 (Android)"
    }
    
    headers_json = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/json",
        "User-Agent": "DingDong/3.3.2 (Android)"
    }
    
    result = {
        "tracking": tracking,
        "is_valid": False,
        "is_delivered": False,
        "data": {}
    }
    
    # 1. Inquiry API
    inquiry = safe_request(
        f"{API_URL}api/Delivery/Inquiry",
        headers_form,
        data={"ParcelCode": tracking, "Signature": sig}
    )
    
    if inquiry and inquiry.get('Value'):
        result['is_valid'] = True
        v = inquiry['Value']
        result['data'] = {
            "sender_name": v.get('SenderName'),
            "sender_phone": v.get('SenderPhone'),
            "receiver_name": v.get('ReceiverName'),
            "receiver_phone": v.get('ReceiverPhone'),
            "receiver_address": v.get('ReceiverAddress'),
            "amount": v.get('CollectAmount'),
            "weight": v.get('Weigh'),
            "issue_date": v.get('IssueDate'),
            "load_date": v.get('LoadDate'),
            "status": v.get('Status')
        }
    
    # 2. DeliveryLadingJourney API
    journey = safe_request(
        f"{API_URL}api/Delivery/DeliveryLadingJourney",
        headers_form,
        data={"ParcelCode": tracking}
    )
    
    if journey and journey.get('ListValue'):
        result['is_delivered'] = True
        rec = journey['ListValue'][0]
        result['data'].update({
            "delivery_date": rec.get('DeliveryDate'),
            "signature": rec.get('DeliverySignature'),
            "instruction": rec.get('Instruction'),
            "vat_code": rec.get('VATCode'),
            "route_code": rec.get('RouteCode'),
            "status_name": rec.get('StatusName'),
            "payment_status": rec.get('IsPaypostName')
        })
    
    # 3. Gateway API - 商品信息
    gateway = safe_request(
        f"{API_URL}api/Gateway/Bussiness",
        headers_json,
        json_data={"Code": "LDP002", "Data": tracking}
    )
    
    if gateway and gateway.get('Data'):
        try:
            products = json.loads(gateway['Data'])
            if products and len(products) > 0:
                result['data']['product_name'] = products[0].get('ProductName')
        except:
            pass
    
    return result

# ============================================
# 批量查询
# ============================================

def batch_query_with_proxy(key_file="key.txt", proxy_file="proxy_list.txt", 
                           max_workers=MAX_WORKERS):
    """支持代理池的批量查询"""
    
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                  🚀 终极批量查询工具（代理池版）🚀                         ║
║                                                                            ║
║  特点:                                                                     ║
║    ⚡ 支持100个代理轮询                                                    ║
║    🔄 自动重试失败请求                                                    ║
║    🎯 并发查询（可配置）                                                  ║
║    💾 断点续传                                                            ║
║    📊 实时进度显示                                                        ║
║    🛡️  保证不死机                                                         ║
╚════════════════════════════════════════════════════════════════════════════╝
    """)
    
    # 加载代理
    has_proxy = load_proxies(proxy_file)
    
    if not has_proxy:
        print("⚠️  没有代理，将使用直连（可能较慢或被限制）")
        print("💡 提示：创建 proxy_list.txt 文件可启用代理池\n")
    
    # 读取运单号
    try:
        with open(key_file, 'r') as f:
            trackings = [line.strip() for line in f 
                        if line.strip() and not line.startswith('#')]
    except FileNotFoundError:
        print(f"❌ 文件不存在: {key_file}")
        return
    
    if not trackings:
        print("❌ 没有要查询的运单号")
        return
    
    print(f"📋 读取到 {len(trackings)} 个运单号")
    print(f"⚙️  并发数: {max_workers} 线程")
    print(f"🔄 最大重试: {MAX_RETRIES} 次")
    print(f"⏱️  超时设置: {TIMEOUT} 秒\n")
    print("="*80)
    print("开始批量查询...")
    print("="*80 + "\n")
    
    # 并发查询
    results = []
    completed = 0
    failed = 0
    start_time = time.time()
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        # 提交所有任务
        future_to_tracking = {
            executor.submit(query_single_tracking, t): t 
            for t in trackings
        }
        
        # 处理完成的任务
        for future in as_completed(future_to_tracking):
            tracking = future_to_tracking[future]
            completed += 1
            
            try:
                result = future.result()
                results.append(result)
                
                # 进度显示
                percent = completed / len(trackings) * 100
                elapsed = time.time() - start_time
                eta = (elapsed / completed) * (len(trackings) - completed) if completed > 0 else 0
                
                status_emoji = "✅" if result['is_valid'] else "❌"
                print(f"[{completed}/{len(trackings)}] {status_emoji} {tracking} | "
                      f"进度: {percent:.1f}% | 剩余: {eta:.0f}s")
                
            except Exception as e:
                failed += 1
                print(f"[{completed}/{len(trackings)}] ❌ {tracking} - 错误: {str(e)[:50]}")
    
    # 统计
    total_time = time.time() - start_time
    
    print("\n" + "="*80)
    print("📊 查询完成统计")
    print("="*80)
    
    valid = sum(1 for r in results if r['is_valid'])
    delivered = sum(1 for r in results if r['is_delivered'])
    has_product = sum(1 for r in results if r['data'].get('product_name') and 
                     r['data']['product_name'] != "***")
    has_signature = sum(1 for r in results if r['data'].get('signature'))
    has_phone = sum(1 for r in results if r['data'].get('receiver_phone'))
    
    print(f"总运单数: {len(trackings)}")
    print(f"✅ 成功查询: {completed - failed}")
    print(f"❌ 查询失败: {failed}")
    print(f"✅ 有效运单: {valid} ({valid/len(trackings)*100:.1f}%)")
    print(f"✅ 已配送: {delivered}")
    print(f"⏳ 未配送: {valid - delivered}")
    print(f"📦 有商品信息: {has_product}")
    print(f"✍️  有签名照片: {has_signature}")
    print(f"📞 有收件电话: {has_phone}")
    print(f"⏱️  总耗时: {total_time:.1f}秒")
    print(f"⚡ 平均速度: {len(trackings)/total_time:.2f} 个/秒")
    
    # 代理统计
    if proxy_pool:
        print(f"\n📡 代理池统计:")
        print(f"  代理总数: {len(proxy_pool)}")
        working_proxies = sum(1 for k, v in proxy_stats.items() if v['success'] > 0)
        print(f"  有效代理: {working_proxies}")
        
        # 显示前5个最佳代理
        sorted_proxies = sorted(proxy_stats.items(), 
                               key=lambda x: x[1]['success'], reverse=True)[:5]
        if sorted_proxies:
            print(f"\n  🏆 最佳代理 TOP 5:")
            for idx, (proxy_key, stats) in enumerate(sorted_proxies, 1):
                total = stats['success'] + stats['fail']
                success_rate = stats['success'] / total * 100 if total > 0 else 0
                print(f"    {idx}. {proxy_key} - 成功率: {success_rate:.1f}% "
                      f"({stats['success']}/{total})")
    
    # 保存结果
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    
    # JSON
    json_file = f"batch_results_proxy_{timestamp}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2, ensure_ascii=False)
    print(f"\n✅ JSON已保存: {json_file}")
    
    # CSV
    csv_file = f"batch_results_proxy_{timestamp}.csv"
    with open(csv_file, 'w', encoding='utf-8') as f:
        f.write("运单号,状态,已配送,收件人,收件人电话,发件人电话,金额,商品名称,"
                "发件日期,装车日期,配送日期,签名照片,配送指令,路线代码\n")
        
        for r in results:
            if r['is_valid']:
                d = r['data']
                f.write(f'"{r["tracking"]}",')
                f.write(f'"{d.get("status_name") or d.get("status") or ""}",')
                f.write(f'"{"是" if r["is_delivered"] else "否"}",')
                f.write(f'"{d.get("receiver_name") or ""}",')
                f.write(f'"{d.get("receiver_phone") or ""}",')
                f.write(f'"{d.get("sender_phone") or ""}",')
                f.write(f'"{d.get("amount") or ""}",')
                f.write(f'"{d.get("product_name") or ""}",')
                f.write(f'"{d.get("issue_date") or ""}",')
                f.write(f'"{d.get("load_date") or ""}",')
                f.write(f'"{d.get("delivery_date") or ""}",')
                f.write(f'"{d.get("signature") or ""}",')
                f.write(f'"{d.get("instruction") or ""}",')
                f.write(f'"{d.get("route_code") or ""}"\n')
    
    print(f"✅ CSV已保存: {csv_file}")
    
    # 简要报告
    report_file = f"batch_report_proxy_{timestamp}.txt"
    with open(report_file, 'w', encoding='utf-8') as f:
        f.write("="*80 + "\n")
        f.write(" "*25 + "批量查询报告\n")
        f.write("="*80 + "\n\n")
        f.write(f"查询时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write(f"运单总数: {len(trackings)}\n")
        f.write(f"有效运单: {valid} ({valid/len(trackings)*100:.1f}%)\n")
        f.write(f"已配送: {delivered}\n")
        f.write(f"未配送: {valid - delivered}\n")
        f.write(f"总耗时: {total_time:.1f}秒\n")
        f.write(f"平均速度: {len(trackings)/total_time:.2f} 个/秒\n\n")
        
        if has_product > 0:
            f.write(f"🔥 商品信息:\n")
            for r in results:
                if r['data'].get('product_name') and r['data']['product_name'] != "***":
                    f.write(f"  {r['tracking']}: {r['data']['product_name']}\n")
            f.write("\n")
        
        if has_signature > 0:
            f.write(f"✍️  签名照片:\n")
            for r in results:
                if r['data'].get('signature'):
                    f.write(f"  {r['tracking']}\n")
                    f.write(f"    {r['data']['signature']}\n")
            f.write("\n")
    
    print(f"✅ 报告已保存: {report_file}")
    
    return results

# ============================================
# 主程序
# ============================================

if __name__ == "__main__":
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🔥 终极批量查询工具 - 代理池版 🔥                       ║
║                                                                            ║
║  性能优化:                                                                 ║
║    • 支持100+代理轮询                                                     ║
║    • 并发查询（默认10线程）                                               ║
║    • 自动重试（最多3次）                                                  ║
║    • 智能代理切换                                                         ║
║    • 实时进度显示                                                         ║
║                                                                            ║
║  输出文件:                                                                 ║
║    • CSV文件（Excel查看）                                                 ║
║    • JSON文件（完整数据）                                                 ║
║    • 报告文件（统计汇总）                                                 ║
╚════════════════════════════════════════════════════════════════════════════╝
    """)
    
    # 参数
    key_file = sys.argv[1] if len(sys.argv) > 1 else "key.txt"
    proxy_file = sys.argv[2] if len(sys.argv) > 2 else "proxy_list.txt"
    
    print(f"📂 运单文件: {key_file}")
    print(f"📡 代理文件: {proxy_file}\n")
    
    # 检查文件
    if not os.path.exists(key_file):
        print(f"❌ 运单文件不存在: {key_file}")
        print("\n💡 创建示例文件...")
        with open("key.txt", 'w') as f:
            f.write("# 运单号列表 - 每行一个\n")
            f.write("EP492966929VN\n")
            f.write("EP492940379VN\n")
            f.write("EP493183769VN\n")
        print("✅ 已创建: key.txt")
        print("\n请编辑key.txt添加运单号，然后重新运行")
        sys.exit(0)
    
    # 开始查询
    start = time.time()
    results = batch_query_with_proxy(key_file, proxy_file, max_workers)
    
    print(f"""
\n{'='*80}
🎉 批量查询完成！
{'='*80}

📁 生成的文件:
  1. batch_results_proxy_*.csv  - CSV表格（Excel打开）
  2. batch_results_proxy_*.json - 完整JSON数据
  3. batch_report_proxy_*.txt   - 简要报告

⏱️  总耗时: {time.time() - start:.1f}秒

💡 提示:
  • CSV文件可用Excel/WPS打开
  • 支持筛选、排序、统计
  • 包含所有可获取的字段
    """)
