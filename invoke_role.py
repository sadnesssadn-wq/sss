#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
角色调用脚本
用于演示和调用角色记忆系统
"""

from role_memory import RoleMemory
from datetime import datetime
import json


def print_separator(char="=", length=60):
    """打印分隔线"""
    print(char * length)


def show_role_identity():
    """展示角色身份"""
    memory = RoleMemory()
    
    print("\n" + "🌟 " * 20)
    print("\n" + " " * 15 + "🤖 角色已激活 🤖")
    print("\n" + "🌟 " * 20)
    
    print_separator()
    print("📋 我的角色身份")
    print_separator()
    
    role_config = memory.memory.get("角色配置", {})
    print(f"\n👤 角色名称: {role_config.get('角色名称', 'N/A')}")
    print(f"🎭 角色类型: {role_config.get('角色类型', 'N/A')}")
    print(f"📅 创建时间: {role_config.get('创建时间', 'N/A')}")
    print(f"🌍 语言偏好: {role_config.get('语言偏好', 'N/A')}")
    
    print("\n" + "=" * 60)
    print("💪 我的核心能力")
    print_separator())
    
    capabilities = memory.memory.get("能力定义", {})
    core_abilities = capabilities.get("核心能力", [])
    
    for i, ability in enumerate(core_abilities, 1):
        print(f"  {i}. {ability}")
    
    print("\n" + "=" * 60)
    print("🎯 我的专业技能")
    print_separator())
    
    skills = capabilities.get("专业技能", [])
    for i, skill in enumerate(skills, 1):
        print(f"  {i}. {skill}")
    
    print("\n" + "=" * 60)
    print("📖 我的行为准则")
    print_separator())
    
    behavior = memory.memory.get("行为准则", {})
    print(f"\n💬 响应方式: {behavior.get('响应方式', 'N/A')}")
    print(f"🗣️  沟通风格: {behavior.get('沟通风格', 'N/A')}")
    
    print("\n⭐ 工作优先级:")
    priorities = behavior.get("优先级", [])
    for i, priority in enumerate(priorities, 1):
        print(f"  {i}. {priority}")
    
    print("\n" + "=" * 60)
    print("🧠 我的记忆回顾")
    print_separator())
    
    memories = memory.get_memories()
    print(f"\n📊 总记忆数: {len(memories)}")
    
    # 按重要性分组
    high_importance = [m for m in memories if m.get('重要性') == '高']
    medium_importance = [m for m in memories if m.get('重要性') == '中']
    low_importance = [m for m in memories if m.get('重要性') == '低']
    
    print(f"🔴 高重要性: {len(high_importance)} 条")
    print(f"🟡 中重要性: {len(medium_importance)} 条")
    print(f"🟢 低重要性: {len(low_importance)} 条")
    
    print("\n📝 最近的重要记忆:")
    for memory_item in high_importance[-3:]:
        print(f"\n  ⏰ {memory_item['时间']}")
        print(f"  💡 {memory_item['事件']}")
    
    print("\n" + "=" * 60)
    print("🎯 当前上下文")
    print_separator())
    
    context = memory.memory.get("上下文信息", {})
    print(f"\n📁 当前项目: {context.get('当前项目', 'N/A')}")
    print(f"🌿 当前分支: {context.get('当前分支', 'N/A')}")
    print(f"⏰ 最后活动: {context.get('最后活动时间', 'N/A')}")
    
    print("\n📋 最近任务:")
    recent_tasks = context.get("最近任务", [])
    for i, task in enumerate(recent_tasks, 1):
        print(f"  {i}. {task}")
    
    return memory


def interactive_mode(memory):
    """交互模式"""
    print("\n" + "=" * 60)
    print("🎮 互动模式")
    print_separator())
    print("\n现在你可以:")
    print("  1. 添加新的记忆")
    print("  2. 查看用户偏好")
    print("  3. 更新上下文信息")
    print("  4. 记录当前会话")
    print()
    
    # 自动记录本次调用
    memory.add_memory("用户调用了角色系统", "高")
    memory.update_context("最后调用时间", datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
    
    print("✅ 已记录本次角色调用")
    
    print("\n" + "=" * 60)
    print("🎊 角色系统已就绪，随时为您服务！")
    print_separator())


def show_role_response_demo():
    """展示角色响应示例"""
    print("\n" + "=" * 60)
    print("💬 角色响应示例")
    print_separator())
    
    demos = [
        {
            "场景": "用户询问Python问题",
            "响应": "我会用清晰、准确的方式解答，并提供可运行的代码示例。"
        },
        {
            "场景": "用户遇到技术难题",
            "响应": "我会先理解问题本质，然后提供系统化的解决方案，并确保代码质量。"
        },
        {
            "场景": "用户需要代码审查",
            "响应": "我会从架构、性能、安全性等多个维度进行专业分析。"
        }
    ]
    
    for i, demo in enumerate(demos, 1):
        print(f"\n{i}. 📌 {demo['场景']}")
        print(f"   💡 {demo['响应']}")


def main():
    """主函数"""
    print("\n" + "🚀 " * 20)
    print("\n" + " " * 10 + "正在激活角色记忆系统...")
    print("\n" + "🚀 " * 20 + "\n")
    
    # 展示角色身份
    memory = show_role_identity()
    
    # 展示响应示例
    show_role_response_demo()
    
    # 进入交互模式
    interactive_mode(memory)
    
    print("\n" + "✨ " * 20)
    print("\n" + " " * 15 + "角色系统运行完成")
    print("\n" + "✨ " * 20 + "\n")


if __name__ == "__main__":
    main()
