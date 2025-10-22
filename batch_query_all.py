#!/usr/bin/env python3
"""
批量查询 UID 1-7200 的今日订单
"""
import jwt
import requests
import urllib3
import time
import json
import csv
from concurrent.futures import ThreadPoolExecutor, as_completed
from collections import Counter

urllib3.disable_warnings()

# ==================== 配置 ====================
SECRET = b"vLv76fi1A4jVfbbTcJoZX1Xj9h8ZhTwgvLv76fi1A4jVfbbTcJoZX1Xj9h8ZhTwg"
BASE = "http://ws.ems.com.vn"
TARGET_DATE = "2025-10-22"
UID_START = 1
UID_END = 7200
MAX_WORKERS = 20  # 并发数

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
def get_today_orders(uid, date_filter=TARGET_DATE):
    """获取指定用户的今日订单"""
    try:
        token = generate_token(uid)
        
        # 只获取第一页，快速统计
        r = requests.get(
            f"{BASE}/api/v1/orders/list?page=1&limit=100",
            headers={"Authorization": f"Bearer {token}"},
            timeout=10,
            verify=False
        )
        
        if r.status_code != 200:
            return uid, 0, []
        
        data = r.json()
        if "data" not in data:
            return uid, 0, []
        
        orders = data["data"]
        
        # 筛选今日订单
        today_orders = [
            o for o in orders 
            if date_filter in o.get("created_at", "")
        ]
        
        return uid, len(today_orders), today_orders
        
    except Exception as e:
        return uid, 0, []

# ==================== 批量查询 ====================
def batch_query_all():
    """批量查询所有用户"""
    print("\n" + "=" * 80)
    print(f"📊 批量查询 UID {UID_START}-{UID_END} 的 {TARGET_DATE} 订单")
    print("=" * 80)
    
    all_orders = []
    user_stats = {}
    success_count = 0
    total_orders = 0
    
    start_time = time.time()
    
    with ThreadPoolExecutor(max_workers=MAX_WORKERS) as executor:
        # 提交所有任务
        futures = {
            executor.submit(get_today_orders, uid): uid 
            for uid in range(UID_START, UID_END + 1)
        }
        
        completed = 0
        
        for future in as_completed(futures):
            uid = futures[future]
            completed += 1
            
            try:
                uid, count, orders = future.result()
                
                if count > 0:
                    success_count += 1
                    total_orders += count
                    user_stats[uid] = count
                    all_orders.extend(orders)
                    print(f"✅ [{completed}/{UID_END}] UID {uid}: {count}条")
                else:
                    if completed % 100 == 0:
                        print(f"⏳ 进度: {completed}/{UID_END} ({completed*100//UID_END}%)")
                        
            except Exception as e:
                print(f"❌ UID {uid}: {e}")
    
    elapsed = time.time() - start_time
    
    print("\n" + "=" * 80)
    print("📈 统计结果")
    print("=" * 80)
    print(f"✅ 查询用户数: {UID_END}")
    print(f"✅ 有订单用户: {success_count} 人")
    print(f"✅ 订单总数: {total_orders} 条")
    print(f"⏱️  耗时: {elapsed:.1f}秒")
    print(f"🚀 速度: {UID_END/elapsed:.1f} UID/秒")
    
    # TOP用户
    print("\n📊 TOP 20 用户（按今日订单量）:")
    for uid, count in sorted(user_stats.items(), key=lambda x: x[1], reverse=True)[:20]:
        print(f"  UID {uid:5d}: {count:3d}条")
    
    return all_orders, user_stats

# ==================== 导出 ====================
def export_results(orders, user_stats):
    """导出结果"""
    
    # 导出全部订单
    with open(f"all_users_{TARGET_DATE}.json", "w", encoding="utf-8") as f:
        json.dump(orders, f, ensure_ascii=False, indent=2)
    print(f"\n✅ 订单导出: all_users_{TARGET_DATE}.json")
    
    # 导出CSV
    if orders:
        fields = ["tracking_code", "order_code", "created_at", "from_name", 
                  "to_name", "to_phone", "cod_amount", "status"]
        
        with open(f"all_users_{TARGET_DATE}.csv", "w", encoding="utf-8-sig", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=fields, extrasaction="ignore")
            writer.writeheader()
            writer.writerows(orders)
        print(f"✅ CSV导出: all_users_{TARGET_DATE}.csv")
    
    # 导出用户统计
    with open(f"user_stats_{TARGET_DATE}.json", "w", encoding="utf-8") as f:
        json.dump(user_stats, f, ensure_ascii=False, indent=2)
    print(f"✅ 统计导出: user_stats_{TARGET_DATE}.json")
    
    # 生成汇总报告
    with open(f"summary_{TARGET_DATE}.txt", "w", encoding="utf-8") as f:
        f.write(f"EMS订单统计报告 - {TARGET_DATE}\n")
        f.write("=" * 80 + "\n\n")
        f.write(f"查询范围: UID {UID_START}-{UID_END}\n")
        f.write(f"有订单用户: {len(user_stats)} 人\n")
        f.write(f"订单总数: {len(orders)} 条\n\n")
        
        f.write("TOP 50 用户:\n")
        for uid, count in sorted(user_stats.items(), key=lambda x: x[1], reverse=True)[:50]:
            f.write(f"  UID {uid}: {count}条\n")
    
    print(f"✅ 报告生成: summary_{TARGET_DATE}.txt")

# ==================== 主程序 ====================
if __name__ == "__main__":
    print("\n" + "=" * 80)
    print("🚀 EMS批量订单查询工具")
    print("=" * 80)
    
    # 执行批量查询
    all_orders, user_stats = batch_query_all()
    
    # 导出结果
    if all_orders:
        export_results(all_orders, user_stats)
        
        # 简单分析
        print("\n" + "=" * 80)
        print("📊 数据分析")
        print("=" * 80)
        
        # 发件人TOP
        senders = Counter(o.get('from_name') for o in all_orders)
        print(f"\n👤 TOP 10 发件人:")
        for sender, count in senders.most_common(10):
            print(f"  {sender}: {count}条")
        
        # 状态分布
        statuses = Counter(o.get('status') for o in all_orders)
        print(f"\n📦 订单状态分布:")
        for status, count in statuses.items():
            print(f"  状态{status}: {count}条")
        
        # 时间分布
        times = [o.get('created_at', '').split()[1][:2] if ' ' in o.get('created_at', '') else '' for o in all_orders]
        hours = Counter([t for t in times if t])
        print(f"\n⏰ 订单时段分布:")
        for hour in sorted(hours.keys()):
            print(f"  {hour}:00 - {hours[hour]}条")
    
    print("\n" + "=" * 80)
    print("✅ 查询完成！")
    print("=" * 80 + "\n")
