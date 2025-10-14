#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
从文件批量查询工具
支持从 key.txt 或任意文本文件读取运单号列表
"""

import hashlib
import requests
import json
import sys
import os
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def query_tracking(tracking):
    """查询单个运单号 - 并行调用4个API"""
    
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
        {'name': 'inquiry', 'url': f"{API_URL}api/Delivery/Inquiry",
         'data': {"ParcelCode": tracking, "Signature": sig}, 'type': 'form'},
        {'name': 'journey', 'url': f"{API_URL}api/Delivery/DeliveryLadingJourney",
         'data': {"ParcelCode": tracking}, 'type': 'form'},
        {'name': 'gateway', 'url': f"{API_URL}api/Gateway/Bussiness",
         'data': {"Code": "LDP002", "Data": tracking}, 'type': 'json'},
        {'name': 'track', 'url': f"{API_URL}api/TrackTrace/Lading",
         'data': {"LadingCode": tracking, "Signature": sig}, 'type': 'form'}
    ]
    
    with ThreadPoolExecutor(max_workers=4) as executor:
        futures = [executor.submit(call_api, api) for api in apis]
        results = {}
        for future in futures:
            name, data = future.result()
            results[name] = data
    
    # 提取关键信息
    info = {
        "tracking": tracking,
        "is_valid": False,
        "is_delivered": False,
        "sender": None,
        "receiver": None,
        "receiver_phone": None,
        "amount": None,
        "product": None,
        "delivery_date": None,
        "issue_date": None,
        "load_date": None,
        "signature": None,
        "instruction": None,
        "vat_code": None,
        "route_code": None,
        "status": None
    }
    
    # 从Inquiry提取
    if results['inquiry'] and results['inquiry'].get('Value'):
        info['is_valid'] = True
        v = results['inquiry']['Value']
        info['sender'] = v.get('SenderName')
        info['receiver'] = v.get('ReceiverName')
        info['receiver_phone'] = v.get('ReceiverPhone')
        info['amount'] = v.get('CollectAmount')
        info['issue_date'] = v.get('IssueDate')
        info['load_date'] = v.get('LoadDate')
        info['status'] = v.get('Status')
    
    # 从Journey提取
    if results['journey'] and results['journey'].get('ListValue'):
        info['is_delivered'] = True
        rec = results['journey']['ListValue'][0]
        info['receiver'] = info['receiver'] or rec.get('ReceiverName')
        info['amount'] = info['amount'] or rec.get('CollectAmount')
        info['delivery_date'] = rec.get('DeliveryDate')
        info['signature'] = rec.get('DeliverySignature')
        info['instruction'] = rec.get('Instruction')
        info['vat_code'] = rec.get('VATCode')
        info['route_code'] = rec.get('RouteCode')
        info['status'] = rec.get('StatusName')
    
    # 从Gateway提取商品
    if results['gateway'] and results['gateway'].get('Data'):
        try:
            products = json.loads(results['gateway']['Data'])
            if products and len(products) > 0:
                info['product'] = products[0].get('ProductName')
        except:
            pass
    
    return info

def read_trackings_from_file(filename):
    """从文件读取运单号列表"""
    
    if not os.path.exists(filename):
        print(f"❌ 文件不存在: {filename}")
        return []
    
    trackings = []
    
    with open(filename, 'r', encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            # 跳过空行和注释
            if line and not line.startswith('#'):
                trackings.append(line)
    
    return trackings

def batch_query_from_file(filename, export_csv=True):
    """从文件批量查询"""
    
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                    📂 从文件批量查询工具 📂                                ║
║  从文件读取运单号，批量查询所有信息                                        ║
╚════════════════════════════════════════════════════════════════════════════╝
""")
    
    print(f"📂 读取文件: {filename}")
    
    trackings = read_trackings_from_file(filename)
    
    if not trackings:
        print("❌ 文件为空或无有效运单号")
        return
    
    print(f"✅ 读取到 {len(trackings)} 个运单号\n")
    print("="*80)
    
    all_results = []
    
    for idx, tracking in enumerate(trackings, 1):
        print(f"\n[{idx}/{len(trackings)}] 查询: {tracking}", end=" ... ")
        
        info = query_tracking(tracking)
        all_results.append(info)
        
        # 简要显示
        if info['is_valid']:
            status = "✅ 已配送" if info['is_delivered'] else "⏳ 未配送"
            print(f"{status}")
            print(f"  收件人: {info['receiver']}")
            if info['receiver_phone']:
                print(f"  电话: {info['receiver_phone']}")
            if info['amount']:
                print(f"  金额: {info['amount']:,} VND")
            if info['product'] and info['product'] != "***":
                print(f"  商品: {info['product']}")
            if info['delivery_date']:
                print(f"  配送时间: {info['delivery_date']}")
            if info['signature']:
                print(f"  签名: 有")
        else:
            print("❌ 不存在")
    
    # 统计
    print("\n\n" + "="*80)
    print("📊 批量查询统计")
    print("="*80)
    
    valid = sum(1 for r in all_results if r['is_valid'])
    delivered = sum(1 for r in all_results if r['is_delivered'])
    has_product = sum(1 for r in all_results if r['product'] and r['product'] != "***")
    has_signature = sum(1 for r in all_results if r['signature'])
    has_phone = sum(1 for r in all_results if r['receiver_phone'])
    
    print(f"总运单数: {len(trackings)}")
    print(f"✅ 有效运单: {valid} ({valid/len(trackings)*100:.1f}%)")
    print(f"✅ 已配送: {delivered} ({delivered/len(trackings)*100:.1f}%)")
    print(f"✅ 未配送: {valid - delivered} ({(valid-delivered)/len(trackings)*100:.1f}%)")
    print(f"📦 有商品名称: {has_product} ({has_product/len(trackings)*100:.1f}%)")
    print(f"✍️  有签名照片: {has_signature} ({has_signature/len(trackings)*100:.1f}%)")
    print(f"📞 有收件电话: {has_phone} ({has_phone/len(trackings)*100:.1f}%)")
    
    # 导出JSON
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    json_file = f"batch_results_{timestamp}.json"
    
    with open(json_file, "w", encoding="utf-8") as f:
        json.dump(all_results, f, indent=2, ensure_ascii=False)
    
    print(f"\n✅ JSON数据已保存: {json_file}")
    
    # 导出CSV
    if export_csv:
        csv_file = f"batch_results_{timestamp}.csv"
        
        with open(csv_file, "w", encoding="utf-8") as f:
            # CSV头部
            f.write("运单号,状态,已配送,收件人,收件人电话,金额,商品名称,发件日期,装车日期,配送日期,签名照片,配送指令\n")
            
            for r in all_results:
                f.write(f'"{r["tracking"]}",')
                f.write(f'"{r["status"] or "未知"}",')
                f.write(f'"{"是" if r["is_delivered"] else "否"}",')
                f.write(f'"{r["receiver"] or ""}",')
                f.write(f'"{r["receiver_phone"] or ""}",')
                f.write(f'"{r["amount"] or ""}",')
                f.write(f'"{r["product"] or ""}",')
                f.write(f'"{r["issue_date"] or ""}",')
                f.write(f'"{r["load_date"] or ""}",')
                f.write(f'"{r["delivery_date"] or ""}",')
                f.write(f'"{r["signature"] or ""}",')
                f.write(f'"{r["instruction"] or ""}"\n')
        
        print(f"✅ CSV数据已保存: {csv_file}")
    
    # 生成汇总报告
    report_file = f"batch_report_{timestamp}.txt"
    
    with open(report_file, "w", encoding="utf-8") as f:
        f.write("="*80 + "\n")
        f.write(" "*25 + "批量查询汇总报告\n")
        f.write("="*80 + "\n\n")
        
        f.write(f"查询时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write(f"数据来源: {filename}\n")
        f.write(f"运单总数: {len(trackings)}\n\n")
        
        f.write("统计信息:\n")
        f.write(f"  有效运单: {valid} ({valid/len(trackings)*100:.1f}%)\n")
        f.write(f"  已配送: {delivered}\n")
        f.write(f"  未配送: {valid - delivered}\n")
        f.write(f"  有商品信息: {has_product}\n")
        f.write(f"  有签名照片: {has_signature}\n\n")
        
        # 已配送列表
        f.write("="*80 + "\n")
        f.write("已配送列表\n")
        f.write("="*80 + "\n\n")
        
        for r in all_results:
            if r['is_delivered']:
                f.write(f"{r['tracking']}\n")
                f.write(f"  配送时间: {r['delivery_date']}\n")
                f.write(f"  收件人: {r['receiver']}\n")
                f.write(f"  金额: {r['amount']:,} VND\n")
                if r['product']:
                    f.write(f"  商品: {r['product']}\n")
                if r['signature']:
                    f.write(f"  签名: {r['signature']}\n")
                f.write("\n")
        
        # 未配送列表
        f.write("="*80 + "\n")
        f.write("未配送列表\n")
        f.write("="*80 + "\n\n")
        
        for r in all_results:
            if r['is_valid'] and not r['is_delivered']:
                f.write(f"{r['tracking']}\n")
                f.write(f"  收件人: {r['receiver']}\n")
                if r['receiver_phone']:
                    f.write(f"  电话: {r['receiver_phone']}\n")
                f.write(f"  金额: {r['amount']:,} VND\n")
                if r['product']:
                    f.write(f"  商品: {r['product']}\n")
                if r['issue_date']:
                    f.write(f"  发件日期: {r['issue_date']}\n")
                if r['load_date']:
                    f.write(f"  装车日期: {r['load_date']}\n")
                f.write("\n")
    
    print(f"✅ 汇总报告已保存: {report_file}")
    
    return all_results

# ============================================
# 主程序
# ============================================

if __name__ == "__main__":
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                     📂 批量文件查询工具 📂                                 ║
║                                                                            ║
║  功能: 从文本文件读取运单号，批量查询                                      ║
║  输出: JSON + CSV + 汇总报告                                               ║
╚════════════════════════════════════════════════════════════════════════════╝
    """)
    
    # 检查命令行参数
    if len(sys.argv) > 1:
        filename = sys.argv[1]
    else:
        filename = "key.txt"  # 默认文件名
    
    print(f"📂 使用文件: {filename}\n")
    
    # 如果文件不存在，提供示例
    if not os.path.exists(filename):
        print(f"❌ 文件 '{filename}' 不存在\n")
        print("创建示例文件...")
        
        # 创建示例key.txt
        with open("key.txt", "w", encoding="utf-8") as f:
            f.write("# 运单号列表 - 每行一个\n")
            f.write("# 以 # 开头的行为注释，会被忽略\n")
            f.write("# 空行也会被忽略\n\n")
            f.write("# EP系列示例\n")
            f.write("EP492966929VN\n")
            f.write("EP492940379VN\n")
            f.write("EP493183769VN\n\n")
            f.write("# EL系列示例\n")
            f.write("EL135248100VN\n")
            f.write("EL135753627VN\n")
        
        print("✅ 已创建示例文件: key.txt")
        print("\n示例内容:")
        print("-" * 60)
        with open("key.txt", "r") as f:
            print(f.read())
        print("-" * 60)
        print("\n请编辑 key.txt 添加您的运单号，然后重新运行:")
        print(f"  python3 {sys.argv[0]}")
        print("\n或指定其他文件:")
        print(f"  python3 {sys.argv[0]} my_trackings.txt")
        sys.exit(0)
    
    # 开始批量查询
    results = batch_query_from_file(filename)
    
    print(f"""
\n{'='*80}
🎉 批量查询完成！
{'='*80}

📁 生成的文件:
  1. batch_results_*.json - 完整JSON数据
  2. batch_results_*.csv  - CSV表格（可用Excel打开）
  3. batch_report_*.txt   - 汇总报告

💡 提示:
  • CSV文件可以直接用Excel/WPS打开查看
  • JSON文件包含最完整的原始数据
  • 汇总报告包含格式化的可读内容
    """)
