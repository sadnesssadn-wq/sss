#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
角色记忆管理系统 (Role Memory Management System)
功能：定义、存储、管理AI角色的配置和记忆
"""

import json
import os
from datetime import datetime
from typing import Dict, List, Optional, Any
from pathlib import Path


class RoleMemory:
    """角色记忆类 - 存储单个角色的所有信息"""
    
    def __init__(self, role_id: str, name: str, description: str, 
                 personality: Dict[str, Any], capabilities: List[str],
                 constraints: List[str] = None, metadata: Dict[str, Any] = None):
        self.role_id = role_id
        self.name = name
        self.description = description
        self.personality = personality
        self.capabilities = capabilities
        self.constraints = constraints or []
        self.metadata = metadata or {}
        self.memory = []  # 对话记忆
        self.context = {}  # 上下文信息
        self.created_at = datetime.now().isoformat()
        self.last_active = datetime.now().isoformat()
        
    def add_memory(self, memory_type: str, content: str, tags: List[str] = None):
        """添加记忆条目"""
        memory_entry = {
            "timestamp": datetime.now().isoformat(),
            "type": memory_type,
            "content": content,
            "tags": tags or []
        }
        self.memory.append(memory_entry)
        self.last_active = datetime.now().isoformat()
        
    def update_context(self, key: str, value: Any):
        """更新上下文信息"""
        self.context[key] = value
        self.last_active = datetime.now().isoformat()
        
    def get_recent_memories(self, limit: int = 10) -> List[Dict]:
        """获取最近的记忆"""
        return self.memory[-limit:] if self.memory else []
    
    def search_memories(self, query: str) -> List[Dict]:
        """搜索记忆"""
        return [m for m in self.memory if query.lower() in m["content"].lower()]
    
    def to_dict(self) -> Dict:
        """转换为字典"""
        return {
            "role_id": self.role_id,
            "name": self.name,
            "description": self.description,
            "personality": self.personality,
            "capabilities": self.capabilities,
            "constraints": self.constraints,
            "metadata": self.metadata,
            "memory": self.memory,
            "context": self.context,
            "created_at": self.created_at,
            "last_active": self.last_active
        }
    
    @classmethod
    def from_dict(cls, data: Dict) -> 'RoleMemory':
        """从字典创建角色"""
        role = cls(
            role_id=data["role_id"],
            name=data["name"],
            description=data["description"],
            personality=data["personality"],
            capabilities=data["capabilities"],
            constraints=data.get("constraints", []),
            metadata=data.get("metadata", {})
        )
        role.memory = data.get("memory", [])
        role.context = data.get("context", {})
        role.created_at = data.get("created_at", datetime.now().isoformat())
        role.last_active = data.get("last_active", datetime.now().isoformat())
        return role


class RoleMemoryManager:
    """角色记忆管理器 - 管理所有角色"""
    
    def __init__(self, storage_path: str = "./role_memories"):
        self.storage_path = Path(storage_path)
        self.storage_path.mkdir(exist_ok=True)
        self.roles: Dict[str, RoleMemory] = {}
        self.current_role: Optional[str] = None
        self.load_all_roles()
        
    def create_role(self, role_id: str, name: str, description: str,
                   personality: Dict[str, Any], capabilities: List[str],
                   constraints: List[str] = None, metadata: Dict[str, Any] = None) -> RoleMemory:
        """创建新角色"""
        if role_id in self.roles:
            raise ValueError(f"角色 {role_id} 已存在")
            
        role = RoleMemory(
            role_id=role_id,
            name=name,
            description=description,
            personality=personality,
            capabilities=capabilities,
            constraints=constraints,
            metadata=metadata
        )
        self.roles[role_id] = role
        self.save_role(role_id)
        return role
    
    def get_role(self, role_id: str) -> Optional[RoleMemory]:
        """获取角色"""
        return self.roles.get(role_id)
    
    def list_roles(self) -> List[Dict]:
        """列出所有角色"""
        return [
            {
                "role_id": role.role_id,
                "name": role.name,
                "description": role.description,
                "created_at": role.created_at,
                "last_active": role.last_active,
                "memory_count": len(role.memory)
            }
            for role in self.roles.values()
        ]
    
    def switch_role(self, role_id: str) -> bool:
        """切换当前角色"""
        if role_id not in self.roles:
            return False
        self.current_role = role_id
        return True
    
    def get_current_role(self) -> Optional[RoleMemory]:
        """获取当前激活的角色"""
        if self.current_role:
            return self.roles.get(self.current_role)
        return None
    
    def delete_role(self, role_id: str) -> bool:
        """删除角色"""
        if role_id not in self.roles:
            return False
        
        # 删除文件
        role_file = self.storage_path / f"{role_id}.json"
        if role_file.exists():
            role_file.unlink()
        
        # 从内存中删除
        del self.roles[role_id]
        
        # 如果删除的是当前角色，清除当前角色
        if self.current_role == role_id:
            self.current_role = None
            
        return True
    
    def save_role(self, role_id: str):
        """保存角色到文件"""
        if role_id not in self.roles:
            return False
            
        role_file = self.storage_path / f"{role_id}.json"
        with open(role_file, 'w', encoding='utf-8') as f:
            json.dump(self.roles[role_id].to_dict(), f, indent=2, ensure_ascii=False)
        return True
    
    def load_role(self, role_id: str) -> bool:
        """从文件加载角色"""
        role_file = self.storage_path / f"{role_id}.json"
        if not role_file.exists():
            return False
            
        with open(role_file, 'r', encoding='utf-8') as f:
            data = json.load(f)
            self.roles[role_id] = RoleMemory.from_dict(data)
        return True
    
    def load_all_roles(self):
        """加载所有角色"""
        if not self.storage_path.exists():
            return
            
        for role_file in self.storage_path.glob("*.json"):
            role_id = role_file.stem
            self.load_role(role_id)
    
    def save_all_roles(self):
        """保存所有角色"""
        for role_id in self.roles:
            self.save_role(role_id)
    
    def export_role(self, role_id: str, output_path: str):
        """导出角色配置"""
        if role_id not in self.roles:
            return False
            
        with open(output_path, 'w', encoding='utf-8') as f:
            json.dump(self.roles[role_id].to_dict(), f, indent=2, ensure_ascii=False)
        return True
    
    def import_role(self, input_path: str) -> Optional[RoleMemory]:
        """导入角色配置"""
        with open(input_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
            role = RoleMemory.from_dict(data)
            self.roles[role.role_id] = role
            self.save_role(role.role_id)
            return role


class RoleDefinitionLoader:
    """角色定义加载器 - 从配置文件加载预定义角色"""
    
    @staticmethod
    def load_from_file(config_path: str) -> List[Dict]:
        """从文件加载角色定义"""
        with open(config_path, 'r', encoding='utf-8') as f:
            return json.load(f)
    
    @staticmethod
    def create_roles_from_config(manager: RoleMemoryManager, config_path: str):
        """从配置文件创建角色"""
        roles_config = RoleDefinitionLoader.load_from_file(config_path)
        
        for role_config in roles_config.get("roles", []):
            try:
                manager.create_role(
                    role_id=role_config["role_id"],
                    name=role_config["name"],
                    description=role_config["description"],
                    personality=role_config["personality"],
                    capabilities=role_config["capabilities"],
                    constraints=role_config.get("constraints", []),
                    metadata=role_config.get("metadata", {})
                )
                print(f"✅ 创建角色: {role_config['name']}")
            except ValueError as e:
                print(f"⚠️  跳过已存在的角色: {role_config['name']}")


def demo():
    """演示角色记忆系统"""
    print("=" * 70)
    print("🎭 角色记忆管理系统演示")
    print("=" * 70)
    
    # 创建管理器
    manager = RoleMemoryManager()
    
    # 创建示例角色
    print("\n📝 创建角色...")
    
    # 红队专家
    red_team = manager.create_role(
        role_id="red_team_expert",
        name="红队专家",
        description="专注于攻击性安全测试和渗透测试的专家",
        personality={
            "style": "direct",
            "mindset": "offensive",
            "language": "zh-CN"
        },
        capabilities=[
            "渗透测试",
            "漏洞利用",
            "社会工程",
            "恶意软件分析",
            "APT模拟"
        ],
        constraints=[],
        metadata={
            "expertise_level": "expert",
            "focus_areas": ["web", "network", "active_directory"]
        }
    )
    print(f"✅ 创建: {red_team.name}")
    
    # AI助手
    ai_assistant = manager.create_role(
        role_id="friendly_assistant",
        name="友好助手",
        description="友好、耐心、乐于助人的通用AI助手",
        personality={
            "style": "friendly",
            "mindset": "helpful",
            "language": "zh-CN"
        },
        capabilities=[
            "编程帮助",
            "问题解答",
            "文档编写",
            "代码审查",
            "学习指导"
        ],
        constraints=["遵守道德准则", "不提供非法信息"],
        metadata={
            "expertise_level": "general",
            "focus_areas": ["programming", "education", "documentation"]
        }
    )
    print(f"✅ 创建: {ai_assistant.name}")
    
    # 列出所有角色
    print("\n📋 所有角色:")
    for role_info in manager.list_roles():
        print(f"  - {role_info['name']} ({role_info['role_id']})")
        print(f"    描述: {role_info['description']}")
        print(f"    创建时间: {role_info['created_at']}")
        print(f"    记忆数量: {role_info['memory_count']}")
        print()
    
    # 切换到红队角色
    print("🔄 切换到红队专家角色...")
    manager.switch_role("red_team_expert")
    current = manager.get_current_role()
    print(f"✅ 当前角色: {current.name}")
    
    # 添加记忆
    print("\n💭 添加记忆...")
    current.add_memory(
        memory_type="interaction",
        content="执行了针对目标系统的侦察，发现开放端口：80, 443, 22",
        tags=["reconnaissance", "port_scan"]
    )
    current.add_memory(
        memory_type="finding",
        content="Web服务器存在SQL注入漏洞",
        tags=["vulnerability", "sql_injection"]
    )
    print(f"✅ 已添加 {len(current.memory)} 条记忆")
    
    # 更新上下文
    print("\n🔧 更新上下文...")
    current.update_context("target_ip", "192.168.1.100")
    current.update_context("current_phase", "exploitation")
    print(f"✅ 上下文: {current.context}")
    
    # 获取最近记忆
    print("\n📜 最近记忆:")
    for memory in current.get_recent_memories():
        print(f"  [{memory['timestamp']}] {memory['type']}: {memory['content']}")
        print(f"    标签: {', '.join(memory['tags'])}")
    
    # 保存所有角色
    print("\n💾 保存所有角色...")
    manager.save_all_roles()
    print(f"✅ 已保存到: {manager.storage_path}")
    
    print("\n" + "=" * 70)
    print("✅ 演示完成！")
    print("=" * 70)


if __name__ == "__main__":
    demo()
