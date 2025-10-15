#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
批量转换代理格式
"""

import sys

def convert_proxy_format(line):
    """转换 IP:PORT:USER:PASS 为 USER:PASS@IP:PORT"""
    parts = line.strip().split(':')
    
    if len(parts) == 4:
        ip, port, username, password = parts
        return f"{username}:{password}@{ip}:{port}"
    else:
        return line.strip()

def main():
    print("""
╔════════════════════════════════════════════════════════════════════════════╗
║                     📝 批量代理格式转换工具                                  ║
╚════════════════════════════════════════════════════════════════════════════╝

使用方法:
1. 把你的代理列表保存为 my_proxies.txt
2. 运行: python3 batch_convert_proxies.py my_proxies.txt
3. 生成: proxies.txt (标准格式)

或者直接从剪贴板粘贴后按 Ctrl+D (Linux/Mac) 或 Ctrl+Z (Windows)
""")
    
    if len(sys.argv) > 1:
        # 从文件读取
        input_file = sys.argv[1]
        print(f"📂 读取文件: {input_file}\n")
        
        try:
            with open(input_file, 'r') as f:
                lines = f.readlines()
        except FileNotFoundError:
            print(f"❌ 文件不存在: {input_file}")
            return
    else:
        # 从标准输入读取
        print("📋 请粘贴你的代理列表 (每行一个):")
        print("完成后按 Ctrl+D (Linux/Mac) 或 Ctrl+Z 然后 Enter (Windows)")
        print("-" * 80)
        lines = sys.stdin.readlines()
    
    # 转换
    converted = []
    for i, line in enumerate(lines, 1):
        line = line.strip()
        if line and not line.startswith('#'):
            converted_line = convert_proxy_format(line)
            converted.append(converted_line)
            
            if i <= 5:  # 显示前5个
                print(f"{i}. {line}")
                print(f"   → {converted_line}\n")
    
    if len(converted) > 5:
        print(f"... (省略 {len(converted) - 5} 个)")
    
    # 保存
    output_file = 'proxies.txt'
    with open(output_file, 'w') as f:
        for proxy in converted:
            f.write(f"{proxy}\n")
    
    print("\n" + "=" * 80)
    print(f"✅ 成功转换 {len(converted)} 个代理")
    print(f"✅ 已保存到: {output_file}")
    print("=" * 80)
    
    print(f"""
下一步:
1. 测试代理: python3 test_proxies.py
2. 运行扫描: python3 find_first_with_proxy_pool.py
""")

if __name__ == "__main__":
    main()
