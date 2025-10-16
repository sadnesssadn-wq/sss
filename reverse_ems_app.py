#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
EMS移动APP逆向分析工具
支持: Android APK分析, API提取, 抓包辅助
"""
import os
import sys
import json
import subprocess
import re

def download_ems_apk():
    """下载EMS Vietnam APP"""
    print("📱 下载EMS Vietnam APP...")
    
    # EMS Vietnam可能的包名
    package_names = [
        "com.ems.vietnam",
        "vn.ems.app",
        "vn.com.ems",
        "com.vnpost.ems"
    ]
    
    print("\n可能的包名:")
    for pkg in package_names:
        print(f"  - {pkg}")
    
    print("\n💡 请手动下载APK或提供下载链接")
    return None

def analyze_apk(apk_path):
    """分析APK文件"""
    print(f"\n🔍 分析APK: {apk_path}")
    
    if not os.path.exists(apk_path):
        print(f"❌ 文件不存在: {apk_path}")
        return
    
    # 使用androguard分析
    try:
        from androguard.core.bytecodes.apk import APK
        from androguard.core.bytecodes.dvm import DalvikVMFormat
        from androguard.core.analysis.analysis import Analysis
        
        print("📦 加载APK...")
        apk = APK(apk_path)
        
        print(f"  包名: {apk.get_package()}")
        print(f"  版本: {apk.get_androidversion_name()}")
        print(f"  权限: {len(apk.get_permissions())} 个")
        
        # 提取API相关信息
        print("\n🔍 搜索API端点...")
        
        # 常见API相关字符串
        api_patterns = [
            r'https?://[a-zA-Z0-9\-\.]+/api/[^\s"\']+',
            r'/api/[a-zA-Z/]+',
            r'Delivery/\w+',
            r'Tracking/\w+',
            r'Parcel/\w+',
        ]
        
        found_apis = set()
        
        # 搜索strings
        print("  搜索URL和端点...")
        for dex in apk.get_all_dex():
            dvm = DalvikVMFormat(dex)
            strings = dvm.get_strings()
            
            for s in strings:
                for pattern in api_patterns:
                    matches = re.findall(pattern, s)
                    for match in matches:
                        found_apis.add(match)
        
        print(f"\n✅ 找到 {len(found_apis)} 个API端点:")
        for api in sorted(found_apis):
            print(f"  - {api}")
        
        # 保存结果
        result = {
            'package': apk.get_package(),
            'version': apk.get_androidversion_name(),
            'apis_found': list(found_apis)
        }
        
        with open('apk_analysis.json', 'w', encoding='utf-8') as f:
            json.dump(result, f, ensure_ascii=False, indent=2)
        
        print(f"\n📄 分析结果已保存: apk_analysis.json")
        
    except ImportError:
        print("❌ 缺少androguard库")
        print("   安装: pip3 install androguard")
    except Exception as e:
        print(f"❌ 分析出错: {e}")

def extract_api_calls(apk_path):
    """使用jadx反编译并提取API调用"""
    print(f"\n🔧 反编译APK...")
    
    output_dir = "jadx_output"
    
    # 使用jadx反编译
    cmd = f"jadx -d {output_dir} {apk_path}"
    print(f"  命令: {cmd}")
    
    try:
        subprocess.run(cmd, shell=True, check=True)
        print(f"✅ 反编译完成: {output_dir}")
        
        # 搜索API相关代码
        print("\n🔍 搜索API调用代码...")
        api_files = []
        
        for root, dirs, files in os.walk(output_dir):
            for file in files:
                if file.endswith('.java'):
                    filepath = os.path.join(root, file)
                    
                    # 读取文件
                    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
                        content = f.read()
                        
                        # 搜索API相关关键字
                        if any(kw in content for kw in ['api/Delivery', 'Inquiry', 'Track', 'retrofit', 'okhttp']):
                            api_files.append(filepath)
        
        print(f"\n找到 {len(api_files)} 个API相关文件:")
        for f in api_files[:10]:
            print(f"  - {f}")
        
        if len(api_files) > 10:
            print(f"  ... 还有 {len(api_files)-10} 个文件")
            
    except FileNotFoundError:
        print("❌ 未找到jadx工具")
        print("   安装: https://github.com/skylot/jadx")
    except Exception as e:
        print(f"❌ 反编译出错: {e}")

def setup_mitm_proxy():
    """配置MITM代理抓包"""
    print("""
🔧 配置MITM抓包:

1. 安装mitmproxy:
   pip3 install mitmproxy

2. 启动代理:
   mitmproxy -p 8080

3. 手机配置:
   - 连接同一WiFi
   - 设置代理: 电脑IP:8080
   - 安装证书: mitm.it

4. 打开EMS APP查询订单，抓取请求

5. 导出HAR文件:
   在mitmproxy中按'E'导出

""")

def main():
    print("="*80)
    print("📱 EMS移动APP逆向分析工具")
    print("="*80)
    
    print("""
选择操作:
1. 下载EMS APP (需要手动下载)
2. 分析APK文件 (提取API端点)
3. 反编译APK (查看源代码)
4. 配置抓包环境
5. 查看使用说明
""")
    
    choice = input("\n请选择 (1-5): ").strip()
    
    if choice == '1':
        download_ems_apk()
    elif choice == '2':
        apk_path = input("输入APK路径: ").strip()
        analyze_apk(apk_path)
    elif choice == '3':
        apk_path = input("输入APK路径: ").strip()
        extract_api_calls(apk_path)
    elif choice == '4':
        setup_mitm_proxy()
    elif choice == '5':
        print("""
📖 使用说明:

方法1: 静态分析
  1. 下载EMS Vietnam APP的APK
  2. 使用工具分析APK，提取API端点
  3. 查看反编译代码，理解API调用逻辑

方法2: 动态抓包
  1. 配置MITM代理
  2. 手机通过代理访问
  3. 在APP中查询订单
  4. 抓取实际API请求

方法3: Frida Hook
  1. Root手机或使用模拟器
  2. 安装frida-server
  3. Hook网络请求函数
  4. 实时查看API调用

推荐: 先用抓包(方法2)，最简单直接
        """)

if __name__ == "__main__":
    main()
