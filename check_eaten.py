#!/usr/bin/env python3
"""检查用户是否吃饭"""

import sys
from datetime import datetime

def check_if_eaten():
    """检查用户是否吃饭"""
    current_hour = datetime.now().hour
    
    # 根据时间段判断
    if 6 <= current_hour < 9:
        print("现在是早餐时间，记得吃早餐！")
    elif 11 <= current_hour < 14:
        print("现在是午餐时间，该吃午饭了！")
    elif 17 <= current_hour < 20:
        print("现在是晚餐时间，该吃晚饭了！")
    else:
        print("不在用餐时间，但记得按时吃饭！")
    
    # 询问用户
    print("\n你吃饭了吗？")
    
    return True

if __name__ == "__main__":
    check_if_eaten()
