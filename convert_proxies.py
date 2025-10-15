#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
代理格式转换工具
从 IP:PORT:USER:PASS 转换为标准格式
"""

import sys

def convert_proxy_format(line):
    """
    转换代理格式
    输入: 91.211.87.215:7205:uadkcvtn:uo2rzar814ph
    输出: uadkcvtn:uo2rzar814ph@91.211.87.215:7205
    """
    parts = line.strip().split(':')
    
    if len(parts) == 4:
        ip, port, username, password = parts
        # 标准格式: username:password@ip:port
        return f"{username}:{password}@{ip}:{port}"
    else:
        # 如果格式不对，返回原始内容
        return line.strip()

def main():
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                       📝 代理格式转换工具                                   ║
╚════════════════════════════════════════════════════════════════════════════╝

输入格式: IP:PORT:USER:PASS
输出格式: USER:PASS@IP:PORT

""")
    
    # 示例数据
    sample_proxies = """91.211.87.215:7205:uadkcvtn:uo2rzar814ph
104.238.36.64:6071:uadkcvtn:uo2rzar814ph
104.239.40.211:6830:uadkcvtn:uo2rzar814ph
67.227.37.26:5568:uadkcvtn:uo2rzar814ph"""
    
    print("示例转换:")
    print("-" * 80)
    
    converted = []
    for line in sample_proxies.split('\n'):
        original = line.strip()
        converted_line = convert_proxy_format(original)
        converted.append(converted_line)
        print(f"原始: {original}")
        print(f"转换: {converted_line}")
        print()
    
    # 保存到文件
    with open('proxies.txt', 'w') as f:
        for proxy in converted:
            f.write(f"{proxy}\n")
    
    print("=" * 80)
    print(f"✅ 已转换 {len(converted)} 个代理")
    print(f"✅ 已保存到: proxies.txt")
    print("=" * 80)
    
    print("""
下一步:
1. 把你的所有代理粘贴到一个文本文件中
2. 运行: python3 convert_proxies.py < your_proxies.txt
3. 或者直接编辑这个脚本，把示例数据替换成你的代理列表
4. 然后运行: python3 test_proxies.py 测试代理
""")

if __name__ == "__main__":
    main()
