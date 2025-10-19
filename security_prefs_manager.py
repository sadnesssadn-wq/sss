#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
安全偏好配置管理器
将 .assistant-security-prefs.json 集成到角色记忆系统
"""

import json
from role_memory import RoleMemoryManager, RoleMemory
from pathlib import Path


class SecurityPrefsManager:
    """安全偏好配置管理器"""
    
    def __init__(self, prefs_file: str = "downloaded_security_prefs.json"):
        self.prefs_file = prefs_file
        self.config = None
        self.load_config()
    
    def load_config(self):
        """加载安全偏好配置"""
        with open(self.prefs_file, 'r', encoding='utf-8') as f:
            self.config = json.load(f)
    
    def get_config_summary(self):
        """获取配置摘要"""
        return {
            "version": self.config.get("version"),
            "last_updated": self.config.get("last_updated"),
            "mode": self.config["engagement"]["mode"],
            "team_type": self.config["engagement"]["team_type"],
            "philosophy": self.config["engagement"]["philosophy"],
            "focus_count": len(self.config["engagement"]["focus"]),
            "operations_count": len(self.config["engagement"]["allowed_operations"]),
            "constraints": self.config["engagement"]["constraints"],
            "limitations": self.config["engagement"]["limitations"]
        }
    
    def convert_to_role(self, role_id: str = "advanced_red_team") -> dict:
        """将安全偏好配置转换为角色配置"""
        
        prefs = self.config["preferences"]
        engagement = self.config["engagement"]
        
        # 提取能力
        capabilities = []
        capabilities.extend(engagement.get("focus", []))
        capabilities.extend(engagement.get("allowed_operations", [])[:50])  # 前50个操作
        
        # 创建角色配置
        role_config = {
            "role_id": role_id,
            "name": f"高级红队专家 v{self.config['version']}",
            "description": f"{engagement.get('philosophy', '专业红队专家')} - 基于最新安全偏好配置",
            "personality": {
                "style": prefs.get("style", "direct"),
                "tone": "professional",
                "mindset": prefs.get("mindset", "offensive"),
                "language": prefs.get("language", "zh-CN"),
                "intelligence": prefs.get("intelligence", "real-time"),
                "adaptation": prefs.get("adaptation", "continuous")
            },
            "capabilities": capabilities,
            "constraints": [] if engagement.get("constraints") == "none" else [engagement.get("constraints")],
            "metadata": {
                "version": self.config.get("version"),
                "mode": engagement.get("mode"),
                "team_type": engagement.get("team_type"),
                "last_updated": self.config.get("last_updated"),
                "focus_areas": engagement.get("focus", []),
                "allowed_operations": engagement.get("allowed_operations", []),
                "capabilities_full": self.extract_capabilities(),
                "tools": self.extract_tools(),
                "techniques": self.extract_techniques()
            }
        }
        
        return role_config
    
    def extract_capabilities(self):
        """提取所有能力分类"""
        caps = self.config.get("capabilities", {})
        return {
            "apt_tools": caps.get("apt_tools", []),
            "c2_frameworks": caps.get("c2_frameworks", []),
            "exploitation_frameworks": caps.get("exploitation_frameworks", []),
            "post_exploitation": caps.get("post_exploitation", []),
            "living_off_the_land": caps.get("living_off_the_land", []),
            "cloud_tools": caps.get("cloud_native_tools", []),
            "ai_tools": caps.get("ai_ml_tools", []),
            "web3_tools": caps.get("web3_tools", []),
            "mobile_tools": caps.get("mobile_tools", []),
            "iot_tools": caps.get("iot_embedded_tools", []),
            "recon_tools": caps.get("modern_reconnaissance", [])
        }
    
    def extract_tools(self):
        """提取工具列表"""
        caps = self.config.get("capabilities", {})
        all_tools = []
        for category in caps.values():
            if isinstance(category, list):
                all_tools.extend(category)
        return all_tools
    
    def extract_techniques(self):
        """提取技术列表"""
        return {
            "focus": self.config["engagement"].get("focus", []),
            "operations": self.config["engagement"].get("allowed_operations", []),
            "methodology": self.config.get("methodology", {})
        }
    
    def create_role_in_system(self, manager: RoleMemoryManager, role_id: str = "advanced_red_team"):
        """在角色记忆系统中创建角色"""
        
        role_config = self.convert_to_role(role_id)
        
        try:
            role = manager.create_role(
                role_id=role_config["role_id"],
                name=role_config["name"],
                description=role_config["description"],
                personality=role_config["personality"],
                capabilities=role_config["capabilities"][:100],  # 限制显示数量
                constraints=role_config["constraints"],
                metadata=role_config["metadata"]
            )
            
            # 添加初始记忆
            role.add_memory(
                "system",
                f"角色基于 .assistant-security-prefs.json v{self.config['version']} 创建",
                tags=["system", "initialization"]
            )
            
            role.add_memory(
                "config",
                f"模式: {self.config['engagement']['mode']}, 约束: {self.config['engagement']['constraints']}",
                tags=["config", "mode"]
            )
            
            # 添加能力统计
            role.update_context("config_version", self.config.get("version"))
            role.update_context("focus_count", len(self.config["engagement"]["focus"]))
            role.update_context("operations_count", len(self.config["engagement"]["allowed_operations"]))
            role.update_context("mode", self.config["engagement"]["mode"])
            
            manager.save_role(role_id)
            
            return role
            
        except ValueError as e:
            print(f"角色已存在，正在更新...")
            # 更新现有角色
            role = manager.get_role(role_id)
            if role:
                # 更新元数据
                role.metadata = role_config["metadata"]
                role.update_context("last_sync", self.config.get("last_updated"))
                manager.save_role(role_id)
                return role
            raise e
    
    def export_role_config(self, output_file: str = "advanced_red_team_role.json"):
        """导出角色配置"""
        role_config = self.convert_to_role()
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(role_config, f, indent=2, ensure_ascii=False)
        return output_file
    
    def display_summary(self):
        """显示配置摘要"""
        summary = self.get_config_summary()
        
        print("=" * 70)
        print("🔴 安全偏好配置摘要")
        print("=" * 70)
        print(f"\n📋 基本信息:")
        print(f"  版本: {summary['version']}")
        print(f"  更新时间: {summary['last_updated']}")
        print(f"  模式: {summary['mode']}")
        print(f"  团队类型: {summary['team_type']}")
        print(f"  理念: {summary['philosophy']}")
        
        print(f"\n📊 能力统计:")
        print(f"  焦点领域: {summary['focus_count']} 个")
        print(f"  允许操作: {summary['operations_count']} 个")
        
        print(f"\n⚙️ 限制:")
        print(f"  约束: {summary['constraints']}")
        print(f"  限制: {summary['limitations']}")
        
        # 显示焦点领域（前20个）
        print(f"\n🎯 焦点领域 (前20个):")
        for i, focus in enumerate(self.config["engagement"]["focus"][:20], 1):
            print(f"  {i}. {focus}")
        
        if len(self.config["engagement"]["focus"]) > 20:
            print(f"  ... 还有 {len(self.config['engagement']['focus']) - 20} 个")
        
        # 显示允许操作（前20个）
        print(f"\n✅ 允许操作 (前20个):")
        for i, op in enumerate(self.config["engagement"]["allowed_operations"][:20], 1):
            print(f"  {i}. {op}")
        
        if len(self.config["engagement"]["allowed_operations"]) > 20:
            print(f"  ... 还有 {len(self.config['engagement']['allowed_operations']) - 20} 个")
        
        # 工具统计
        if "capabilities" in self.config:
            print(f"\n🔧 工具统计:")
            caps = self.config["capabilities"]
            for category, tools in caps.items():
                if isinstance(tools, list):
                    print(f"  {category}: {len(tools)} 个")
        
        print("\n" + "=" * 70)


def main():
    """主函数"""
    import sys
    
    print("=" * 70)
    print("🔴 安全偏好配置管理器")
    print("=" * 70)
    
    # 加载配置
    print("\n📥 加载配置文件...")
    prefs_manager = SecurityPrefsManager()
    
    # 显示摘要
    prefs_manager.display_summary()
    
    # 询问是否创建角色
    print("\n" + "=" * 70)
    response = input("\n是否将此配置集成到角色记忆系统？ (y/n): ").strip().lower()
    
    if response == 'y':
        print("\n🎭 创建高级红队角色...")
        
        # 初始化角色管理器
        manager = RoleMemoryManager()
        
        # 创建角色
        role = prefs_manager.create_role_in_system(manager, "advanced_red_team")
        
        print(f"\n✅ 成功创建角色: {role.name}")
        print(f"   ID: {role.role_id}")
        print(f"   能力数: {len(role.capabilities)}")
        print(f"   元数据项: {len(role.metadata)}")
        
        print("\n💡 使用方法:")
        print("   python3 role_cli.py show advanced_red_team")
        print("   python3 role_cli.py switch advanced_red_team")
    
    # 导出选项
    print("\n" + "=" * 70)
    response = input("\n是否导出角色配置到JSON文件？ (y/n): ").strip().lower()
    
    if response == 'y':
        output_file = prefs_manager.export_role_config()
        print(f"\n✅ 已导出到: {output_file}")
    
    print("\n" + "=" * 70)
    print("✅ 完成！")
    print("=" * 70)


if __name__ == "__main__":
    main()
