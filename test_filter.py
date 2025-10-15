#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
测试过滤规则
"""
from datetime import datetime

TODAY = datetime.now().strftime("%d/%m/%Y")
print(f"今天的日期: {TODAY}")

def is_today(date_str):
    """检查日期是否是今天"""
    return date_str and TODAY in str(date_str)

# 测试用例
test_cases = [
    {"issue_date": TODAY, "desc": "今天的订单"},
    {"issue_date": "14/10/2025", "desc": "昨天的订单"},
    {"issue_date": "10/10/2025", "desc": "之前的订单"},
    {"issue_date": None, "desc": "日期为空"},
    {"issue_date": "", "desc": "日期为空字符串"},
]

print(f"\n{'='*80}")
print("📋 过滤规则测试")
print(f"{'='*80}\n")

print("规则: 只保留今天的或日期为空的，排除今天之外的\n")

for case in test_cases:
    issue_date = case['issue_date']
    desc = case['desc']
    
    # 应用过滤逻辑
    if issue_date and not is_today(issue_date):
        result = "❌ 排除"
        reason = f"不是今天的订单（{issue_date}）"
    else:
        result = "✅ 保留"
        if not issue_date:
            reason = "日期为空，保留"
        else:
            reason = f"今天的订单（{issue_date}）"
    
    print(f"{result} | {desc:20s} | 日期: {str(issue_date):15s} | {reason}")

print(f"\n{'='*80}")
print("✅ 测试完成")
print(f"{'='*80}\n")

print("📝 总结:")
print(f"  ✅ 保留: 今天({TODAY}) 或 日期为空")
print(f"  ❌ 排除: 今天之外的所有日期")
