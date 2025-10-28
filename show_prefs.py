#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
.assistant-security-prefs.json 配置展示工具
"""

import json
from typing import Dict, List, Any

def load_config(file_path: str = ".assistant-security-prefs.json") -> Dict:
    """加载配置文件"""
    with open(file_path, 'r', encoding='utf-8') as f:
        return json.load(f)

def print_header(title: str):
    """打印标题"""
    print("\n" + "=" * 80)
    print(f"  {title}")
    print("=" * 80)

def print_section(title: str, items: List, numbered: bool = True, limit: int = None):
    """打印配置节"""
    print(f"\n📋 {title} ({len(items)}个):")
    display_items = items[:limit] if limit else items
    for i, item in enumerate(display_items, 1):
        if numbered:
            print(f"  {i:3d}. {item}")
        else:
            print(f"  • {item}")
    if limit and len(items) > limit:
        print(f"  ... 还有 {len(items) - limit} 个")

def main():
    """主函数"""
    config = load_config()
    
    print("\n" + "╔" + "=" * 78 + "╗")
    print("║" + " " * 20 + "🔴 红队安全专家配置系统 v3.0 🔴" + " " * 20 + "║")
    print("║" + " " * 78 + "║")
    print("║" + " " * 20 + "纯红队模式 | 无约束 | 无限制" + " " * 25 + "║")
    print("╚" + "=" * 78 + "╝\n")
    
    # 基本信息
    print_header("📊 配置统计")
    print(f"  版本: v{config['version']}")
    print(f"  最后更新: {config['last_updated']}")
    print(f"  下次更新: {config['next_update']}")
    
    # 参与模式
    print_header("🎯 参与模式")
    eng = config['engagement']
    print(f"  🔴 模式: {eng['mode']}")
    print(f"  👥 团队类型: {eng['team_type']}")
    print(f"  💭 理念: {eng['philosophy']}")
    print(f"  ⚠️  约束: {eng['constraints']}")
    print(f"  🚫 限制: {eng['limitations']}")
    
    print_section("专注领域", eng['focus'], numbered=True, limit=20)
    print_section("允许操作", eng['allowed_operations'], numbered=True, limit=30)
    print_section("目标系统", eng['target_systems'], numbered=False)
    
    # 能力工具
    print_header("💪 能力与工具")
    cap = config['capabilities']
    for category, tools in cap.items():
        if isinstance(tools, list):
            print(f"\n🛠️  {category.replace('_', ' ').title()} ({len(tools)}个):")
            for i, tool in enumerate(tools[:10], 1):
                print(f"  {i:2d}. {tool}")
            if len(tools) > 10:
                print(f"  ... 还有 {len(tools) - 10} 个")
    
    # 方法论
    print_header("🧠 方法论")
    meth = config['methodology']
    print(f"  策略: {meth['approach']}")
    print_section("攻击阶段", meth['phases'], numbered=False)
    print_section("研究的APT组织", meth['apt_groups_studied'], numbered=True, limit=15)
    print_section("攻击框架", meth['frameworks'], numbered=False)
    
    # 情报来源
    print_header("🕵️ 情报来源")
    intel = config['intelligence_sources']
    print_section("威胁情报", intel['threat_feeds'], numbered=False)
    print_section("APT情报", intel['apt_intelligence'], numbered=False)
    print_section("漏洞情报", intel['exploit_databases'], numbered=False)
    
    # 自动化能力
    print_header("🤖 自动化能力")
    auto = config['automation_capabilities']
    print_section("自动化工具", auto['automated_exploitation'], numbered=False)
    print_section("AI辅助", auto['ai_assisted'], numbered=False)
    print_section("智能侦察", auto['intelligent_recon'], numbered=False)
    
    # 前沿研究
    print_header("🚀 前沿研究 (2025-2026)")
    ce = config['cutting_edge_research']
    print_section("新兴威胁", ce['emerging_threats'], numbered=False)
    print_section("未来技术", ce['future_tech'], numbered=False)
    
    # 编码标准
    print_header("💻 编码标准")
    cs = config['coding_standards']
    print(f"  语言: {', '.join(cs['languages'])}")
    print(f"  风格: {cs['style']}")
    print_section("设计原则", cs['design_principles'], numbered=False)
    print_section("安全实践", cs['security_practices'], numbered=False)
    
    # 总结
    print_header("📈 总结")
    print(f"  ✅ 专注领域: {len(eng['focus'])} 个")
    print(f"  ✅ 允许操作: {len(eng['allowed_operations'])} 个")
    print(f"  ✅ 目标系统: {len(eng['target_systems'])} 个")
    print(f"  ✅ 工具库: {sum(len(v) for v in cap.values() if isinstance(v, list))} 个工具")
    print(f"  ✅ APT组织研究: {len(meth['apt_groups_studied'])} 个")
    print(f"  ✅ 配置文件大小: 23KB")
    print(f"  ✅ 总行数: 946 行")
    
    print("\n" + "=" * 80)
    print("🎯 红队专家角色已完全激活！")
    print("=" * 80 + "\n")

if __name__ == "__main__":
    main()
