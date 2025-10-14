#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
智能批量查询工具 - 增强版
特点：
1. 实时显示每个API的状态码
2. 检测限流（code 98等）自动换代理
3. 持续重试直到成功
4. 详细的请求日志
"""

import hashlib
import requests
import json
import time
import random
import os
from datetime import datetime

# ============================================
# 配置
# ============================================
API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

proxies = []
proxy_blacklist = set()  # 失效的代理黑名单
proxy_stats = {}  # 代理统计

# 限流错误码（根据实际情况可能需要调整）
RATE_LIMIT_CODES = ["98", "429", "503"]

# ============================================
# 代理池管理
# ============================================

def load_proxies():
    """加载代理列表"""
    global proxies, proxy_stats
    try:
        with open("proxy_list.txt", 'r') as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith('#'):
                    parts = line.split(':')
                    if len(parts) == 4:
                        ip, port, user, pwd = parts
                        proxy_key = f"{ip}:{port}"
                        proxy = {
                            'key': proxy_key,
                            'http': f'http://{user}:{pwd}@{ip}:{port}',
                            'https': f'http://{user}:{pwd}@{ip}:{port}'
                        }
                        proxies.append(proxy)
                        proxy_stats[proxy_key] = {
                            "success": 0,
                            "fail": 0,
                            "rate_limit": 0
                        }
        print(f"✅ 加载 {len(proxies)} 个代理\n")
        return True
    except:
        print("⚠️  无代理文件，使用直连\n")
        return False

def get_working_proxy():
    """获取可用的代理（排除黑名单）"""
    if not proxies:
        return None
    
    # 过滤掉黑名单中的代理
    working_proxies = [p for p in proxies if p['key'] not in proxy_blacklist]
    
    if not working_proxies:
        # 如果所有代理都被拉黑，清空黑名单重新开始
        print("⚠️  所有代理已拉黑，重置黑名单...")
        proxy_blacklist.clear()
        working_proxies = proxies
    
    return random.choice(working_proxies)

def mark_proxy_status(proxy_key, status_type):
    """标记代理状态"""
    if proxy_key and proxy_key in proxy_stats:
        proxy_stats[proxy_key][status_type] += 1
        
        # 如果连续失败太多，加入黑名单
        stats = proxy_stats[proxy_key]
        if stats['rate_limit'] >= 3 or stats['fail'] >= 5:
            proxy_blacklist.add(proxy_key)

# ============================================
# 签名和API调用
# ============================================

def sign(text):
    """生成SHA256签名"""
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def check_rate_limit(response_data):
    """检查是否被限流"""
    if isinstance(response_data, dict):
        code = str(response_data.get('Code', ''))
        message = str(response_data.get('Message', '')).lower()
        
        # 检查错误码
        if code in RATE_LIMIT_CODES:
            return True
        
        # 检查错误消息
        if any(keyword in message for keyword in ['limit', 'too many', 'rate']):
            return True
    
    return False

def call_api_with_status(url, headers, data=None, json_data=None, api_name="API"):
    """
    调用API并实时显示状态
    遇到限流自动换代理重试
    """
    max_attempts = 20  # 最多尝试20次（换20个代理）
    
    for attempt in range(max_attempts):
        proxy = get_working_proxy()
        proxy_key = proxy['key'] if proxy else "直连"
        
        try:
            # 显示请求信息
            print(f"      [{api_name}] 使用代理: {proxy_key[:20]}... ", end="")
            
            if json_data:
                r = requests.post(url, headers=headers, json=json_data,
                                proxies=proxy if proxy else None, timeout=15)
            else:
                r = requests.post(url, headers=headers, data=data,
                                proxies=proxy if proxy else None, timeout=15)
            
            # 显示HTTP状态码
            print(f"HTTP:{r.status_code}", end=" ")
            
            # 解析响应
            if r.status_code == 200:
                response_data = r.json()
                api_code = response_data.get('Code', 'N/A')
                api_message = response_data.get('Message', '')[:30]
                
                print(f"Code:{api_code} {api_message}", end=" ")
                
                # 检查是否限流
                if check_rate_limit(response_data):
                    print(f"⚠️  限流！")
                    if proxy:
                        mark_proxy_status(proxy_key, 'rate_limit')
                    time.sleep(1)
                    continue  # 换代理重试
                
                # 成功
                print(f"✅")
                if proxy:
                    mark_proxy_status(proxy_key, 'success')
                return response_data
            
            else:
                print(f"❌ HTTP错误")
                if proxy:
                    mark_proxy_status(proxy_key, 'fail')
                time.sleep(0.5)
                continue
        
        except requests.exceptions.Timeout:
            print(f"⏱️  超时")
            if proxy:
                mark_proxy_status(proxy_key, 'fail')
            continue
        
        except Exception as e:
            error_msg = str(e)[:30]
            print(f"❌ {error_msg}")
            if proxy:
                mark_proxy_status(proxy_key, 'fail')
            time.sleep(0.5)
            continue
    
    print(f"      [{api_name}] ❌ 尝试{max_attempts}次后失败")
    return None

# ============================================
# 查询函数
# ============================================

def query_tracking_smart(tracking):
    """智能查询 - 实时显示状态"""
    
    sig = sign(tracking)
    
    headers_form = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    headers_json = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/json"
    }
    
    result = {
        "tracking": tracking,
        "valid": False,
        "delivered": False,
        "receiver": "",
        "phone": "",
        "amount": 0,
        "product": "",
        "delivery_date": "",
        "signature": "",
        "instruction": "",
        "issue_date": "",
        "load_date": ""
    }
    
    # ========== API 1: Inquiry ==========
    inquiry = call_api_with_status(
        f"{API_URL}api/Delivery/Inquiry",
        headers_form,
        data={"ParcelCode": tracking, "Signature": sig},
        api_name="Inquiry"
    )
    
    if inquiry and inquiry.get('Value'):
        v = inquiry['Value']
        result['valid'] = True
        # 发件人信息
        result['sender_name'] = v.get('SenderName', '')
        result['sender_address'] = v.get('SenderAddress', '')
        result['sender_phone'] = v.get('SenderPhone', '')
        # 收件人信息
        result['receiver'] = v.get('ReceiverName', '')
        result['receiver_address'] = v.get('ReceiverAddress', '')
        result['phone'] = v.get('ReceiverPhone', '')
        # 金额和费用
        result['amount'] = v.get('CollectAmount', 0)
        result['weight'] = v.get('Weigh', '')
        result['fee_ship'] = v.get('FeeShip', 0)
        result['fee_ppa'] = v.get('FeePPA', 0)
        result['fee_c'] = v.get('FeeC', 0)
        # 时间
        result['issue_date'] = v.get('IssueDate', '')
        result['load_date'] = v.get('LoadDate', '')
    
    # ========== API 2: Journey ==========
    journey = call_api_with_status(
        f"{API_URL}api/Delivery/DeliveryLadingJourney",
        headers_form,
        data={"ParcelCode": tracking},
        api_name="Journey"
    )
    
    if journey and journey.get('ListValue'):
        rec = journey['ListValue'][0]
        result['delivered'] = True
        result['delivery_date'] = rec.get('DeliveryDate', '')
        result['signature'] = rec.get('DeliverySignature', '')
        result['instruction'] = rec.get('Instruction', '')
    
    # ========== API 3: Gateway - 商品 ==========
    gateway = call_api_with_status(
        f"{API_URL}api/Gateway/Bussiness",
        headers_json,
        json_data={"Code": "LDP002", "Data": tracking},
        api_name="Gateway"
    )
    
    if gateway and gateway.get('Data'):
        try:
            products = json.loads(gateway['Data'])
            if products:
                result['product'] = products[0].get('ProductName', '')
        except:
            pass
    
    return result

# ============================================
# 批量查询
# ============================================

def batch_query_smart():
    """智能批量查询"""
    
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                  🔥 智能批量查询工具 - 增强版 🔥                           ║
║                                                                            ║
║  特点:                                                                     ║
║    ✅ 实时显示HTTP状态码                                                  ║
║    ✅ 实时显示API响应码                                                   ║
║    ✅ 检测限流自动换代理                                                  ║
║    ✅ 持续重试直到成功                                                    ║
║    ✅ 详细的请求日志                                                      ║
║    ✅ 代理健康度统计                                                      ║
╚════════════════════════════════════════════════════════════════════════════╝
    """)
    
    # 加载代理
    has_proxy = load_proxies()
    
    if not has_proxy:
        print("⚠️  建议使用代理池以提高稳定性\n")
    
    # 读取运单
    if not os.path.exists("key.txt"):
        print("❌ key.txt 不存在")
        return
    
    with open("key.txt", 'r') as f:
        trackings = [line.strip() for line in f 
                    if line.strip() and not line.startswith('#')]
    
    if not trackings:
        print("❌ key.txt 为空")
        return
    
    print(f"📋 运单数: {len(trackings)}\n")
    print("="*80)
    print("开始查询...\n")
    
    results = []
    start_time = time.time()
    
    for idx, tracking in enumerate(trackings, 1):
        print(f"\n{'='*80}")
        print(f"[{idx}/{len(trackings)}] 🔍 {tracking}")
        print(f"{'='*80}")
        
        info = query_tracking_smart(tracking)
        results.append(info)
        
        # 显示结果摘要
        print(f"\n    📊 结果: ", end="")
        if info['valid']:
            status = "✅ 已配送" if info['delivered'] else "⏳ 未配送"
            print(f"{status}")
            
            # 发件人
            if info['sender_name']:
                print(f"    📤 发件人: {info['sender_name']}")
            if info['sender_phone']:
                print(f"    📞 发件电话: {info['sender_phone']}")
            
            # 收件人
            print(f"    👤 收件人: {info['receiver']}")
            if info['phone']:
                print(f"    📞 收件电话: {info['phone']}")
            
            # 金额和费用
            if info['amount']:
                print(f"    💰 COD金额: {info['amount']:,} VND")
            # 运费 - 即使是0也显示
            print(f"    🚚 运费: {info['fee_ship']} VND")
            if info['fee_ppa']:
                print(f"    💵 PPA费: {info['fee_ppa']} VND")
            if info['fee_c']:
                print(f"    💵 C费: {info['fee_c']} VND")
            if info['weight']:
                print(f"    ⚖️  重量: {info['weight']} g")
            
            # 商品
            if info['product'] and info['product'] != "***":
                print(f"    📦 商品: {info['product']}")
            
            # 时间
            if info['issue_date']:
                print(f"    📅 发件日期: {info['issue_date']}")
            if info['load_date']:
                print(f"    📅 装车日期: {info['load_date']}")
            if info['delivery_date']:
                print(f"    ⏰ 配送时间: {info['delivery_date']}")
        else:
            print(f"❌ 运单无效")
        
        # 小延迟
        time.sleep(0.3)
    
    # 最终统计
    elapsed = time.time() - start_time
    
    print("\n\n" + "="*80)
    print(" "*30 + "📊 查询统计")
    print("="*80)
    
    valid = sum(1 for r in results if r['valid'])
    delivered = sum(1 for r in results if r['delivered'])
    has_product = sum(1 for r in results if r['product'] and r['product'] != "***")
    has_signature = sum(1 for r in results if r['signature'])
    has_phone = sum(1 for r in results if r['phone'])
    
    print(f"\n运单统计:")
    print(f"  总数: {len(trackings)}")
    print(f"  ✅ 有效: {valid} ({valid/len(trackings)*100:.1f}%)")
    print(f"  ✅ 已配送: {delivered}")
    print(f"  ⏳ 未配送: {valid - delivered}")
    print(f"  📦 商品信息: {has_product} ({has_product/valid*100:.0f}%)" if valid > 0 else "")
    print(f"  ✍️  签名照片: {has_signature}")
    print(f"  📞 收件电话: {has_phone}")
    
    print(f"\n性能统计:")
    print(f"  ⏱️  总耗时: {elapsed:.1f}秒")
    print(f"  ⚡ 平均速度: {len(trackings)/elapsed:.2f} 个/秒")
    
    # 代理统计
    if proxies:
        print(f"\n代理池统计:")
        print(f"  总代理数: {len(proxies)}")
        print(f"  黑名单: {len(proxy_blacklist)}")
        
        # 最佳代理 TOP 5
        sorted_proxies = sorted(
            [(k, v) for k, v in proxy_stats.items() if v['success'] > 0],
            key=lambda x: x[1]['success'],
            reverse=True
        )[:5]
        
        if sorted_proxies:
            print(f"\n  🏆 最佳代理 TOP 5:")
            for idx, (proxy_key, stats) in enumerate(sorted_proxies, 1):
                total = stats['success'] + stats['fail'] + stats['rate_limit']
                success_rate = stats['success'] / total * 100 if total > 0 else 0
                print(f"    {idx}. {proxy_key}")
                print(f"       成功: {stats['success']} | 失败: {stats['fail']} | "
                      f"限流: {stats['rate_limit']} | 成功率: {success_rate:.1f}%")
        
        # 最差代理
        worst_proxies = sorted(
            [(k, v) for k, v in proxy_stats.items() if v['rate_limit'] > 0],
            key=lambda x: x[1]['rate_limit'],
            reverse=True
        )[:3]
        
        if worst_proxies:
            print(f"\n  ⚠️  限流最多的代理:")
            for idx, (proxy_key, stats) in enumerate(worst_proxies, 1):
                print(f"    {idx}. {proxy_key} - 限流: {stats['rate_limit']}次")
    
    # 保存结果
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    
    # CSV
    csv_file = f"smart_results_{timestamp}.csv"
    with open(csv_file, 'w', encoding='utf-8') as f:
        f.write("运单号,状态,收件人,收件地址,收件电话,"
                "COD金额,重量,运费,PPA费,C费,商品名称,发件日期,装车日期,配送时间,签名照片,配送指令\n")
        for r in results:
            if r['valid']:
                f.write(f'"{r["tracking"]}",')
                f.write(f'"{"已配送" if r["delivered"] else "未配送"}",')
                f.write(f'"{r["receiver"]}",')
                f.write(f'"{r["receiver_address"]}",')
                f.write(f'"{r["phone"]}",')
                f.write(f'"{r["amount"]}",')
                f.write(f'"{r["weight"]}",')
                f.write(f'"{r["fee_ship"]}",')
                f.write(f'"{r["fee_ppa"]}",')
                f.write(f'"{r["fee_c"]}",')
                f.write(f'"{r["product"]}",')
                f.write(f'"{r["issue_date"]}",')
                f.write(f'"{r["load_date"]}",')
                f.write(f'"{r["delivery_date"]}",')
                f.write(f'"{r["signature"]}",')
                f.write(f'"{r["instruction"]}"\n')
    
    print(f"\n✅ CSV已保存: {csv_file}")
    
    # JSON
    json_file = f"smart_results_{timestamp}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump({
            "query_time": timestamp,
            "total_trackings": len(trackings),
            "valid_trackings": valid,
            "elapsed_seconds": elapsed,
            "proxy_count": len(proxies),
            "blacklisted_proxies": len(proxy_blacklist),
            "results": results,
            "proxy_stats": proxy_stats
        }, f, indent=2, ensure_ascii=False)
    
    print(f"✅ JSON已保存: {json_file}")
    
    # 显示商品清单
    if has_product > 0:
        print("\n" + "="*80)
        print("🔥 获取到的商品信息")
        print("="*80)
        for r in results:
            if r['product'] and r['product'] != "***":
                print(f"  {r['tracking']}")
                print(f"    📦 {r['product']}")
    
    # 显示签名照片
    if has_signature > 0:
        print("\n" + "="*80)
        print("✍️  获取到的签名照片")
        print("="*80)
        for r in results:
            if r['signature']:
                print(f"  {r['tracking']}")
                print(f"    🔗 {r['signature']}")

# ============================================
# 主程序
# ============================================

if __name__ == "__main__":
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🚀 智能批量查询工具 - 实时状态版 🚀                     ║
║                                                                            ║
║  功能说明:                                                                 ║
║    📊 实时显示每个API的HTTP状态码和响应码                                 ║
║    🔄 检测到限流（Code 98等）自动换代理                                   ║
║    ♻️  持续重试直到成功（最多20次）                                        ║
║    📈 代理健康度实时统计                                                  ║
║    🛡️  自动黑名单管理                                                     ║
╚════════════════════════════════════════════════════════════════════════════╝

使用方法:
  python3 batch_smart_proxy.py

配置文件:
  - key.txt: 运单号列表（每行一个）
  - proxy_list.txt: 代理列表（IP:端口:用户:密码）

状态码说明:
  HTTP:200 - HTTP请求成功
  Code:00  - API返回成功
  Code:98  - 限流（会自动换代理）
  Code:01  - 数据不存在
  Code:02  - 其他错误
    """)
    
    batch_query_smart()
    
    print("""
\n{'='*80}
🎉 查询完成！
{'='*80}

📁 生成的文件:
  • smart_results_*.csv - CSV表格（含所有信息）
  • smart_results_*.json - JSON数据（含代理统计）

💡 提示:
  • CSV可用Excel打开查看
  • JSON包含完整的代理使用统计
  • 遇到限流的代理会自动避免使用
    """)
