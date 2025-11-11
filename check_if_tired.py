#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
检查用户是否疲倦的小程序
A simple program to check if the user is tired
"""

def check_if_tired():
    """询问用户是否疲倦并给出建议"""
    print("你好呀！👋")
    print("让我来关心一下你~")
    
    response = input("\n你困不困？(是/否 或 yes/no): ").strip().lower()
    
    # 判断用户的回答
    tired_responses = ['是', 'yes', 'y', '困', '累', '疲倦', '想睡']
    not_tired_responses = ['否', 'no', 'n', '不困', '不累', '精神']
    
    if any(word in response for word in tired_responses):
        print("\n😴 看来你确实有点累了呢！")
        print("💡 建议：")
        print("   • 休息一下，喝杯水")
        print("   • 站起来活动活动")
        print("   • 如果可以的话，小睡15-20分钟")
        print("   • 保持良好的作息很重要哦！")
    elif any(word in response for word in not_tired_responses):
        print("\n😊 太好了！精神满满！")
        print("💪 继续保持这份活力！")
        print("   • 记得定时休息")
        print("   • 多喝水")
        print("   • 适当运动")
    else:
        print("\n🤔 我没太明白你的回答...")
        print("不过记得要好好照顾自己哦！")

if __name__ == "__main__":
    check_if_tired()
