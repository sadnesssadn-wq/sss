#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
详细解释：如何确定当天的第一条订单
"""

import hashlib
import requests
from datetime import datetime
import time

# API配置
API_URL = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="
TODAY = datetime.now().strftime("%d/%m/%Y")

def sign(text):
    return hashlib.sha256((text + API_KEY).encode()).hexdigest().upper()

def check_order(tracking):
    """检查订单，返回是否是今日"""
    try:
        sig = sign(tracking)
        headers = {
            "Authorization": f"Basic {BASIC_AUTH}",
            "APIKey": API_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        }
        data = {"ParcelCode": tracking, "Signature": sig}
        
        response = requests.post(API_URL, headers=headers, data=data, timeout=5)
        
        if response.status_code == 200:
            result = response.json()
            if result.get('Code') == '00' and result.get('Value'):
                issue_date = result['Value'].get('IssueDate', '')
                return TODAY in str(issue_date), issue_date
        
        return False, None
    except:
        return False, None

print(f"""
╔════════════════════════════════════════════════════════════════════════════╗
║               📚 如何确定当天的第一条订单 - 详细解释                          ║
╚════════════════════════════════════════════════════════════════════════════╝

今天日期: {TODAY}
已知订单: EP493018285VN （你测试的这个）

""")

# ==================== 步骤1: 验证已知订单 ====================
print("=" * 80)
print("步骤1: 验证已知订单是否是今日")
print("=" * 80)

known_tracking = "EP493018285VN"
known_num = 493018285

print(f"\n检查: {known_tracking}")
is_today, issue_date = check_order(known_tracking)

if is_today:
    print(f"✅ 确认是今日订单！日期: {issue_date}")
    print(f"   运单号数字部分: {known_num}")
else:
    print(f"❌ 不是今日订单，日期: {issue_date}")
    print("无法继续演示，需要一个今日订单作为起点")
    exit(1)

time.sleep(1)

# ==================== 步骤2: 向前探测 ====================
print("\n" + "=" * 80)
print("步骤2: 向前探测，寻找更小的今日订单")
print("=" * 80)

print(f"\n策略: 从 {known_num} 向前跳跃式检查，找到今日订单的起始范围\n")

# 向前检查几个位置
test_positions = [
    known_num - 100,  # 向前100
    known_num - 200,  # 向前200
    known_num - 500,  # 向前500
]

for i, test_num in enumerate(test_positions, 1):
    test_tracking = f"EP{test_num:09d}VN"
    print(f"{i}. 检查 {test_tracking} (向前 {known_num - test_num} 个号) ... ", end="", flush=True)
    
    is_today, issue_date = check_order(test_tracking)
    
    if is_today:
        print(f"✅ 今日订单！")
        print(f"   → 说明第一条在 {test_num} 或之前")
    else:
        if issue_date:
            print(f"❌ 非今日 ({issue_date})")
            print(f"   → 说明第一条在 {test_num} 之后")
        else:
            print(f"⚪ 订单不存在")
    
    time.sleep(0.5)

# ==================== 步骤3: 二分查找精确定位 ====================
print("\n" + "=" * 80)
print("步骤3: 使用二分查找精确定位第一条")
print("=" * 80)

print(f"""
原理说明：
假设今日订单的范围是：493018000 - 493018285

我们用二分查找快速定位第一条：

步骤：
1. left=493018000, right=493018285, mid=493018142
2. 检查 mid，如果是今日 → right=mid（向左找）
3. 检查 mid，如果非今日 → left=mid+1（向右找）
4. 重复直到 left == right

这样只需要 log2(285) ≈ 8-10 次查询！
""")

print("实际演示（向前1000个号）：\n")

left = known_num - 1000
right = known_num
first_today_num = known_num
iteration = 0

while left < right and iteration < 10:  # 限制10次演示
    iteration += 1
    mid = (left + right) // 2
    tracking = f"EP{mid:09d}VN"
    
    print(f"#{iteration:2d} 范围: [{left:09d}, {right:09d}]")
    print(f"    检查: {tracking} ... ", end="", flush=True)
    
    is_today, issue_date = check_order(tracking)
    
    if is_today:
        print(f"✅ 今日")
        print(f"    → 更新第一条候选: {mid}")
        print(f"    → 继续向左查找: right={mid}")
        first_today_num = mid
        right = mid
    else:
        if issue_date:
            print(f"❌ 非今日 ({issue_date})")
        else:
            print(f"⚪ 不存在")
        print(f"    → 向右查找: left={mid+1}")
        left = mid + 1
    
    print()
    time.sleep(0.5)

# ==================== 步骤4: 验证结果 ====================
print("=" * 80)
print("步骤4: 验证找到的第一条")
print("=" * 80)

print(f"\n当前找到的第一条候选: EP{first_today_num:09d}VN")
print(f"\n验证策略: 检查它前面几个号，确认都不是今日订单\n")

# 检查前面5个号
for i in range(1, 6):
    check_num = first_today_num - i
    tracking = f"EP{check_num:09d}VN"
    
    print(f"检查前 {i} 个: {tracking} ... ", end="", flush=True)
    
    is_today, issue_date = check_order(tracking)
    
    if is_today:
        print(f"⚠️  警告：发现更早的今日订单！")
        print(f"   需要继续向前查找")
        first_today_num = check_num
    else:
        if issue_date:
            print(f"✅ 非今日 ({issue_date})")
        else:
            print(f"✅ 不存在")
    
    time.sleep(0.3)

# ==================== 最终结果 ====================
print("\n" + "=" * 80)
print("🏆 最终结果")
print("=" * 80)

first_tracking = f"EP{first_today_num:09d}VN"
print(f"""
✅ EP系列当天的第一条订单（可能）：

运单号: {first_tracking}
数字部分: {first_today_num}

⚠️  注意事项：

1. 这只是 EP 系列的第一条
   - 还有其他系列：EG, EF, EK, EB, ED 等
   - 需要分别在每个系列中查找第一条

2. "全局第一条" = 所有系列中数字最小的
   例如：
   - EP493018100VN → 数字: 493018100
   - EG040816500VN → 数字: 040816500 ← 这个更小！

3. 要找全局第一条，需要：
   - 在每个系列（EP, EG, EF...）中找第一条
   - 比较所有系列的数字部分
   - 数字最小的就是全局第一条

4. 完整扫描策略：
   - 先粗扫描找到今日订单的大致范围
   - 再二分查找精确定位
   - 最后验证确认
""")

print("=" * 80)
print("📖 总结")
print("=" * 80)

print("""
确定第一条订单的完整流程：

1️⃣  找到一个今日订单作为起点
   └─ 例如：EP493018285VN

2️⃣  向前探测，确定今日订单的大致起始范围
   └─ 跳跃式检查：-100, -500, -1000...

3️⃣  使用二分查找精确定位
   └─ 在确定的范围内快速找到第一条

4️⃣  验证确认
   └─ 检查前面几个号，确保没有更早的

5️⃣  重复以上步骤到所有系列（EP, EG, EF...）
   └─ 每个系列都找到第一条

6️⃣  比较所有系列，找出全局第一条
   └─ 数字部分最小的就是答案

💡 使用代理池的原因：
   - 需要大量请求（可能上万次）
   - 不用代理会被封IP
   - 100个代理可以100倍加速
""")

print("\n" + "=" * 80)
