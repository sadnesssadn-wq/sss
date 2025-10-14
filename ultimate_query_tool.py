#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
终极查询工具 - 一次性获取包裹的所有信息
集成4个API，并行查询，返回最完整的数据
"""

import hashlib
import requests
import json
import sys
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed

# ============================================
# 配置信息
# ============================================
API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

# ============================================
# 工具函数
# ============================================

def sign(text):
    """生成SHA256签名"""
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def call_inquiry(tracking):
    """API 1: Inquiry - 基本信息"""
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    sig = sign(tracking)
    url = f"{API_URL}api/Delivery/Inquiry"
    data = {"ParcelCode": tracking, "Signature": sig}
    
    try:
        r = requests.post(url, headers=headers, data=data, timeout=10)
        return r.json()
    except:
        return None

def call_journey(tracking):
    """API 2: DeliveryLadingJourney - 配送历史"""
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    url = f"{API_URL}api/Delivery/DeliveryLadingJourney"
    data = {"ParcelCode": tracking}
    
    try:
        r = requests.post(url, headers=headers, data=data, timeout=10)
        return r.json()
    except:
        return None

def call_gateway(tracking):
    """API 3: Gateway/Bussiness - 商品信息"""
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/json"
    }
    
    url = f"{API_URL}api/Gateway/Bussiness"
    payload = {"Code": "LDP002", "Data": tracking}
    
    try:
        r = requests.post(url, headers=headers, json=payload, timeout=10)
        return r.json()
    except:
        return None

def call_trackrace(tracking):
    """API 4: TrackTrace - 状态历史"""
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    sig = sign(tracking)
    url = f"{API_URL}api/TrackTrace/Lading"
    data = {"LadingCode": tracking, "Signature": sig}
    
    try:
        r = requests.post(url, headers=headers, data=data, timeout=10)
        return r.json()
    except:
        return None

# ============================================
# 核心函数：并行获取所有信息
# ============================================

def get_all_info_parallel(tracking_number):
    """
    并行调用4个API，获取所有可能的信息
    返回最完整、格式化的数据
    """
    
    print(f"\n{'='*80}")
    print(f"🔍 正在查询: {tracking_number}")
    print(f"{'='*80}")
    print("⏳ 并行调用 4 个 API...")
    
    # 使用线程池并行调用所有API
    with ThreadPoolExecutor(max_workers=4) as executor:
        future_inquiry = executor.submit(call_inquiry, tracking_number)
        future_journey = executor.submit(call_journey, tracking_number)
        future_gateway = executor.submit(call_gateway, tracking_number)
        future_track = executor.submit(call_trackrace, tracking_number)
        
        # 等待所有请求完成
        inquiry_result = future_inquiry.result()
        journey_result = future_journey.result()
        gateway_result = future_gateway.result()
        track_result = future_track.result()
    
    print("✅ 所有 API 调用完成！\n")
    
    # ============================================
    # 整合所有数据
    # ============================================
    
    complete_info = {
        "query_time": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
        "tracking_number": tracking_number,
        "status": {
            "is_valid": False,
            "is_delivered": False,
            "status_code": None,
            "status_name": None
        },
        "sender": {},
        "receiver": {},
        "times": {},
        "amounts": {},
        "products": [],
        "delivery_details": {},
        "status_history": [],
        "media": {},
        "additional_info": {},
        "raw_data": {
            "inquiry": inquiry_result,
            "journey": journey_result,
            "gateway": gateway_result,
            "track": track_result
        }
    }
    
    # ============================================
    # 解析 Inquiry API 数据
    # ============================================
    if inquiry_result and inquiry_result.get("Code") == "00" and inquiry_result.get("Value"):
        complete_info["status"]["is_valid"] = True
        value = inquiry_result["Value"]
        
        # 发件人信息
        complete_info["sender"] = {
            "name": value.get("SenderName"),
            "address": value.get("SenderAddress"),
            "phone": value.get("SenderPhone")
        }
        
        # 收件人信息
        complete_info["receiver"] = {
            "name": value.get("ReceiverName"),
            "address": value.get("ReceiverAddress"),
            "phone": value.get("ReceiverPhone"),
            "id_number": value.get("ReceiverIDNumber"),
            "birthday": value.get("ReceiverBirthday")
        }
        
        # 时间信息 - 确保所有键都存在
        if "times" not in complete_info or not complete_info["times"]:
            complete_info["times"] = {}
        complete_info["times"].update({
            "issue_date": value.get("IssueDate"),
            "load_date": value.get("LoadDate"),
            "delivery_date": value.get("DeliveryDate") if value.get("DeliveryDate") else complete_info["times"].get("delivery_date")
        })
        
        # 金额信息
        complete_info["amounts"] = {
            "cod_amount": value.get("CollectAmount"),
            "amount_cod": value.get("AmountCOD"),
            "fee_ship": value.get("FeeShip"),
            "fee_ppa": value.get("FeePPA"),
            "fee_c": value.get("FeeC"),
            "fee_collect_later": value.get("FeeCollectLater"),
            "fee_cancel_order": value.get("FeeCancelOrder")
        }
        
        # 其他信息
        complete_info["additional_info"] = {
            "weight": value.get("Weigh"),
            "is_cod": value.get("IsCOD"),
            "delivery_po_code": value.get("DeliveryPOCode"),
            "status_code": value.get("Status")
        }
        
        complete_info["status"]["status_code"] = value.get("Status")
    
    # ============================================
    # 解析 DeliveryLadingJourney API 数据
    # ============================================
    if journey_result and journey_result.get("Code") == "00" and journey_result.get("ListValue"):
        complete_info["status"]["is_delivered"] = True
        
        for record in journey_result["ListValue"]:
            # 配送详情
            delivery_detail = {
                "delivery_date": record.get("DeliveryDate"),
                "status_name": record.get("StatusName"),
                "receiver_name": record.get("ReceiverName"),
                "receiver_address": record.get("ReceiverAddress"),
                "amount": record.get("CollectAmount"),
                "route_code": record.get("RouteCode"),
                "delivery_po_code": record.get("DeliveryPOCode"),
                "instruction": record.get("Instruction"),        # 🔥 配送指令
                "vat_code": record.get("VATCode"),              # 🔥 服务类型
                "note": record.get("Note"),
                "reason_name": record.get("ReasonName"),
                "solution_name": record.get("SolutionName"),
                "is_paypost_name": record.get("IsPaypostName"),
                "status_code": record.get("Status")
            }
            
            complete_info["delivery_details"] = delivery_detail
            complete_info["status"]["status_name"] = record.get("StatusName")
            
            # 更新时间（如果有）
            if record.get("DeliveryDate"):
                complete_info["times"]["delivery_date"] = record.get("DeliveryDate")
            
            # 媒体文件
            complete_info["media"] = {
                "signature": record.get("DeliverySignature"),   # 🔥 签名照片
                "delivery_image": record.get("DeliveryImage"),
                "delivery_image_authen": record.get("DeliveryImageAuthen")
            }
            
            break  # 只取第一条记录（最新的）
    
    # ============================================
    # 解析 Gateway API 数据（商品信息）
    # ============================================
    if gateway_result and gateway_result.get("Code") == "00" and gateway_result.get("Data"):
        try:
            products = json.loads(gateway_result["Data"])
            for product in products:
                complete_info["products"].append({
                    "name": product.get("ProductName"),         # 🔥 商品名称
                    "quantity": product.get("Quantity"),
                    "unit": product.get("UnitName"),
                    "weight": product.get("Weight"),
                    "price": product.get("Price"),
                    "amount": product.get("Amount"),
                    "product_id": product.get("ProductId")
                })
        except:
            pass
    
    # ============================================
    # 解析 TrackTrace API 数据（状态历史）
    # ============================================
    if track_result and track_result.get("Code") == "00" and track_result.get("Value"):
        value = track_result["Value"]
        
        # 系统ID
        complete_info["additional_info"]["system_id"] = value.get("ID")
        
        # 状态历史
        if value.get("ListStatus"):
            for status in value["ListStatus"]:
                complete_info["status_history"].append({
                    "status_code": status.get("StatusCode"),
                    "status_message": status.get("StatusMessage", "").strip(),
                    "date": status.get("StatusDate"),
                    "time": status.get("StatusTime"),
                    "po_code": status.get("POCode"),
                    "po_name": status.get("POName"),
                    "reason_code": status.get("ReasonCode")
                })
    
    return complete_info

# ============================================
# 格式化输出函数
# ============================================

def print_formatted(info):
    """美化输出所有信息"""
    
    print("\n" + "="*80)
    print(" "*25 + "📦 包裹完整信息报告")
    print("="*80)
    
    # 基本状态
    print(f"\n【基本状态】")
    print(f"  运单号: {info['tracking_number']}")
    print(f"  查询时间: {info['query_time']}")
    print(f"  运单有效: {'✅ 是' if info['status']['is_valid'] else '❌ 否'}")
    print(f"  已配送: {'✅ 是' if info['status']['is_delivered'] else '❌ 否'}")
    print(f"  状态码: {info['status']['status_code'] or 'N/A'}")
    print(f"  状态名称: {info['status']['status_name'] or 'N/A'}")
    
    # 发件人信息
    if any(info['sender'].values()):
        print(f"\n【发件人信息】")
        print(f"  姓名: {info['sender']['name'] or 'N/A'}")
        print(f"  地址: {info['sender']['address'] or 'N/A'}")
        print(f"  电话: {info['sender']['phone'] or 'N/A'}")
    
    # 收件人信息
    if any(info['receiver'].values()):
        print(f"\n【收件人信息】")
        print(f"  姓名: {info['receiver']['name'] or 'N/A'}")
        print(f"  地址: {info['receiver']['address'] or 'N/A'}")
        print(f"  电话: {info['receiver']['phone'] or 'N/A'}")
        if info['receiver']['id_number']:
            print(f"  身份证: {info['receiver']['id_number']}")
        if info['receiver']['birthday']:
            print(f"  生日: {info['receiver']['birthday']}")
    
    # 时间信息
    if info.get('times') and any(info['times'].values()):
        print(f"\n【时间信息】")
        if info['times'].get('issue_date'):
            print(f"  📅 发件日期: {info['times']['issue_date']}")
        if info['times'].get('load_date'):
            print(f"  📅 装车日期: {info['times']['load_date']}")
        if info['times'].get('delivery_date'):
            print(f"  📅 配送日期: {info['times']['delivery_date']}")
    
    # 金额信息
    if any(v for v in info['amounts'].values() if v):
        print(f"\n【金额信息】")
        cod = info['amounts']['cod_amount']
        if cod:
            print(f"  💰 COD金额: {cod:,} VND (~{int(cod/3400):.0f} CNY)")
        if info['amounts']['amount_cod']:
            print(f"  💰 实收金额: {info['amounts']['amount_cod']:,} VND")
        if info['amounts']['fee_ship']:
            print(f"  💰 运费: {info['amounts']['fee_ship']}")
        if info['amounts']['fee_ppa']:
            print(f"  💰 PPA费用: {info['amounts']['fee_ppa']}")
    
    # 商品信息 🔥
    if info['products']:
        print(f"\n【商品信息】🔥")
        for idx, product in enumerate(info['products'], 1):
            print(f"  商品 {idx}:")
            print(f"    📦 名称: {product['name'] or '未填写'}")
            if product['quantity']:
                print(f"    📊 数量: {product['quantity']} {product['unit'] or ''}")
            if product['weight']:
                print(f"    ⚖️  重量: {product['weight']} g")
            if product['price']:
                print(f"    💵 单价: {product['price']:,} VND")
            if product['amount']:
                print(f"    💰 总额: {product['amount']:,} VND")
    
    # 配送详情
    if info['delivery_details']:
        dd = info['delivery_details']
        print(f"\n【配送详情】")
        if dd.get('delivery_date'):
            print(f"  ⏰ 配送时间: {dd['delivery_date']}")
        if dd.get('route_code'):
            print(f"  🚚 路线代码: {dd['route_code']}")
        if dd.get('delivery_po_code'):
            print(f"  🏢 配送邮局: {dd['delivery_po_code']}")
        if dd.get('is_paypost_name'):
            print(f"  💳 支付状态: {dd['is_paypost_name']}")
        
        # 配送指令 🔥
        if dd.get('instruction'):
            print(f"\n  📝 配送指令:")
            print(f"     「{dd['instruction']}」")
        
        # 服务类型 🔥
        if dd.get('vat_code'):
            print(f"\n  🏷️  服务类型: {dd['vat_code']}")
        
        if dd.get('reason_name'):
            print(f"  ❌ 失败原因: {dd['reason_name']}")
        if dd.get('solution_name'):
            print(f"  💡 解决方案: {dd['solution_name']}")
    
    # 媒体文件 🔥
    if info['media'] and any(info['media'].values()):
        print(f"\n【媒体文件】🔥")
        if info['media']['signature']:
            print(f"  ✍️  签名照片: {info['media']['signature']}")
        if info['media']['delivery_image']:
            print(f"  📸 配送照片: {info['media']['delivery_image']}")
        if info['media']['delivery_image_authen']:
            print(f"  📸 认证照片: {info['media']['delivery_image_authen']}")
    
    # 状态历史
    if info['status_history']:
        print(f"\n【状态历史】({len(info['status_history'])}条记录)")
        for idx, status in enumerate(info['status_history'], 1):
            print(f"\n  记录 {idx}:")
            print(f"    状态: {status['status_code']} - {status['status_message']}")
            print(f"    时间: {status['date']} {status['time']}")
            print(f"    邮局: {status['po_name']}")
    
    # 其他信息
    if info['additional_info']:
        ai = info['additional_info']
        if ai.get('weight') or ai.get('is_cod') or ai.get('system_id'):
            print(f"\n【其他信息】")
            if ai.get('weight'):
                print(f"  ⚖️  包裹重量: {ai['weight']} g")
            if ai.get('is_cod'):
                print(f"  💵 是否COD: {ai['is_cod']}")
            if ai.get('system_id'):
                print(f"  🆔 系统ID: {ai['system_id']}")
            if ai.get('delivery_po_code'):
                print(f"  🏢 目的地邮局: {ai['delivery_po_code']}")
    
    return complete_info

# ============================================
# 批量查询函数
# ============================================

def batch_query(tracking_list, export_json=True):
    """批量查询多个运单号"""
    
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                        🚀 批量终极查询工具 🚀                              ║
║  集成 4 个 API，并行查询，获取最完整信息                                   ║
╚════════════════════════════════════════════════════════════════════════════╝
""")
    
    print(f"📋 待查询运单数: {len(tracking_list)}\n")
    
    all_results = []
    
    for idx, tracking in enumerate(tracking_list, 1):
        print(f"\n[{idx}/{len(tracking_list)}]", end=" ")
        
        info = get_all_info_parallel(tracking)
        all_results.append(info)
        
        print_formatted(info)
        
        print("\n" + "-"*80)
    
    # 统计
    print("\n\n" + "="*80)
    print("📊 批量查询统计")
    print("="*80)
    
    valid_count = sum(1 for r in all_results if r['status']['is_valid'])
    delivered_count = sum(1 for r in all_results if r['status']['is_delivered'])
    has_product_count = sum(1 for r in all_results if r['products'])
    has_signature_count = sum(1 for r in all_results if r['media'].get('signature'))
    
    print(f"总计: {len(tracking_list)} 个运单")
    print(f"✅ 有效: {valid_count} 个 ({valid_count/len(tracking_list)*100:.1f}%)")
    print(f"✅ 已配送: {delivered_count} 个 ({delivered_count/len(tracking_list)*100:.1f}%)")
    print(f"📦 有商品信息: {has_product_count} 个 ({has_product_count/len(tracking_list)*100:.1f}%)")
    print(f"✍️  有签名照片: {has_signature_count} 个 ({has_signature_count/len(tracking_list)*100:.1f}%)")
    
    # 导出JSON
    if export_json:
        filename = f"complete_query_results_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename, "w", encoding="utf-8") as f:
            json.dump(all_results, f, indent=2, ensure_ascii=False)
        print(f"\n✅ 完整数据已导出到: {filename}")
    
    return all_results

# ============================================
# 主程序
# ============================================

if __name__ == "__main__":
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                     🔥 终极包裹查询工具 🔥                                 ║
║                                                                            ║
║  功能: 一次性获取包裹的所有信息                                            ║
║  集成: 4个API并行查询                                                     ║
║  输出: 完整的格式化数据 + JSON文件                                         ║
║                                                                            ║
║  ⚠️  仅用于安全研究和教育目的                                             ║
╚════════════════════════════════════════════════════════════════════════════╝
    """)
    
    if len(sys.argv) > 1:
        # 命令行模式
        tracking_numbers = sys.argv[1:]
        batch_query(tracking_numbers)
    else:
        # 交互模式
        print("使用方法:")
        print("  1. 查询单个运单:")
        print("     python ultimate_query_tool.py EP492966929VN")
        print()
        print("  2. 查询多个运单:")
        print("     python ultimate_query_tool.py EP492966929VN EP493183769VN")
        print()
        print("  3. 在Python中使用:")
        print("     from ultimate_query_tool import get_all_info_parallel")
        print("     info = get_all_info_parallel('EP492966929VN')")
        print()
        
        # 默认演示
        print("="*80)
        print("演示查询 (使用测试运单号)")
        print("="*80)
        
        demo_trackings = [
            "EP492966929VN",  # 已配送，有商品描述
            "EP492940379VN",  # 未配送，有商品名称
        ]
        
        batch_query(demo_trackings)
