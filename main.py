#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
增强版 Python 计算器应用
支持多种运算、历史记录和菜单操作
"""

import math
from datetime import datetime


class Calculator:
    """计算器类，支持多种运算和历史记录"""
    
    def __init__(self):
        """初始化计算器"""
        self.history = []
    
    def add_to_history(self, operation, result):
        """添加计算记录到历史"""
        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        self.history.append({
            'time': timestamp,
            'operation': operation,
            'result': result
        })
    
    def basic_operations(self):
        """基本四则运算"""
        try:
            num1 = float(input("\n请输入第一个数字: "))
            num2 = float(input("请输入第二个数字: "))
            
            print(f"\n结果:")
            add_result = num1 + num2
            sub_result = num1 - num2
            mul_result = num1 * num2
            
            print(f"  {num1} + {num2} = {add_result}")
            print(f"  {num1} - {num2} = {sub_result}")
            print(f"  {num1} × {num2} = {mul_result}")
            
            self.add_to_history(f"{num1} + {num2}", add_result)
            self.add_to_history(f"{num1} - {num2}", sub_result)
            self.add_to_history(f"{num1} × {num2}", mul_result)
            
            if num2 != 0:
                div_result = num1 / num2
                print(f"  {num1} ÷ {num2} = {div_result}")
                self.add_to_history(f"{num1} ÷ {num2}", div_result)
            else:
                print("  除数不能为 0")
                
        except ValueError:
            print("\n错误：请输入有效的数字！")
        except Exception as e:
            print(f"\n发生错误：{e}")
    
    def power_operation(self):
        """幂运算"""
        try:
            base = float(input("\n请输入底数: "))
            exponent = float(input("请输入指数: "))
            result = base ** exponent
            print(f"\n结果: {base} ^ {exponent} = {result}")
            self.add_to_history(f"{base} ^ {exponent}", result)
        except ValueError:
            print("\n错误：请输入有效的数字！")
        except Exception as e:
            print(f"\n发生错误：{e}")
    
    def square_root(self):
        """平方根运算"""
        try:
            num = float(input("\n请输入数字: "))
            if num < 0:
                print("\n错误：不能计算负数的平方根！")
            else:
                result = math.sqrt(num)
                print(f"\n结果: √{num} = {result}")
                self.add_to_history(f"√{num}", result)
        except ValueError:
            print("\n错误：请输入有效的数字！")
        except Exception as e:
            print(f"\n发生错误：{e}")
    
    def percentage(self):
        """百分比计算"""
        try:
            num = float(input("\n请输入数字: "))
            percent = float(input("请输入百分比: "))
            result = (num * percent) / 100
            print(f"\n结果: {num} 的 {percent}% = {result}")
            self.add_to_history(f"{num} 的 {percent}%", result)
        except ValueError:
            print("\n错误：请输入有效的数字！")
        except Exception as e:
            print(f"\n发生错误：{e}")
    
    def show_history(self):
        """显示计算历史"""
        if not self.history:
            print("\n暂无计算历史记录。")
        else:
            print("\n" + "=" * 60)
            print("计算历史记录")
            print("=" * 60)
            for i, record in enumerate(self.history[-10:], 1):  # 只显示最近10条
                print(f"{i}. [{record['time']}] {record['operation']} = {record['result']}")
            print("=" * 60)
    
    def clear_history(self):
        """清除历史记录"""
        self.history = []
        print("\n历史记录已清除。")


def show_menu():
    """显示菜单"""
    print("\n" + "=" * 50)
    print("请选择操作：")
    print("  1. 基本运算（加减乘除）")
    print("  2. 幂运算")
    print("  3. 平方根")
    print("  4. 百分比计算")
    print("  5. 查看历史记录")
    print("  6. 清除历史记录")
    print("  0. 退出程序")
    print("=" * 50)


def main():
    """主函数"""
    print("=" * 50)
    print("欢迎使用增强版 Python 计算器！")
    print("=" * 50)
    
    name = input("\n请输入您的名字: ")
    print(f"\n你好，{name}！很高兴认识你。")
    
    calc = Calculator()
    
    while True:
        show_menu()
        choice = input("\n请输入选项 (0-6): ").strip()
        
        if choice == '1':
            calc.basic_operations()
        elif choice == '2':
            calc.power_operation()
        elif choice == '3':
            calc.square_root()
        elif choice == '4':
            calc.percentage()
        elif choice == '5':
            calc.show_history()
        elif choice == '6':
            calc.clear_history()
        elif choice == '0':
            print("\n" + "=" * 50)
            print(f"再见，{name}！感谢使用！")
            print("=" * 50)
            break
        else:
            print("\n错误：无效的选项，请重新选择！")


if __name__ == "__main__":
    main()
