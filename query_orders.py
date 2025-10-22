#!/usr/bin/env python3
"""
EMS Portal 订单查询脚本
用法: python3 query_orders.py
"""
import jwt
import requests
import urllib3
import time
import json
import csv
from concurrent.futures import ThreadPoolExecutor, as_completed

urllib3.disable_warnings()

# ==================== 配置 ====================
SECRET = b"vLv76fi1A4jVfbbTcJoZX1Xj9h8ZhTwgvLv76fi1A4jVfbbTcJoZX1Xj9h8ZhTwg"
BASE = "http://ws.ems.com.vn"

# ==================== JWT生成 ====================
def generate_token(uid):
    """生成JWT Token"""
    server_ts = int(time.time())
    payload = {
        "user_info": {"email": f"user{uid}@ems.com.vn", "username": f"user{uid}"},
        "sub": str(uid),
        "aud": "ems-portal",
        "iss": "ems-auth",
        "iat": server_ts - 3600,
        "exp": server_ts + 86400,
        "nbf": server_ts - 3600
    }
    return jwt.encode(payload, SECRET, algorithm="HS256")

# ==================== API查询 ====================
def get_orders(uid, page=1, limit=100):
    """获取订单列表"""
    token = generate_token(uid)
    r = requests.get(
        f"{BASE}/api/v1/orders/list?page={page}&limit={limit}",
        headers={"Authorization": f"Bearer {token}"},
        timeout=30,
        verify=False
    )
    if r.status_code == 200:
        return r.json()
    return None

def get_inventory(uid, page=1, limit=100):
    """获取Inventory (发件人完整信息)"""
    token = generate_token(uid)
    r = requests.get(
        f"{BASE}/api/v1/inventory/list?page={page}&limit={limit}",
        headers={"Authorization": f"Bearer {token}"},
        timeout=30,
        verify=False
    )
    if r.status_code == 200:
        return r.json()
    return None

def get_all_orders(uid):
    """获取用户所有订单（分页）"""
    all_orders = []
    page = 1
    
    while True:
        result = get_orders(uid, page=page, limit=100)
        if not result or "data" not in result:
            break
        
        orders = result["data"]
        if not orders:
            break
        
        all_orders.extend(orders)
        
        total = result.get("total", 0)
        print(f"  [UID {uid}] 页{page}: +{len(orders)}条 (总计{total})")
        
        if len(all_orders) >= total:
            break
        
        page += 1
    
    return all_orders

def get_all_inventory(uid):
    """获取用户所有Inventory（分页）"""
    all_inv = []
    page = 1
    
    while True:
        result = get_inventory(uid, page=page, limit=100)
        if not result or "data" not in result:
            break
        
        items = result["data"]
        if not items:
            break
        
        all_inv.extend(items)
        
        total = result.get("total", 0)
        
        if len(all_inv) >= total:
            break
        
        page += 1
    
    return all_inv

# ==================== 数据处理 ====================
def filter_today_orders(orders, target_date="2025-10-21"):
    """筛选指定日期订单"""
    today_orders = []
    
    for order in orders:
        created = order.get("created_at", "")
        if target_date in created:
            today_orders.append(order)
    
    return today_orders

def enrich_sender_phone(orders, inventory_map):
    """补全发件人完整电话"""
    for order in orders:
        inv_id = order.get("inventory_id")
        if inv_id and inv_id in inventory_map:
            inv = inventory_map[inv_id]
            order["sender_phone_full"] = inv.get("from_phone", "")
            order["sender_name_full"] = inv.get("from_name", "")
            order["sender_address_full"] = inv.get("from_address", "")
    
    return orders

# ==================== 导出 ====================
def export_json(data, filename):
    """导出JSON格式"""
    with open(filename, "w", encoding="utf-8") as f:
        json.dump(data, f, ensure_ascii=False, indent=2)
    print(f"✅ JSON导出: {filename}")

def export_csv(orders, filename):
    """导出CSV格式 (Excel兼容)"""
    if not orders:
        print("⚠️  无数据导出")
        return
    
    # 定义导出字段
    fields = [
        "tracking_code",      # 运单号
        "order_code",         # 订单号
        "created_at",         # 创建时间
        "from_name",          # 发件人
        "sender_phone_full",  # 发件人完整电话
        "from_address",       # 发件地址
        "to_name",            # 收件人
        "to_phone",           # 收件电话(脱敏)
        "to_address",         # 收件地址
        "cod_amount",         # COD金额
        "status"              # 状态
    ]
    
    with open(filename, "w", encoding="utf-8-sig", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields, extrasaction="ignore")
        writer.writeheader()
        writer.writerows(orders)
    
    print(f"✅ CSV导出: {filename}")

# ==================== 主功能 ====================
def query_single_user(uid, date_filter=None, with_sender_phone=True):
    """
    查询单个用户订单
    
    参数:
        uid: 用户ID
        date_filter: 日期过滤 (如 "2025-10-21")
        with_sender_phone: 是否补全发件人电话
    """
    print("\n" + "=" * 80)
    print(f"查询 UID={uid}")
    print("=" * 80)
    
    # 1. 获取订单
    print("\n[1] 获取订单...")
    orders = get_all_orders(uid)
    print(f"  ✅ 订单总数: {len(orders)}")
    
    # 2. 过滤日期
    if date_filter:
        orders = filter_today_orders(orders, date_filter)
        print(f"  ✅ {date_filter}订单: {len(orders)}")
    
    # 3. 补全发件人电话
    if with_sender_phone and orders:
        print("\n[2] 获取Inventory (发件人完整信息)...")
        inventory = get_all_inventory(uid)
        print(f"  ✅ Inventory总数: {len(inventory)}")
        
        inv_map = {item["id"]: item for item in inventory}
        orders = enrich_sender_phone(orders, inv_map)
        
        complete_count = sum(1 for o in orders if o.get("sender_phone_full"))
        print(f"  ✅ 补全发件人电话: {complete_count}/{len(orders)}")
    
    return orders

def query_multiple_users(uid_list, date_filter=None, max_workers=5):
    """
    批量查询多用户
    
    参数:
        uid_list: UID列表
        date_filter: 日期过滤
        max_workers: 并发数
    """
    print("\n" + "=" * 80)
    print(f"批量查询 {len(uid_list)} 个用户")
    print("=" * 80)
    
    all_orders = []
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = {
            executor.submit(query_single_user, uid, date_filter): uid 
            for uid in uid_list
        }
        
        for future in as_completed(futures):
            uid = futures[future]
            try:
                orders = future.result()
                all_orders.extend(orders)
                print(f"✅ UID {uid}: {len(orders)}条")
            except Exception as e:
                print(f"❌ UID {uid}: {e}")
    
    return all_orders

# ==================== 使用示例 ====================
if __name__ == "__main__":
    print("\n" + "=" * 80)
    print("EMS Portal 订单查询脚本 v1.0")
    print("=" * 80)
    
    # ===== 示例1: 查询单个用户当天订单 =====
    print("\n【示例1】查询UID=33的2025-10-22订单")
    
    orders = query_single_user(
        uid=33,
        date_filter="2025-10-22",  # 修改日期
        with_sender_phone=False     # 跳过发件人电话补全（避免超时）
    )
    
    if orders:
        # 导出JSON和CSV
        export_json(orders, "uid33_today.json")
        export_csv(orders, "uid33_today.csv")
        
        # 预览第一条
        print("\n订单预览:")
        sample = orders[0]
        print(f"  运单号: {sample.get('tracking_code')}")
        print(f"  订单号: {sample.get('order_code')}")
        print(f"  发件人: {sample.get('from_name')}")
        print(f"  发件电话(完整): {sample.get('sender_phone_full', 'N/A')}")
        print(f"  收件人: {sample.get('to_name')}")
        print(f"  收件电话(脱敏): {sample.get('to_phone')}")
    
    # ===== 示例2: 批量查询TOP用户 =====
    """
    print("\n【示例2】批量查询TOP 10用户当天订单")
    
    top_uids = [33, 7, 37, 43, 10, 13, 40, 23, 44, 1]
    
    all_orders = query_multiple_users(
        uid_list=top_uids,
        date_filter="2025-10-21",
        max_workers=5
    )
    
    export_json(all_orders, "top10_today.json")
    export_csv(all_orders, "top10_today.csv")
    """
    
    # ===== 示例3: 获取全部历史订单 =====
    """
    print("\n【示例3】获取UID=33全部历史订单")
    
    orders = query_single_user(
        uid=33,
        date_filter=None,  # 不过滤日期
        with_sender_phone=True
    )
    
    export_json(orders, "uid33_all.json")
    export_csv(orders, "uid33_all.csv")
    """
    
    print("\n" + "=" * 80)
    print("✅ 查询完成")
    print("=" * 80 + "\n")
