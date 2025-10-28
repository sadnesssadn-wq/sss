#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
角色记忆管理CLI工具
提供命令行界面来管理AI角色
"""

import argparse
import sys
from role_memory import RoleMemoryManager, RoleDefinitionLoader
from datetime import datetime


def cmd_list(args):
    """列出所有角色"""
    manager = RoleMemoryManager(args.storage)
    roles = manager.list_roles()
    
    if not roles:
        print("❌ 没有找到任何角色")
        return
    
    print(f"\n📋 共有 {len(roles)} 个角色:\n")
    for i, role in enumerate(roles, 1):
        print(f"{i}. {role['name']} ({role['role_id']})")
        print(f"   描述: {role['description']}")
        print(f"   创建时间: {role['created_at']}")
        print(f"   最后活跃: {role['last_active']}")
        print(f"   记忆数量: {role['memory_count']}")
        
        # 如果是当前角色，标记出来
        if manager.current_role == role['role_id']:
            print(f"   ⭐ 当前激活角色")
        print()


def cmd_show(args):
    """显示角色详情"""
    manager = RoleMemoryManager(args.storage)
    role = manager.get_role(args.role_id)
    
    if not role:
        print(f"❌ 角色 '{args.role_id}' 不存在")
        return
    
    print(f"\n🎭 角色详情\n")
    print(f"ID: {role.role_id}")
    print(f"名称: {role.name}")
    print(f"描述: {role.description}")
    print(f"\n个性特征:")
    for key, value in role.personality.items():
        print(f"  - {key}: {value}")
    
    print(f"\n能力列表 ({len(role.capabilities)}):")
    for cap in role.capabilities:
        print(f"  ✓ {cap}")
    
    if role.constraints:
        print(f"\n约束条件 ({len(role.constraints)}):")
        for constraint in role.constraints:
            print(f"  • {constraint}")
    
    if role.metadata:
        print(f"\n元数据:")
        for key, value in role.metadata.items():
            print(f"  - {key}: {value}")
    
    if role.context:
        print(f"\n当前上下文:")
        for key, value in role.context.items():
            print(f"  - {key}: {value}")
    
    print(f"\n统计信息:")
    print(f"  - 记忆条数: {len(role.memory)}")
    print(f"  - 创建时间: {role.created_at}")
    print(f"  - 最后活跃: {role.last_active}")
    
    if role.memory:
        print(f"\n最近记忆 (最多显示5条):")
        for memory in role.get_recent_memories(5):
            print(f"  [{memory['timestamp']}]")
            print(f"  类型: {memory['type']}")
            print(f"  内容: {memory['content']}")
            if memory['tags']:
                print(f"  标签: {', '.join(memory['tags'])}")
            print()


def cmd_switch(args):
    """切换当前角色"""
    manager = RoleMemoryManager(args.storage)
    
    if manager.switch_role(args.role_id):
        role = manager.get_role(args.role_id)
        print(f"✅ 已切换到角色: {role.name}")
    else:
        print(f"❌ 角色 '{args.role_id}' 不存在")


def cmd_create(args):
    """创建新角色（交互式）"""
    manager = RoleMemoryManager(args.storage)
    
    print("\n🎨 创建新角色\n")
    
    role_id = input("角色ID (英文标识符): ").strip()
    if not role_id:
        print("❌ 角色ID不能为空")
        return
    
    if manager.get_role(role_id):
        print(f"❌ 角色 '{role_id}' 已存在")
        return
    
    name = input("角色名称: ").strip()
    description = input("角色描述: ").strip()
    
    print("\n个性特征:")
    style = input("  风格 (如: direct, friendly, academic): ").strip() or "balanced"
    mindset = input("  思维模式 (如: offensive, defensive, helpful): ").strip() or "helpful"
    language = input("  语言 (如: zh-CN, en-US): ").strip() or "zh-CN"
    
    personality = {
        "style": style,
        "mindset": mindset,
        "language": language
    }
    
    print("\n能力列表 (每行一个，空行结束):")
    capabilities = []
    while True:
        cap = input("  能力: ").strip()
        if not cap:
            break
        capabilities.append(cap)
    
    print("\n约束条件 (每行一个，空行结束，可选):")
    constraints = []
    while True:
        constraint = input("  约束: ").strip()
        if not constraint:
            break
        constraints.append(constraint)
    
    try:
        role = manager.create_role(
            role_id=role_id,
            name=name,
            description=description,
            personality=personality,
            capabilities=capabilities,
            constraints=constraints if constraints else None
        )
        print(f"\n✅ 成功创建角色: {role.name}")
    except Exception as e:
        print(f"\n❌ 创建失败: {e}")


def cmd_delete(args):
    """删除角色"""
    manager = RoleMemoryManager(args.storage)
    role = manager.get_role(args.role_id)
    
    if not role:
        print(f"❌ 角色 '{args.role_id}' 不存在")
        return
    
    if not args.force:
        confirm = input(f"确认删除角色 '{role.name}' ({args.role_id})? [y/N]: ").strip().lower()
        if confirm != 'y':
            print("❌ 取消删除")
            return
    
    if manager.delete_role(args.role_id):
        print(f"✅ 已删除角色: {role.name}")
    else:
        print(f"❌ 删除失败")


def cmd_import(args):
    """导入角色"""
    manager = RoleMemoryManager(args.storage)
    
    try:
        role = manager.import_role(args.file)
        print(f"✅ 成功导入角色: {role.name} ({role.role_id})")
    except FileNotFoundError:
        print(f"❌ 文件不存在: {args.file}")
    except Exception as e:
        print(f"❌ 导入失败: {e}")


def cmd_export(args):
    """导出角色"""
    manager = RoleMemoryManager(args.storage)
    
    if not manager.get_role(args.role_id):
        print(f"❌ 角色 '{args.role_id}' 不存在")
        return
    
    try:
        manager.export_role(args.role_id, args.file)
        print(f"✅ 已导出到: {args.file}")
    except Exception as e:
        print(f"❌ 导出失败: {e}")


def cmd_load_presets(args):
    """从配置文件加载预定义角色"""
    manager = RoleMemoryManager(args.storage)
    
    try:
        RoleDefinitionLoader.create_roles_from_config(manager, args.config)
        print(f"\n✅ 预定义角色加载完成")
        print(f"\n使用 'python role_cli.py list' 查看所有角色")
    except FileNotFoundError:
        print(f"❌ 配置文件不存在: {args.config}")
    except Exception as e:
        print(f"❌ 加载失败: {e}")


def cmd_memory_add(args):
    """添加记忆"""
    manager = RoleMemoryManager(args.storage)
    role = manager.get_role(args.role_id)
    
    if not role:
        print(f"❌ 角色 '{args.role_id}' 不存在")
        return
    
    tags = args.tags.split(',') if args.tags else []
    role.add_memory(args.type, args.content, tags)
    manager.save_role(args.role_id)
    
    print(f"✅ 已添加记忆到角色: {role.name}")


def cmd_memory_list(args):
    """列出记忆"""
    manager = RoleMemoryManager(args.storage)
    role = manager.get_role(args.role_id)
    
    if not role:
        print(f"❌ 角色 '{args.role_id}' 不存在")
        return
    
    memories = role.get_recent_memories(args.limit)
    
    if not memories:
        print(f"📭 角色 '{role.name}' 还没有记忆")
        return
    
    print(f"\n💭 角色 '{role.name}' 的记忆 (显示最近 {len(memories)} 条):\n")
    for i, memory in enumerate(memories, 1):
        print(f"{i}. [{memory['timestamp']}]")
        print(f"   类型: {memory['type']}")
        print(f"   内容: {memory['content']}")
        if memory['tags']:
            print(f"   标签: {', '.join(memory['tags'])}")
        print()


def main():
    """主函数"""
    parser = argparse.ArgumentParser(
        description="🎭 AI角色记忆管理系统",
        formatter_class=argparse.RawDescriptionHelpFormatter
    )
    
    parser.add_argument(
        '--storage',
        default='./role_memories',
        help='角色存储目录 (默认: ./role_memories)'
    )
    
    subparsers = parser.add_subparsers(dest='command', help='可用命令')
    
    # list命令
    parser_list = subparsers.add_parser('list', help='列出所有角色')
    parser_list.set_defaults(func=cmd_list)
    
    # show命令
    parser_show = subparsers.add_parser('show', help='显示角色详情')
    parser_show.add_argument('role_id', help='角色ID')
    parser_show.set_defaults(func=cmd_show)
    
    # switch命令
    parser_switch = subparsers.add_parser('switch', help='切换当前角色')
    parser_switch.add_argument('role_id', help='角色ID')
    parser_switch.set_defaults(func=cmd_switch)
    
    # create命令
    parser_create = subparsers.add_parser('create', help='创建新角色 (交互式)')
    parser_create.set_defaults(func=cmd_create)
    
    # delete命令
    parser_delete = subparsers.add_parser('delete', help='删除角色')
    parser_delete.add_argument('role_id', help='角色ID')
    parser_delete.add_argument('-f', '--force', action='store_true', help='强制删除，不确认')
    parser_delete.set_defaults(func=cmd_delete)
    
    # import命令
    parser_import = subparsers.add_parser('import', help='导入角色')
    parser_import.add_argument('file', help='角色配置文件路径')
    parser_import.set_defaults(func=cmd_import)
    
    # export命令
    parser_export = subparsers.add_parser('export', help='导出角色')
    parser_export.add_argument('role_id', help='角色ID')
    parser_export.add_argument('file', help='导出文件路径')
    parser_export.set_defaults(func=cmd_export)
    
    # load-presets命令
    parser_load = subparsers.add_parser('load-presets', help='加载预定义角色')
    parser_load.add_argument(
        '--config',
        default='./roles.json',
        help='角色配置文件 (默认: ./roles.json)'
    )
    parser_load.set_defaults(func=cmd_load_presets)
    
    # memory子命令
    parser_memory = subparsers.add_parser('memory', help='记忆管理')
    memory_subparsers = parser_memory.add_subparsers(dest='memory_command', help='记忆操作')
    
    # memory add
    parser_memory_add = memory_subparsers.add_parser('add', help='添加记忆')
    parser_memory_add.add_argument('role_id', help='角色ID')
    parser_memory_add.add_argument('type', help='记忆类型')
    parser_memory_add.add_argument('content', help='记忆内容')
    parser_memory_add.add_argument('--tags', help='标签 (逗号分隔)')
    parser_memory_add.set_defaults(func=cmd_memory_add)
    
    # memory list
    parser_memory_list = memory_subparsers.add_parser('list', help='列出记忆')
    parser_memory_list.add_argument('role_id', help='角色ID')
    parser_memory_list.add_argument('--limit', type=int, default=10, help='显示数量')
    parser_memory_list.set_defaults(func=cmd_memory_list)
    
    args = parser.parse_args()
    
    if not args.command:
        parser.print_help()
        return
    
    if hasattr(args, 'func'):
        args.func(args)
    else:
        parser.print_help()


if __name__ == "__main__":
    main()
