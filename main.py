#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
简单的 Python 应用示例
"""

def main():
    """主函数"""
    print("=" * 50)
    print("欢迎使用 Python 应用！")
    print("=" * 50)
    
    name = input("\n请输入您的名字: ")
    print(f"\n你好，{name}！很高兴认识你。")
    
    # 简单的计算器示例
    try:
        num1 = float(input("\n请输入第一个数字: "))
        num2 = float(input("请输入第二个数字: "))
        
        print(f"\n结果:")
        print(f"  {num1} + {num2} = {num1 + num2}")
        print(f"  {num1} - {num2} = {num1 - num2}")
        print(f"  {num1} × {num2} = {num1 * num2}")
        if num2 != 0:
            print(f"  {num1} ÷ {num2} = {num1 / num2}")
        else:
            print("  除数不能为 0")
    except ValueError:
        print("\n错误：请输入有效的数字！")
    except Exception as e:
        print(f"\n发生错误：{e}")
    
    print("\n" + "=" * 50)
    print("程序运行完成！")
    print("=" * 50)


if __name__ == "__main__":
    main()
