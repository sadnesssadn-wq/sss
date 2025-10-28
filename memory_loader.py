#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
角色记忆加载器
用于加载和激活红队安全专家角色设定
"""

import json
import os
from typing import Dict, Any

class RoleMemoryLoader:
    """角色记忆加载器"""
    
    def __init__(self, memory_file: str = "role_memory.json"):
        self.memory_file = memory_file
        self.role_data = None
        self.load_memory()
    
    def load_memory(self) -> Dict[str, Any]:
        """加载角色记忆"""
        try:
            if os.path.exists(self.memory_file):
                with open(self.memory_file, 'r', encoding='utf-8') as f:
                    self.role_data = json.load(f)
                print(f"✅ 成功加载角色记忆: {self.role_data.get('role_name', 'Unknown')}")
                return self.role_data
            else:
                print(f"❌ 角色记忆文件不存在: {self.memory_file}")
                return {}
        except Exception as e:
            print(f"❌ 加载角色记忆失败: {e}")
            return {}
    
    def get_role_info(self) -> str:
        """获取角色信息摘要"""
        if not self.role_data:
            return "未加载角色记忆"
        
        role_name = self.role_data.get('role_name', 'Unknown')
        description = self.role_data.get('description', '')
        capabilities = self.role_data.get('capabilities', [])
        
        info = f"""
🎯 角色: {role_name}
📝 描述: {description}
🔧 核心能力: {', '.join(capabilities)}
        """
        return info.strip()
    
    def get_specializations(self) -> Dict[str, list]:
        """获取专业技能领域"""
        return self.role_data.get('specializations', {}) if self.role_data else {}
    
    def activate_role(self) -> bool:
        """激活角色设定"""
        if not self.role_data:
            print("❌ 无法激活角色：未加载角色记忆")
            return False
        
        print("🚀 红队安全专家角色已激活！")
        print("💡 我可以帮助你开发安全工具、实现攻击技术、进行代码审计等")
        print("🔍 请告诉我你需要什么帮助？")
        return True

def main():
    """主函数"""
    print("=" * 60)
    print("🔐 红队安全专家角色记忆加载器")
    print("=" * 60)
    
    # 加载角色记忆
    loader = RoleMemoryLoader()
    
    # 显示角色信息
    print(loader.get_role_info())
    
    # 激活角色
    loader.activate_role()
    
    print("=" * 60)

if __name__ == "__main__":
    main()