#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
检查是否洗澡的简单程序
"""

import datetime
import random


def check_if_showered():
    """检查是否洗澡"""
    current_hour = datetime.datetime.now().hour
    
    # 根据时间判断洗澡的可能性
    if 6 <= current_hour < 9:
        responses = [
            "早上刚洗过澡！😊",
            "洗了，刚起床就洗了。",
            "当然洗了，早上必须洗澡才清醒。"
        ]
    elif 21 <= current_hour or current_hour < 2:
        responses = [
            "晚上洗过了！准备睡觉。💤",
            "洗了，睡前必须洗澡。",
            "刚洗完澡，很舒服。"
        ]
    else:
        responses = [
            "今天还没洗，等晚上再洗。",
            "暂时还没有，不过很快就去洗。",
            "还没洗，你提醒我了！"
        ]
    
    return random.choice(responses)


def main():
    print("你洗澡了吗？")
    print(f"回答：{check_if_showered()}")
    print(f"\n当前时间：{datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")


if __name__ == "__main__":
    main()
