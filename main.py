#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Python 应用示例 - 包含 SSH 连接处理功能
"""

from ssh_handler import SSHConnectionHandler, handle_connection_failure


def calculator_demo():
    """计算器演示功能"""
    print("\n" + "=" * 50)
    print("计算器演示")
    print("=" * 50)
    
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


def ssh_connection_demo():
    """SSH 连接测试演示"""
    print("\n" + "=" * 50)
    print("SSH 连接测试")
    print("=" * 50)
    
    host = input("\n请输入远程主机地址 (如: example.com 或按回车使用 localhost): ").strip()
    if not host:
        host = "localhost"
    
    port_input = input("请输入 SSH 端口 (默认 22): ").strip()
    port = int(port_input) if port_input else 22
    
    # 创建 SSH 连接处理器
    handler = SSHConnectionHandler(host, port, timeout=10)
    
    # 测试连接
    success, error = handler.test_connection()
    
    if not success:
        print(f"\n❌ 连接失败: {error}")
        handler.print_diagnostics()
        
        # 询问是否重试
        retry = input("\n是否尝试重新连接？(y/n): ").lower()
        if retry == 'y':
            success, error = handler.retry_connection(max_retries=3, retry_delay=3)
            if not success:
                print(f"\n❌ 所有重试均失败")
                print("请查看 ssh_connection.log 文件获取详细日志")
            else:
                print("\n✅ 连接成功！")
    else:
        print("\n✅ 连接成功！")


def main():
    """主函数"""
    print("=" * 50)
    print("欢迎使用 Python 应用！")
    print("=" * 50)
    
    name = input("\n请输入您的名字: ")
    print(f"\n你好，{name}！很高兴认识你。")
    
    while True:
        print("\n" + "=" * 50)
        print("请选择功能:")
        print("=" * 50)
        print("1. 计算器")
        print("2. SSH 连接测试")
        print("3. 退出")
        print("=" * 50)
        
        choice = input("\n请输入选项 (1-3): ").strip()
        
        if choice == '1':
            calculator_demo()
        elif choice == '2':
            ssh_connection_demo()
        elif choice == '3':
            print("\n" + "=" * 50)
            print("感谢使用，再见！")
            print("=" * 50)
            break
        else:
            print("\n❌ 无效的选项，请输入 1-3")
    
    print("\n程序运行完成！")


if __name__ == "__main__":
    main()
