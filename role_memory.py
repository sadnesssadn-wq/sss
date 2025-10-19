#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
角色记忆管理系统
用于存储和管理AI助手的角色配置和记忆
"""

import json
import os
from datetime import datetime
from typing import Dict, List, Any


class RoleMemory:
    """角色记忆管理类"""
    
    def __init__(self, config_file: str = "role_memory.json"):
        """
        初始化角色记忆系统
        
        Args:
            config_file: 配置文件路径
        """
        self.config_file = config_file
        self.memory = self._load_memory()
    
    def _load_memory(self) -> Dict[str, Any]:
        """加载记忆配置"""
        if os.path.exists(self.config_file):
            with open(self.config_file, 'r', encoding='utf-8') as f:
                return json.load(f)
        return {}
    
    def _save_memory(self):
        """保存记忆配置"""
        with open(self.config_file, 'w', encoding='utf-8') as f:
            json.dump(self.memory, f, ensure_ascii=False, indent=2)
    
    def add_memory(self, event: str, importance: str = "中") -> None:
        """
        添加新的记忆
        
        Args:
            event: 事件描述
            importance: 重要性级别（低/中/高）
        """
        if "记忆系统" not in self.memory:
            self.memory["记忆系统"] = {"长期记忆": {"内容": []}}
        
        memory_entry = {
            "时间": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            "事件": event,
            "重要性": importance
        }
        
        self.memory["记忆系统"]["长期记忆"]["内容"].append(memory_entry)
        self._save_memory()
        print(f"✅ 已添加记忆: {event}")
    
    def get_memories(self, importance: str = None) -> List[Dict[str, Any]]:
        """
        获取记忆列表
        
        Args:
            importance: 可选的重要性过滤
            
        Returns:
            记忆列表
        """
        memories = self.memory.get("记忆系统", {}).get("长期记忆", {}).get("内容", [])
        
        if importance:
            memories = [m for m in memories if m.get("重要性") == importance]
        
        return memories
    
    def display_role_info(self) -> None:
        """显示角色信息"""
        print("=" * 60)
        print("🤖 角色信息")
        print("=" * 60)
        
        role_config = self.memory.get("角色配置", {})
        for key, value in role_config.items():
            print(f"  {key}: {value}")
        
        print("\n" + "=" * 60)
        print("🧠 记忆统计")
        print("=" * 60)
        
        memories = self.get_memories()
        print(f"  总记忆数: {len(memories)}")
        print(f"  高重要性: {len([m for m in memories if m['重要性'] == '高'])}")
        print(f"  中重要性: {len([m for m in memories if m['重要性'] == '中'])}")
        print(f"  低重要性: {len([m for m in memories if m['重要性'] == '低'])}")
        
        print("\n" + "=" * 60)
        print("📝 最近记忆 (最多显示5条)")
        print("=" * 60)
        
        for memory in memories[-5:]:
            print(f"\n  ⏰ {memory['时间']}")
            print(f"  📌 {memory['事件']}")
            print(f"  ⭐ 重要性: {memory['重要性']}")
    
    def update_context(self, key: str, value: Any) -> None:
        """
        更新上下文信息
        
        Args:
            key: 键名
            value: 值
        """
        if "上下文信息" not in self.memory:
            self.memory["上下文信息"] = {}
        
        self.memory["上下文信息"][key] = value
        self._save_memory()
        print(f"✅ 已更新上下文: {key} = {value}")


def main():
    """主函数 - 演示角色记忆系统"""
    print("🚀 初始化角色记忆系统...\n")
    
    # 创建记忆管理器
    memory = RoleMemory()
    
    # 显示当前角色信息
    memory.display_role_info()
    
    # 添加新记忆示例
    print("\n" + "=" * 60)
    print("➕ 添加新记忆")
    print("=" * 60)
    memory.add_memory("创建了角色记忆管理系统", "高")
    memory.add_memory("实现了记忆的存储和检索功能", "高")
    
    # 更新上下文
    print("\n" + "=" * 60)
    print("🔄 更新上下文信息")
    print("=" * 60)
    memory.update_context("最后活动时间", datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
    
    print("\n✨ 角色记忆系统运行完成！")


if __name__ == "__main__":
    main()
