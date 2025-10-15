#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
直接测试已知的当天订单 - 验证网络和API是否正常
"""
import hashlib, requests, time
from datetime import datetime

API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

TODAY = datetime.now().strftime("%d/%m/%Y")

# 我找到的39个当天未配送订单
KNOWN_TODAY_ORDERS = [
    "EF047530814VN", "EF047534952VN", "EF047535034VN", "EF047534966VN", "EF047534970VN",
    "EF047535666VN", "EP492999365VN", "EP492999578VN", "EP493005750VN", "EP493006018VN",
    "EP493006145VN", "EP493006171VN", "EP493006211VN", "EP493006857VN", "EP493008328VN",
    "EP493008606VN", "EP493008566VN", "EP493009045VN", "EP493009425VN", "EP493011083VN",
    "EP493011415VN", "EP493011962VN", "EP493018285VN", "EP493540298VN", "EP493541188VN",
    "EP493544140VN", "EP493545692VN", "EP493546786VN", "EP493546830VN", "EP493548416VN",
    "EP493564440VN", "EP493564780VN", "EP493565140VN", "EP493565330VN", "EP494007350VN",
    "EP494504840VN", "EP494509100VN", "EP494509780VN", "EP494509820VN"
]

def sign(text):
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def is_today(date_str):
    if not date_str:
        return False
    date_str = str(date_str)
    today_dd_mm_yyyy = datetime.now().strftime("%d/%m/%Y")
    today_mm_dd_yyyy = datetime.now().strftime("%m/%d/%Y")
    return (today_dd_mm_yyyy in date_str or today_mm_dd_yyyy in date_str)

def test_order(tracking):
    """测试单个订单"""
    print(f"\n🔍 测试: {tracking}")
    
    sig = sign(tracking)
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    try:
        # 尝试无代理直连
        start_time = time.time()
        response = requests.post(
            f"{API_URL}api/Delivery/Inquiry",
            headers=headers,
            data={"ParcelCode": tracking, "Signature": sig},
            timeout=15
        )
        elapsed = time.time() - start_time
        
        if response.status_code == 200:
            try:
                data = response.json()
                code = data.get('Code', '')
                
                if code == '00' and data.get('Value'):
                    v = data['Value']
                    
                    delivery_date = v.get('DeliveryDate', '')
                    issue_date = v.get('IssueDate', '')
                    load_date = v.get('LoadDate', '')
                    
                    is_delivered = bool(delivery_date)
                    is_today_order = is_today(issue_date) or is_today(load_date)
                    
                    print(f"   ✅ 成功 ({elapsed:.1f}s)")
                    print(f"   📅 发件日期: {issue_date}")
                    print(f"   ⏰ 装载时间: {load_date}")
                    print(f"   📦 配送日期: {delivery_date or '无(未配送)'}")
                    print(f"   👤 收件人: {v.get('ReceiverName', '')}")
                    print(f"   💰 金额: {v.get('CollectAmount', 0):,}₫")
                    print(f"   🎯 是今天: {'是' if is_today_order else '否'}")
                    print(f"   🚫 未配送: {'是' if not is_delivered else '否'}")
                    
                    if not is_delivered and is_today_order:
                        print(f"   ✅ 符合条件: 当天未配送订单")
                        return True
                    else:
                        print(f"   ❌ 不符合条件")
                        return False
                        
                else:
                    print(f"   ❌ API错误: Code={code}, Message={data.get('Message', '未知')}")
                    return False
                    
            except Exception as e:
                print(f"   ❌ JSON解析失败: {e}")
                return False
        else:
            print(f"   ❌ HTTP错误: {response.status_code}")
            return False
            
    except Exception as e:
        print(f"   ❌ 请求异常: {e}")
        return False

def main():
    print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🧪 测试已知当天订单                                     ║
╚════════════════════════════════════════════════════════════════════════════╝

🎯 目标: 验证你的网络环境能否正常获取已知的当天订单
📋 测试订单: {len(KNOWN_TODAY_ORDERS)} 个 (我找到的当天未配送订单)
⏰ 当前日期: {TODAY}

如果这些订单你也能获取到，说明网络正常，只是扫描顺序问题
如果获取不到，说明网络环境有差异
""")
    
    success_count = 0
    
    for i, tracking in enumerate(KNOWN_TODAY_ORDERS[:10]):  # 先测试前10个
        if test_order(tracking):
            success_count += 1
        
        time.sleep(0.5)  # 避免请求过快
        
        if i == 4:
            print(f"\n📊 前5个测试结果: {success_count}/5 成功")
            if success_count == 0:
                print("❌ 网络环境可能有问题，建议检查网络设置")
                break
            elif success_count < 3:
                print("⚠️ 网络不稳定，建议使用简化版本")
            else:
                print("✅ 网络正常，继续测试...")
    
    print(f"\n📊 最终测试结果: {success_count}/{min(10, len(KNOWN_TODAY_ORDERS))} 成功")
    
    if success_count > 5:
        print("✅ 网络环境正常，原脚本应该能工作，只是需要更多时间")
        print("💡 建议: 继续运行原脚本，或使用优化版本")
    elif success_count > 0:
        print("⚠️ 网络不稳定，建议使用优化版本")
        print("💡 建议: 运行 optimized_for_slow_network.py")
    else:
        print("❌ 网络环境有问题")
        print("💡 建议: 检查网络连接、防火墙设置")

if __name__ == "__main__":
    main()