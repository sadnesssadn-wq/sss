#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
最优查询策略：信息最多 + 准确性最大

策略：
1. TrackTrace/Lading    - 获取实时状态（最准确）
2. Delivery/Inquiry     - 获取完整详情（字段最多）
3. DeliveryLadingJourney - 获取配送轨迹
4. Gateway/Bussiness    - 获取商品信息
5. 智能合并：优先使用更准确的数据源
"""

import hashlib
import requests
import json
from datetime import datetime

# 配置
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="
BASE_URL = "https://api-dingdong.ems.com.vn"

def sign(code):
    """生成签名"""
    return hashlib.sha256((code.upper() + API_KEY).encode()).hexdigest().upper()

def call_api_1_tracktrace(code):
    """
    API 1: TrackTrace/Lading - 实时追踪
    优势：实时性好，状态最准确
    """
    print("  [1/4] 调用 TrackTrace/Lading (实时状态)...")
    
    try:
        headers = {"Content-Type": "application/json"}
        sig = sign(code)
        payload = {"LadingCode": code, "Signature": sig}
        
        response = requests.post(
            f"{BASE_URL}/api/TrackTrace/Lading",
            headers=headers,
            json=payload,
            timeout=10
        )
        
        result = response.json()
        if result.get('Code') == '00':
            data = result.get('Value') or result.get('Data')
            if isinstance(data, str):
                data = json.loads(data)
            print(f"  ✅ TrackTrace: 获得 {len(data)} 个字段")
            return data
        else:
            print(f"  ⚠️  TrackTrace: {result.get('Message')}")
            return None
    except Exception as e:
        print(f"  ❌ TrackTrace: {e}")
        return None

def call_api_2_inquiry(code):
    """
    API 2: Delivery/Inquiry - 订单详情
    优势：字段最多(39个)，信息最全
    """
    print("  [2/4] 调用 Delivery/Inquiry (完整详情)...")
    
    try:
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": API_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        sig = sign(code)
        data = {"ParcelCode": code, "Signature": sig}
        
        response = requests.post(
            f"{BASE_URL}/api/Delivery/Inquiry",
            headers=headers,
            data=data,
            timeout=10
        )
        
        result = response.json()
        if result.get('Code') == '00':
            data = result.get('Value')
            print(f"  ✅ Inquiry: 获得 {len(data)} 个字段")
            return data
        else:
            print(f"  ⚠️  Inquiry: {result.get('Message')}")
            return None
    except Exception as e:
        print(f"  ❌ Inquiry: {e}")
        return None

def call_api_3_journey(code):
    """
    API 3: DeliveryLadingJourney - 配送轨迹
    优势：完整的配送历史记录
    """
    print("  [3/4] 调用 DeliveryLadingJourney (配送轨迹)...")
    
    try:
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": API_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        data = {"ParcelCode": code}
        
        response = requests.post(
            f"{BASE_URL}/api/Delivery/DeliveryLadingJourney",
            headers=headers,
            data=data,
            timeout=10
        )
        
        result = response.json()
        if result.get('Code') == '00':
            journey = result.get('ListValue', [])
            print(f"  ✅ Journey: 获得 {len(journey)} 条轨迹记录")
            return journey
        else:
            print(f"  ⚠️  Journey: {result.get('Message')}")
            return []
    except Exception as e:
        print(f"  ❌ Journey: {e}")
        return []

def call_api_4_gateway(code):
    """
    API 4: Gateway/Bussiness - 商品信息
    优势：详细的商品数据
    """
    print("  [4/4] 调用 Gateway/Bussiness (商品信息)...")
    
    try:
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": API_KEY,
            "Content-Type": "application/json"
        }
        payload = {"Code": "LDP002", "Data": code}
        
        response = requests.post(
            f"{BASE_URL}/api/Gateway/Bussiness",
            headers=headers,
            json=payload,
            timeout=10
        )
        
        result = response.json()
        if result.get('Code') == '00':
            products = json.loads(result.get('Data', '[]'))
            print(f"  ✅ Gateway: 获得 {len(products)} 个商品")
            return products
        else:
            print(f"  ⚠️  Gateway: {result.get('Message')}")
            return []
    except Exception as e:
        print(f"  ❌ Gateway: {e}")
        return []

def smart_merge(tracktrace_data, inquiry_data, journey_data, products_data):
    """
    智能合并策略：
    1. 状态信息 → 优先使用 TrackTrace (最实时)
    2. 基础信息 → 两者都有时，优先 TrackTrace (最准确)
    3. 扩展信息 → 只有 Inquiry 有，直接使用
    4. 轨迹信息 → 来自 Journey
    5. 商品信息 → 来自 Gateway
    """
    
    merged = {
        '运单号': '',
        
        # === 状态信息（优先 TrackTrace）===
        '当前状态码': None,
        '当前状态名': None,
        '状态更新时间': None,
        
        # === 收件人信息（TrackTrace 优先，Inquiry 补充）===
        '收件人姓名': None,
        '收件人电话': None,
        '收件人地址': None,
        '收件人身份证': None,
        
        # === 发件人信息（TrackTrace 优先，Inquiry 补充）===
        '发件人姓名': None,
        '发件人电话': None,
        '发件人地址': None,
        
        # === 金额信息（Inquiry 独有）===
        '代收金额': None,
        '运费': None,
        '增值费': None,
        'C类费用': None,
        '包裹价值': None,
        
        # === 时间信息（Inquiry 独有）===
        '发行日期': None,
        '装载日期': None,
        '配送日期': None,
        '签收日期': None,
        
        # === 物流信息 ===
        '重量': None,
        '签收照片': None,
        
        # === 备注信息（Inquiry 独有）===
        '备注': None,
        '原因': None,
        '处理人': None,
        
        # === GPS信息（Inquiry 独有）===
        'GPS经度': None,
        'GPS纬度': None,
        
        # === 配送轨迹（Journey 独有）===
        '轨迹记录数': 0,
        '轨迹详情': [],
        '是否已送达': False,
        
        # === 商品信息（Gateway 独有）===
        '商品数量': 0,
        '商品列表': [],
        
        # === 数据来源标记 ===
        '数据来源': {
            'TrackTrace': False,
            'Inquiry': False,
            'Journey': False,
            'Gateway': False
        }
    }
    
    # 1. 合并 TrackTrace 数据（优先级最高）
    if tracktrace_data:
        merged['数据来源']['TrackTrace'] = True
        merged['运单号'] = tracktrace_data.get('Code', '')
        merged['当前状态码'] = tracktrace_data.get('Status')
        merged['当前状态名'] = tracktrace_data.get('StatusName')
        merged['状态更新时间'] = tracktrace_data.get('CreateDate')
        
        # 收发件人信息（TrackTrace 更准确）
        merged['收件人姓名'] = tracktrace_data.get('ReceiverName')
        merged['收件人电话'] = tracktrace_data.get('ReceiverMobile')
        merged['收件人地址'] = tracktrace_data.get('ReceiverAddress')
        merged['发件人姓名'] = tracktrace_data.get('SenderName')
        merged['发件人电话'] = tracktrace_data.get('SenderMobile')
        merged['发件人地址'] = tracktrace_data.get('SenderAddress')
        
        # 其他信息
        merged['包裹价值'] = tracktrace_data.get('Value')
        merged['运费'] = tracktrace_data.get('Fee')
        merged['重量'] = tracktrace_data.get('Weight')
        merged['签收照片'] = tracktrace_data.get('SignatureCapture')
    
    # 2. 合并 Inquiry 数据（补充和覆盖）
    if inquiry_data:
        merged['数据来源']['Inquiry'] = True
        
        # 运单号
        if not merged['运单号']:
            merged['运单号'] = inquiry_data.get('ParcelCode', '')
        
        # 状态信息（如果 TrackTrace 没有，用 Inquiry）
        if not merged['当前状态名']:
            merged['当前状态名'] = inquiry_data.get('StatusName')
        if not merged['当前状态码']:
            merged['当前状态码'] = inquiry_data.get('Status')
        
        # 收发件人信息（如果 TrackTrace 没有，用 Inquiry 补充）
        if not merged['收件人姓名']:
            merged['收件人姓名'] = inquiry_data.get('ReceiverName')
        if not merged['收件人电话']:
            merged['收件人电话'] = inquiry_data.get('ReceiverPhone')
        if not merged['收件人地址']:
            merged['收件人地址'] = inquiry_data.get('ReceiverAddress')
        if not merged['发件人姓名']:
            merged['发件人姓名'] = inquiry_data.get('SenderName')
        if not merged['发件人电话']:
            merged['发件人电话'] = inquiry_data.get('SenderPhone')
        if not merged['发件人地址']:
            merged['发件人地址'] = inquiry_data.get('SenderAddress')
        
        # Inquiry 独有的扩展信息
        merged['收件人身份证'] = inquiry_data.get('ReceiverIDCard')
        merged['代收金额'] = inquiry_data.get('CollectAmount')
        merged['增值费'] = inquiry_data.get('FeePPA')
        merged['C类费用'] = inquiry_data.get('FeeC')
        
        # 时间信息
        merged['发行日期'] = inquiry_data.get('IssueDate')
        merged['装载日期'] = inquiry_data.get('LoadDate')
        merged['配送日期'] = inquiry_data.get('DeliveryDate')
        merged['签收日期'] = inquiry_data.get('SignatureDate')
        
        # 备注信息
        merged['备注'] = inquiry_data.get('Note')
        merged['原因'] = inquiry_data.get('ReasonName')
        merged['处理人'] = inquiry_data.get('HandlerName')
        
        # GPS信息
        merged['GPS经度'] = inquiry_data.get('Longitude')
        merged['GPS纬度'] = inquiry_data.get('Latitude')
    
    # 3. 合并 Journey 数据
    if journey_data:
        merged['数据来源']['Journey'] = True
        merged['轨迹记录数'] = len(journey_data)
        merged['轨迹详情'] = journey_data
        
        # 判断是否已送达
        for record in journey_data:
            status = str(record.get('StatusName', '')).lower()
            if 'giao' in status or 'delivered' in status:
                merged['是否已送达'] = True
                break
    
    # 4. 合并 Gateway 商品数据
    if products_data:
        merged['数据来源']['Gateway'] = True
        merged['商品数量'] = len(products_data)
        merged['商品列表'] = products_data
    
    return merged

def optimal_query(tracking_code):
    """
    最优查询：4个API全调用，智能合并
    """
    print("=" * 80)
    print(f"🚀 最优查询策略：{tracking_code}")
    print("=" * 80)
    print()
    
    # 并发调用4个API
    api1_data = call_api_1_tracktrace(tracking_code)
    api2_data = call_api_2_inquiry(tracking_code)
    api3_data = call_api_3_journey(tracking_code)
    api4_data = call_api_4_gateway(tracking_code)
    
    print()
    print("=" * 80)
    print("📊 数据合并中...")
    print("=" * 80)
    
    # 智能合并
    result = smart_merge(api1_data, api2_data, api3_data, api4_data)
    
    return result

def display_result(result):
    """美化显示结果"""
    print()
    print("=" * 80)
    print("✅ 查询结果（最优合并）")
    print("=" * 80)
    
    print("\n📦 基本信息:")
    print(f"  运单号: {result['运单号']}")
    print(f"  当前状态: {result['当前状态名']} (代码: {result['当前状态码']})")
    print(f"  更新时间: {result['状态更新时间']}")
    
    print("\n👤 收件人信息:")
    print(f"  姓名: {result['收件人姓名']}")
    print(f"  电话: {result['收件人电话']}")
    print(f"  地址: {result['收件人地址']}")
    if result['收件人身份证']:
        print(f"  身份证: {result['收件人身份证']}")
    
    print("\n📮 发件人信息:")
    print(f"  姓名: {result['发件人姓名']}")
    print(f"  电话: {result['发件人电话']}")
    print(f"  地址: {result['发件人地址']}")
    
    print("\n💰 金额信息:")
    print(f"  代收金额: {result['代收金额']}")
    print(f"  运费: {result['运费']}")
    print(f"  增值费: {result['增值费']}")
    print(f"  包裹价值: {result['包裹价值']}")
    print(f"  重量: {result['重量']}")
    
    print("\n📅 时间信息:")
    print(f"  发行日期: {result['发行日期']}")
    print(f"  装载日期: {result['装载日期']}")
    print(f"  配送日期: {result['配送日期']}")
    print(f"  签收日期: {result['签收日期']}")
    
    if result['GPS经度'] and result['GPS纬度']:
        print("\n📍 GPS位置:")
        print(f"  经度: {result['GPS经度']}")
        print(f"  纬度: {result['GPS纬度']}")
    
    if result['轨迹记录数'] > 0:
        print(f"\n🚚 配送轨迹: {result['轨迹记录数']} 条记录")
        print(f"  已送达: {'是' if result['是否已送达'] else '否'}")
        for i, record in enumerate(result['轨迹详情'][:5], 1):
            print(f"  [{i}] {record.get('Time', 'N/A')}: {record.get('StatusName', 'N/A')}")
        if result['轨迹记录数'] > 5:
            print(f"  ... 还有 {result['轨迹记录数'] - 5} 条记录")
    
    if result['商品数量'] > 0:
        print(f"\n📦 商品信息: {result['商品数量']} 个商品")
        for i, product in enumerate(result['商品列表'], 1):
            print(f"  [{i}] {product.get('ProductName', 'N/A')}")
            print(f"      数量: {product.get('Quantity', 0)} 个")
            print(f"      单价: {product.get('Price', 0)} ₫")
            print(f"      总价: {product.get('Amount', 0)} ₫")
    
    if result['备注']:
        print(f"\n📝 备注: {result['备注']}")
    if result['原因']:
        print(f"⚠️  原因: {result['原因']}")
    
    if result['签收照片']:
        print(f"\n📷 签收照片: {result['签收照片']}")
    
    print("\n" + "=" * 80)
    print("📊 数据来源:")
    print("=" * 80)
    for source, available in result['数据来源'].items():
        status = "✅" if available else "❌"
        print(f"  {status} {source}")
    
    print("\n" + "=" * 80)
    print("✨ 数据质量评估:")
    print("=" * 80)
    sources_count = sum(result['数据来源'].values())
    print(f"  已调用API: {sources_count}/4")
    print(f"  信息完整度: {'⭐' * sources_count}{'☆' * (4 - sources_count)}")
    
    if result['数据来源']['TrackTrace']:
        print(f"  ✅ 状态准确性: 最高（来自实时系统）")
    else:
        print(f"  ⚠️  状态准确性: 中等（仅来自查询系统）")

if __name__ == "__main__":
    # 测试
    test_codes = [
        "EP493018285VN",
        # 可以添加更多运单号测试
    ]
    
    for code in test_codes:
        result = optimal_query(code)
        display_result(result)
        
        # 保存为JSON
        output_file = f"optimal_query_{code}_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(result, f, indent=2, ensure_ascii=False)
        print(f"\n💾 已保存到: {output_file}\n")
