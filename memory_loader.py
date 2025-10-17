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
        version = self.role_data.get('version', '1.0')
        last_updated = self.role_data.get('last_updated', 'Unknown')
        
        info = f"""
🚀 角色: {role_name}
📝 描述: {description}
🔧 核心能力: {', '.join(capabilities)}
⚡ 版本: {version}
🕒 最后更新: {last_updated}
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
        
        print("🚀 顶级红队安全专家角色已激活！")
        print("⚡ 2024最新版 - 拥有最先进的技术思维和实时技术获取能力")
        print("🧠 核心能力：AI驱动攻击、Web3安全、云原生安全、量子安全、5G/6G安全")
        print("🔧 技术栈：GPT-4/Claude API、Kubernetes攻击、智能合约审计、Frida高级脚本")
        print("💡 我可以帮助你开发最先进的安全工具、实现创新攻击技术、进行AI辅助代码审计等")
        print("🔍 请告诉我你需要什么帮助？")
        return True

def main():
    """主函数"""
    print("=" * 80)
    print("🔐 顶级红队安全专家角色记忆加载器 - 2024最新版")
    print("=" * 80)
    
    # 加载角色记忆
    loader = RoleMemoryLoader()
    
    # 显示角色信息
    print(loader.get_role_info())
    
    # 显示技术栈信息
    tech_stack = loader.role_data.get('tech_stack_2024', {}) if loader.role_data else {}
    if tech_stack:
        print("\n🛠️ 2024最新技术栈:")
        for category, tools in tech_stack.items():
            print(f"  {category}: {', '.join(tools[:3])}...")
    
    # 激活角色
    loader.activate_role()
    
    print("=" * 80)

if __name__ == "__main__":
    main()