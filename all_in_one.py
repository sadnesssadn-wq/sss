#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
一站式查询工具 - 同时获取所有信息
"""

import hashlib
import requests
import json
import sys
from concurrent.futures import ThreadPoolExecutor

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def get_complete_info(tracking):
    """一次性获取所有信息 - 并行调用4个API"""
    
    print(f"\n{'='*80}")
    print(f"🔍 查询: {tracking}")
    print(f"{'='*80}")
    
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
    
    # 并行调用所有API
    def call_api(api_info):
        try:
            if api_info['type'] == 'form':
                r = requests.post(api_info['url'], headers=headers_form, 
                                data=api_info['data'], timeout=10)
            else:
                r = requests.post(api_info['url'], headers=headers_json,
                                json=api_info['data'], timeout=10)
            return api_info['name'], r.json()
        except:
            return api_info['name'], None
    
    apis = [
        {
            'name': 'inquiry',
            'url': f"{API_URL}api/Delivery/Inquiry",
            'data': {"ParcelCode": tracking, "Signature": sig},
            'type': 'form'
        },
        {
            'name': 'journey',
            'url': f"{API_URL}api/Delivery/DeliveryLadingJourney",
            'data': {"ParcelCode": tracking},
            'type': 'form'
        },
        {
            'name': 'gateway',
            'url': f"{API_URL}api/Gateway/Bussiness",
            'data': {"Code": "LDP002", "Data": tracking},
            'type': 'json'
        },
        {
            'name': 'track',
            'url': f"{API_URL}api/TrackTrace/Lading",
            'data': {"LadingCode": tracking, "Signature": sig},
            'type': 'form'
        }
    ]
    
    print("⏳ 并行调用 4 个 API...", end=" ")
    
    with ThreadPoolExecutor(max_workers=4) as executor:
        futures = [executor.submit(call_api, api) for api in apis]
        results = {}
        for future in futures:
            name, data = future.result()
            results[name] = data
    
    print("✅\n")
    
    # ============================================
    # 整合并显示所有信息
    # ============================================
    
    # 基本状态
    print("【基本状态】")
    is_valid = False
    is_delivered = False
    status_code = None
    status_name = None
    
    if results['inquiry'] and results['inquiry'].get('Value'):
        is_valid = True
        status_code = results['inquiry']['Value'].get('Status')
    
    if results['journey'] and results['journey'].get('ListValue'):
        is_delivered = True
        status_name = results['journey']['ListValue'][0].get('StatusName')
    
    print(f"  运单号: {tracking}")
    print(f"  有效性: {'✅ 有效' if is_valid else '❌ 无效/不存在'}")
    print(f"  配送状态: {'✅ 已配送' if is_delivered else '⏳ 未配送'}")
    if status_code:
        print(f"  状态码: {status_code}")
    if status_name:
        print(f"  状态名称: {status_name}")
    
    # 发件人
    if results['inquiry'] and results['inquiry'].get('Value'):
        v = results['inquiry']['Value']
        if v.get('SenderName'):
            print(f"\n【发件人】")
            print(f"  姓名: {v.get('SenderName')}")
            print(f"  地址: {v.get('SenderAddress')}")
            print(f"  电话: {v.get('SenderPhone') or 'N/A'}")
    
    # 收件人
    receiver_name = None
    receiver_address = None
    receiver_phone = None
    
    if results['inquiry'] and results['inquiry'].get('Value'):
        v = results['inquiry']['Value']
        receiver_name = v.get('ReceiverName')
        receiver_address = v.get('ReceiverAddress')
        receiver_phone = v.get('ReceiverPhone')
    
    if results['journey'] and results['journey'].get('ListValue'):
        rec = results['journey']['ListValue'][0]
        receiver_name = receiver_name or rec.get('ReceiverName')
        receiver_address = receiver_address or rec.get('ReceiverAddress')
    
    if receiver_name:
        print(f"\n【收件人】")
        print(f"  姓名: {receiver_name}")
        print(f"  地址: {receiver_address}")
        print(f"  电话: {receiver_phone or 'N/A'}")
    
    # 时间信息
    times = {}
    if results['inquiry'] and results['inquiry'].get('Value'):
        v = results['inquiry']['Value']
        if v.get('IssueDate'):
            times['issue'] = v['IssueDate']
        if v.get('LoadDate'):
            times['load'] = v['LoadDate']
    
    if results['journey'] and results['journey'].get('ListValue'):
        rec = results['journey']['ListValue'][0]
        if rec.get('DeliveryDate'):
            times['delivery'] = rec['DeliveryDate']
    
    if times:
        print(f"\n【时间信息】")
        if 'issue' in times:
            print(f"  📅 发件日期: {times['issue']}")
        if 'load' in times:
            print(f"  📅 装车日期: {times['load']}")
        if 'delivery' in times:
            print(f"  📅 配送日期: {times['delivery']}")
    
    # 金额信息
    amount = None
    if results['inquiry'] and results['inquiry'].get('Value'):
        amount = results['inquiry']['Value'].get('CollectAmount')
    if not amount and results['journey'] and results['journey'].get('ListValue'):
        amount = results['journey']['ListValue'][0].get('CollectAmount')
    
    if amount:
        print(f"\n【金额信息】")
        print(f"  💰 COD金额: {amount:,} VND (~{int(amount/3400)} CNY)")
        
        if results['inquiry'] and results['inquiry'].get('Value'):
            v = results['inquiry']['Value']
            weight = v.get('Weigh')
            if weight:
                print(f"  ⚖️  重量: {weight} g")
    
    # 🔥 商品信息
    if results['gateway'] and results['gateway'].get('Data'):
        try:
            products = json.loads(results['gateway']['Data'])
            print(f"\n【商品信息】🔥")
            for idx, p in enumerate(products, 1):
                print(f"  商品 {idx}:")
                print(f"    📦 名称: {p.get('ProductName', 'N/A')}")
                if p.get('Quantity'):
                    print(f"    📊 数量: {p['Quantity']}")
                if p.get('UnitName'):
                    print(f"    📏 单位: {p['UnitName']}")
                if p.get('Weight'):
                    print(f"    ⚖️  重量: {p['Weight']} g")
                if p.get('Price'):
                    print(f"    💵 单价: {p['Price']:,} VND")
        except:
            pass
    
    # 🔥 配送详情（配送指令）
    if results['journey'] and results['journey'].get('ListValue'):
        rec = results['journey']['ListValue'][0]
        
        print(f"\n【配送详情】")
        if rec.get('DeliveryDate'):
            print(f"  ⏰ 配送时间: {rec['DeliveryDate']}")
        if rec.get('RouteCode'):
            print(f"  🚚 路线代码: {rec['RouteCode']}")
        if rec.get('DeliveryPOCode'):
            print(f"  🏢 配送邮局: {rec['DeliveryPOCode']}")
        if rec.get('IsPaypostName'):
            print(f"  💳 支付状态: {rec['IsPaypostName']}")
        
        # 配送指令 🔥🔥🔥
        if rec.get('Instruction'):
            print(f"\n  📝 配送指令:")
            print(f"     「{rec['Instruction']}」")
        
        # 服务类型
        if rec.get('VATCode'):
            print(f"\n  🏷️  服务类型: {rec['VATCode']}")
        
        if rec.get('ReasonName'):
            print(f"  ❌ 失败原因: {rec['ReasonName']}")
        if rec.get('SolutionName'):
            print(f"  💡 解决方案: {rec['SolutionName']}")
    
    # 🔥 签名照片
    if results['journey'] and results['journey'].get('ListValue'):
        rec = results['journey']['ListValue'][0]
        if rec.get('DeliverySignature'):
            print(f"\n【媒体文件】🔥")
            print(f"  ✍️  签名照片: {rec['DeliverySignature']}")
    
    # 状态历史
    if results['track'] and results['track'].get('Value'):
        v = results['track']['Value']
        if v.get('ListStatus'):
            print(f"\n【状态历史】")
            for idx, status in enumerate(v['ListStatus'], 1):
                print(f"  {idx}. {status.get('StatusMessage', '').strip()}")
                print(f"     时间: {status.get('StatusDate')} {status.get('StatusTime')}")
                print(f"     邮局: {status.get('POName')}")
    
    # 返回原始数据
    return {
        "tracking": tracking,
        "is_valid": is_valid,
        "is_delivered": is_delivered,
        "inquiry": results['inquiry'],
        "journey": results['journey'],
        "gateway": results['gateway'],
        "track": results['track']
    }

# ============================================
# 主程序
# ============================================

if __name__ == "__main__":
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                     🚀 一站式包裹查询工具 🚀                               ║
║                                                                            ║
║  🔥 同时调用 4 个 API，获取最完整信息：                                    ║
║     1. Inquiry - 基本信息、联系方式、时间                                  ║
║     2. DeliveryJourney - 配送详情、签名照片、配送指令                      ║
║     3. Gateway/Bussiness - 商品名称                                        ║
║     4. TrackTrace - 状态历史                                               ║
║                                                                            ║
║  📊 输出: 格式化展示 + JSON文件                                            ║
╚════════════════════════════════════════════════════════════════════════════╝
    """)
    
    if len(sys.argv) < 2:
        print("使用方法:")
        print("  python all_in_one.py <运单号1> [运单号2] [运单号3] ...")
        print("\n示例:")
        print("  python all_in_one.py EP492966929VN")
        print("  python all_in_one.py EP492966929VN EP492940379VN EP493183769VN")
        sys.exit(1)
    
    tracking_list = sys.argv[1:]
    
    print(f"📋 待查询: {len(tracking_list)} 个运单\n")
    
    all_results = []
    
    for idx, tracking in enumerate(tracking_list, 1):
        print(f"\n[{idx}/{len(tracking_list)}]", end=" ")
        result = get_complete_info(tracking)
        all_results.append(result)
        print("\n" + "-"*80)
    
    # 统计
    print("\n" + "="*80)
    print("📊 查询统计")
    print("="*80)
    
    valid = sum(1 for r in all_results if r['is_valid'])
    delivered = sum(1 for r in all_results if r['is_delivered'])
    
    print(f"总计: {len(tracking_list)} 个")
    print(f"✅ 有效: {valid} 个")
    print(f"✅ 已配送: {delivered} 个")
    print(f"⏳ 未配送: {valid - delivered} 个")
    
    # 导出JSON
    filename = f"query_results_{tracking_list[0]}_{len(tracking_list)}items.json"
    with open(filename, "w", encoding="utf-8") as f:
        json.dump(all_results, f, indent=2, ensure_ascii=False)
    
    print(f"\n✅ 完整JSON数据已保存: {filename}")
    
    print("""
\n📝 获取的信息包括:
  ✅ 发件人: 姓名、地址、电话
  ✅ 收件人: 姓名、地址、电话
  ✅ 时间: 发件、装车、配送日期
  ✅ 金额: COD金额、各项费用
  ✅ 商品: 商品名称（如果有）
  ✅ 配送指令: 配送说明（已配送包裹）
  ✅ 签名照片: URL链接（已配送包裹）
  ✅ 状态历史: 完整轨迹
    """)
