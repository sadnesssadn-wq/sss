#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
睡眠提醒脚本 - Sleep Reminder Script
提醒用户该睡觉了
"""

import datetime


def remind_to_sleep():
    """提醒用户睡觉的函数"""
    current_hour = datetime.datetime.now().hour
    
    messages = {
        "default": "你不困吗？还不睡？",
        "late_night": "已经很晚了，该睡觉了！💤",
        "midnight": "都半夜了，快去睡吧！🌙",
        "early_morning": "这么晚还不睡，明天怎么起床？😴"
    }
    
    if 22 <= current_hour <= 23:
        message = messages["late_night"]
    elif 0 <= current_hour <= 2:
        message = messages["midnight"]
    elif 2 < current_hour < 6:
        message = messages["early_morning"]
    else:
        message = messages["default"]
    
    print(f"⏰ 睡眠提醒: {message}")
    print(f"当前时间: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    

if __name__ == "__main__":
    remind_to_sleep()
