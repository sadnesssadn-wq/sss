#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
简单的 Python 应用示例
包含混合语言文本处理功能
"""

import unicodedata
import re


def detect_language_segments(text):
    """
    检测文本中的不同语言段落
    返回语言段落列表，每个元素包含(文本, 语言类型)
    """
    segments = []
    current_segment = ""
    current_type = None
    
    for char in text:
        char_type = get_char_type(char)
        
        if char_type == current_type:
            current_segment += char
        else:
            if current_segment:
                segments.append((current_segment, current_type))
            current_segment = char
            current_type = char_type
    
    # 添加最后一个段落
    if current_segment:
        segments.append((current_segment, current_type))
    
    return segments


def get_char_type(char):
    """
    识别字符类型
    """
    # 获取Unicode类别
    category = unicodedata.category(char)
    
    # 判断是否为中文字符（CJK统一表意文字）
    if '\u4e00' <= char <= '\u9fff':
        return 'Chinese'
    
    # 判断是否为日文假名
    if '\u3040' <= char <= '\u309f' or '\u30a0' <= char <= '\u30ff':
        return 'Japanese'
    
    # 判断是否为韩文
    if '\uac00' <= char <= '\ud7af':
        return 'Korean'
    
    # 判断是否为拉丁字母
    if 'a' <= char.lower() <= 'z':
        return 'Latin'
    
    # 判断是否为数字
    if char.isdigit():
        return 'Digit'
    
    # 判断是否为标点符号或空格
    if category.startswith('P') or category.startswith('Z'):
        return 'Punctuation'
    
    # 其他字符
    return 'Other'


def process_mixed_language_text(text):
    """
    处理混合语言文本并显示分析结果
    """
    print(f"\n原始文本: {text}")
    print("=" * 50)
    
    segments = detect_language_segments(text)
    
    print("\n语言段落分析:")
    for i, (segment, lang_type) in enumerate(segments, 1):
        print(f"  {i}. '{segment}' - {lang_type}")
    
    # 统计各语言类型的字符数
    language_stats = {}
    for segment, lang_type in segments:
        if lang_type not in language_stats:
            language_stats[lang_type] = 0
        language_stats[lang_type] += len(segment)
    
    print("\n语言类型统计:")
    for lang_type, count in sorted(language_stats.items(), key=lambda x: x[1], reverse=True):
        print(f"  {lang_type}: {count} 个字符")
    
    print("=" * 50)


def main():
    """主函数"""
    print("=" * 50)
    print("欢迎使用 Python 应用！")
    print("=" * 50)
    
    print("\n请选择功能:")
    print("1. 计算器")
    print("2. 混合语言文本处理")
    
    choice = input("\n请输入选项 (1 或 2): ").strip()
    
    if choice == "1":
        # 计算器功能
        name = input("\n请输入您的名字: ")
        print(f"\n你好，{name}！很高兴认识你。")
        
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
    
    elif choice == "2":
        # 混合语言文本处理
        print("\n混合语言文本处理器")
        print("=" * 50)
        
        # 示例文本
        example_text = "nini'h你好"
        print(f"\n示例文本: {example_text}")
        process_mixed_language_text(example_text)
        
        # 让用户输入自定义文本
        user_text = input("\n请输入您要分析的文本 (按回车跳过): ").strip()
        if user_text:
            process_mixed_language_text(user_text)
    
    else:
        print("\n无效的选项！请重新运行程序并选择 1 或 2。")
    
    print("\n" + "=" * 50)
    print("程序运行完成！")
    print("=" * 50)


if __name__ == "__main__":
    main()
