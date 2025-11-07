#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
A simple Chinese greeting response program
"""

def respond_to_greeting(greeting):
    """Respond to common Chinese greetings"""
    
    greetings_responses = {
        "你吃饭了吗": "吃了，你呢？😊 (Yes, I have. How about you?)",
        "你好": "你好！很高兴见到你！(Hello! Nice to meet you!)",
        "早上好": "早上好！祝你有美好的一天！(Good morning! Have a wonderful day!)",
        "晚上好": "晚上好！(Good evening!)",
        "你好吗": "我很好，谢谢！你呢？(I'm fine, thank you! And you?)",
    }
    
    # Check for exact match
    if greeting in greetings_responses:
        return greetings_responses[greeting]
    
    # Default response
    return "你好！(Hello!)"

def main():
    print("=== 中文问候程序 (Chinese Greeting Program) ===\n")
    
    # Respond to the greeting
    user_greeting = "你吃饭了吗"
    response = respond_to_greeting(user_greeting)
    
    print(f"问候 (Greeting): {user_greeting}")
    print(f"回复 (Response): {response}")
    print()
    
    # Interactive mode
    print("你可以输入其他问候语试试！(Try other greetings!)")
    print("输入 'quit' 退出 (Type 'quit' to exit)\n")
    
    while True:
        user_input = input("你: ")
        if user_input.lower() in ['quit', 'exit', '退出']:
            print("再见！(Goodbye!)")
            break
        
        response = respond_to_greeting(user_input)
        print(f"回复: {response}\n")

if __name__ == "__main__":
    main()
