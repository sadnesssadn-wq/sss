#!/usr/bin/env python3
"""
完整查询TOP用户的今日订单（修复分页问题）
"""
import jwt
import requests
import urllib3
import time
import json
from concurrent.futures import ThreadPoolExecutor, as_completed

urllib3.disable_warnings()

# ==================== 配置 ====================
SECRET = b"vLv76fi1A4jVfbbTcJoZX1Xj9h8ZhTwgvLv76fi1A4jVfbbTcJoZX1Xj9h8ZhTwg"
BASE = "http://ws.ems.com.vn"
TARGET_DATE = "2025-10-22"

# 达到100条上限的用户（需要完整查询）
TOP_USERS = [423, 3338, 3340, 4318, 4704, 4703, 4706, 33]

# 其他高频用户（>= 50条的）
HIGH_FREQ_USERS = [255, 281, 744, 753, 741, 751, 747, 749, 755, 2667, 3166, 3165, 
                   3339, 3423, 1240, 622, 703, 4240, 154, 410, 577, 572, 4615]

ALL_USERS = list(set(TOP_USERS + HIGH_FREQ_USERS))

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

# ==================== 完整分页查询 ====================
def get_all_orders(uid):
    """获取用户所有订单（完整分页）"""
    all_orders = []
    page = 1
    
    while True:
        try:
            token = generate_token(uid)
            r = requests.get(
                f"{BASE}/api/v1/orders/list?page={page}&limit=100",
                headers={"Authorization": f"Bearer {token}"},
                timeout=15,
                verify=False
            )
            
            if r.status_code != 200:
                break
            
            result = r.json()
            if not result or "data" not in result:
                break
            
            orders = result["data"]
            if not orders:
                break
            
            all_orders.extend(orders)
            
            total = result.get("total", 0)
            
            # 如果已获取全部，退出
            if len(all_orders) >= total:
                break
            
            page += 1
            
            # 防止无限循环
            if page > 500:
                print(f"  ⚠️  UID {uid}: 页数超过500，强制停止")
                break
                
        except Exception as e:
            print(f"  ❌ UID {uid} 页{page}: {e}")
            break
    
    return all_orders

def filter_today_orders(orders, date_filter=TARGET_DATE):
    """筛选今日订单"""
    return [o for o in orders if date_filter in o.get("created_at", "")]

def query_user_complete(uid):
    """完整查询单个用户"""
    try:
        print(f"🔍 查询 UID {uid}...")
        
        # 获取全部订单
        all_orders = get_all_orders(uid)
        total_orders = len(all_orders)
        
        # 筛选今日订单
        today_orders = filter_today_orders(all_orders)
        today_count = len(today_orders)
        
        print(f"  ✅ UID {uid}: 总订单 {total_orders}条, 今日 {today_count}条")
        
        return uid, today_count, today_orders, total_orders
        
    except Exception as e:
        print(f"  ❌ UID {uid}: {e}")
        return uid, 0, [], 0

# ==================== 批量查询 ====================
def batch_query_complete():
    """批量完整查询"""
    print("\n" + "=" * 80)
    print(f"📊 完整查询 {len(ALL_USERS)} 个TOP用户的 {TARGET_DATE} 订单")
    print("=" * 80)
    print(f"用户列表: {sorted(ALL_USERS)}\n")
    
    all_orders = []
    user_stats = {}
    
    start_time = time.time()
    
    with ThreadPoolExecutor(max_workers=10) as executor:
        futures = {
            executor.submit(query_user_complete, uid): uid 
            for uid in ALL_USERS
        }
        
        for future in as_completed(futures):
            uid = futures[future]
            try:
                uid, today_count, orders, total = future.result()
                
                if today_count > 0:
                    user_stats[uid] = {
                        "today": today_count,
                        "total": total
                    }
                    all_orders.extend(orders)
                    
            except Exception as e:
                print(f"❌ UID {uid}: {e}")
    
    elapsed = time.time() - start_time
    
    print("\n" + "=" * 80)
    print("📈 完整统计结果")
    print("=" * 80)
    print(f"✅ 查询用户数: {len(ALL_USERS)}")
    print(f"✅ 有今日订单: {len(user_stats)} 人")
    print(f"✅ 今日订单总数: {len(all_orders)} 条")
    print(f"⏱️  耗时: {elapsed:.1f}秒")
    
    # 排序显示
    print("\n📊 用户详情（按今日订单量排序）:")
    print(f"{'UID':<8} {'今日订单':<12} {'历史总订单':<15} {'占比':<10}")
    print("-" * 50)
    
    sorted_users = sorted(user_stats.items(), key=lambda x: x[1]["today"], reverse=True)
    for uid, stats in sorted_users:
        today = stats["today"]
        total = stats["total"]
        ratio = (today / total * 100) if total > 0 else 0
        print(f"{uid:<8} {today:<12} {total:<15} {ratio:.2f}%")
    
    return all_orders, user_stats

# ==================== 导出 ====================
def export_corrected_results(orders, user_stats):
    """导出修正后的结果"""
    
    # 导出订单
    with open(f"top_users_corrected_{TARGET_DATE}.json", "w", encoding="utf-8") as f:
        json.dump(orders, f, ensure_ascii=False, indent=2)
    print(f"\n✅ 导出: top_users_corrected_{TARGET_DATE}.json")
    
    # 导出统计
    with open(f"top_users_stats_{TARGET_DATE}.json", "w", encoding="utf-8") as f:
        json.dump(user_stats, f, ensure_ascii=False, indent=2)
    print(f"✅ 导出: top_users_stats_{TARGET_DATE}.json")
    
    # 生成对比报告
    with open(f"correction_report_{TARGET_DATE}.txt", "w", encoding="utf-8") as f:
        f.write(f"订单数据修正报告 - {TARGET_DATE}\n")
        f.write("=" * 80 + "\n\n")
        f.write("修正前问题: 只查询第1页（100条），导致数据不完整\n")
        f.write("修正后方法: 完整分页查询所有订单\n\n")
        f.write(f"查询用户数: {len(ALL_USERS)}\n")
        f.write(f"今日订单总数: {len(orders)}条\n\n")
        
        f.write("用户详情:\n")
        f.write("-" * 80 + "\n")
        sorted_users = sorted(user_stats.items(), key=lambda x: x[1]["today"], reverse=True)
        for uid, stats in sorted_users:
            f.write(f"UID {uid:5d}: 今日{stats['today']:4d}条 / 总计{stats['total']:6d}条\n")
    
    print(f"✅ 报告: correction_report_{TARGET_DATE}.txt")

# ==================== 主程序 ====================
if __name__ == "__main__":
    print("\n" + "=" * 80)
    print("🔧 EMS订单数据修正工具 - 完整分页查询")
    print("=" * 80)
    
    # 执行查询
    all_orders, user_stats = batch_query_complete()
    
    # 导出结果
    if all_orders:
        export_corrected_results(all_orders, user_stats)
        
        # 对比分析
        print("\n" + "=" * 80)
        print("📊 数据对比分析")
        print("=" * 80)
        
        original_total = 3282  # 之前的结果
        corrected_total = len(all_orders)
        difference = corrected_total - original_total
        
        print(f"\n修正前订单数: {original_total}条")
        print(f"修正后订单数: {corrected_total}条")
        print(f"差异: +{difference}条 ({difference/original_total*100:.1f}%)")
        
        if difference > 0:
            print(f"\n⚠️  之前漏掉了 {difference}条 订单！")
    
    print("\n" + "=" * 80)
    print("✅ 修正完成！")
    print("=" * 80 + "\n")
