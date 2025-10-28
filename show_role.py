#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
红队角色配置展示脚本
展示 .assistant-security-prefs.json 中定义的角色能力
"""

import json
from datetime import datetime


def print_banner():
    """打印横幅"""
    banner = """
╔══════════════════════════════════════════════════════════════════╗
║                                                                  ║
║            🔴 红队角色配置系统 v3.0 🔴                          ║
║                                                                  ║
║              纯红队模式 | 无约束 | 无限制                       ║
║                                                                  ║
╚══════════════════════════════════════════════════════════════════╝
"""
    print(banner)


def load_config():
    """加载配置文件"""
    with open('.assistant-security-prefs.json', 'r', encoding='utf-8') as f:
        return json.load(f)


def show_basic_info(config):
    """显示基本信息"""
    print("\n" + "="*70)
    print("📋 基本信息")
    print("="*70)
    
    print(f"📦 版本: v{config['version']}")
    print(f"📅 最后更新: {config['last_updated']}")
    print(f"🔄 下次更新: {config['next_update']}")
    
    prefs = config['preferences']
    print(f"\n🌍 语言: {prefs['language']}")
    print(f"💬 风格: {prefs['style']}")
    print(f"🧠 思维模式: {prefs['mindset']}")
    print(f"🔍 情报能力: {prefs['intelligence']}")
    print(f"⚡ 适应性: {prefs['adaptation']}")


def show_engagement_mode(config):
    """显示参与模式"""
    print("\n" + "="*70)
    print("🎯 参与模式")
    print("="*70)
    
    engagement = config['engagement']
    print(f"\n🔴 模式: {engagement['mode']}")
    print(f"👥 团队类型: {engagement['team_type']}")
    print(f"💭 理念: {engagement['philosophy']}")
    print(f"⚠️  约束: {engagement['constraints']}")
    print(f"🚫 限制: {engagement['limitations']}")
    
    print(f"\n📊 专注领域数量: {len(engagement['focus'])}")
    print("🎯 主要专注领域 (前15个):")
    for i, focus in enumerate(engagement['focus'][:15], 1):
        print(f"  {i:2d}. {focus}")
    
    print(f"\n⚔️  允许操作数量: {len(engagement['allowed_operations'])}")
    print("🔓 核心操作能力 (前20个):")
    for i, op in enumerate(engagement['allowed_operations'][:20], 1):
        print(f"  {i:2d}. {op}")


def show_capabilities(config):
    """显示能力清单"""
    print("\n" + "="*70)
    print("💪 能力清单")
    print("="*70)
    
    capabilities = config['capabilities']
    
    sections = {
        '🤖 AI驱动工具': 'ai_powered_tools',
        '💣 漏洞利用框架': 'exploit_frameworks',
        '🎯 APT工具集': 'apt_tools',
        '☁️  云原生工具': 'cloud_native_tools',
        '🔗 Web3/加密工具': 'web3_crypto_tools',
        '🧪 AI/ML安全工具': 'ai_ml_security_tools',
        '⚛️  量子工具': 'quantum_tools',
        '📡 C2框架': 'c2_frameworks',
        '🏠 LOLBAS工具': 'living_off_the_land',
        '🔍 现代侦察工具': 'modern_recon_tools',
        '📱 移动安全工具 2025': 'mobile_security_2025',
        '🔌 IoT/嵌入式工具': 'iot_embedded_tools'
    }
    
    for title, key in sections.items():
        if key in capabilities:
            tools = capabilities[key]
            print(f"\n{title} ({len(tools)}个)")
            # 只显示前10个
            for tool in tools[:10]:
                print(f"  • {tool}")
            if len(tools) > 10:
                print(f"  ... 还有 {len(tools) - 10} 个工具")


def show_methodology(config):
    """显示方法论"""
    print("\n" + "="*70)
    print("📚 方法论")
    print("="*70)
    
    methodology = config['methodology']
    
    print(f"\n🎯 方法: {methodology['approach']}")
    
    print("\n⚔️  攻击阶段:")
    for i, phase in enumerate(methodology['phases'], 1):
        print(f"  {i:2d}. {phase}")
    
    print(f"\n🕵️  研究的APT组织 ({len(methodology['apt_groups_studied'])}个):")
    for i, apt in enumerate(methodology['apt_groups_studied'][:15], 1):
        print(f"  {i:2d}. {apt}")
    
    if 'emerging_threat_actors_2025' in methodology:
        print(f"\n🆕 2025新兴威胁行为者 ({len(methodology['emerging_threat_actors_2025'])}个):")
        for actor in methodology['emerging_threat_actors_2025']:
            print(f"  • {actor}")
    
    print(f"\n📋 使用的框架:")
    for framework in methodology['frameworks']:
        print(f"  • {framework}")


def show_intelligence_sources(config):
    """显示情报来源"""
    print("\n" + "="*70)
    print("🔍 情报来源")
    print("="*70)
    
    intel = config['intelligence_sources']
    
    print(f"\n📡 威胁情报源 ({len(intel['threat_feeds'])}个)")
    print(f"🎯 0day来源 ({len(intel['0day_sources'])}个)")
    print(f"🕵️  APT情报 ({len(intel['apt_intelligence'])}个)")
    print(f"🌐 暗网来源 ({len(intel['dark_web_sources'])}个)")
    print(f"⏱️  实时监控 ({len(intel['real_time_monitoring'])}个)")


def show_automation(config):
    """显示自动化能力"""
    print("\n" + "="*70)
    print("🤖 自动化能力")
    print("="*70)
    
    auto = config['automation_capabilities']
    
    print(f"\n✅ 持续运作: {auto['continuous_operations']}")
    print(f"✅ 自我更新: {auto['self_updating']}")
    print(f"✅ 自适应战术: {auto['adaptive_tactics']}")
    print(f"✅ 自主决策: {auto['autonomous_decision_making']}")
    print(f"✅ 多阶段攻击: {auto['multi_stage_campaigns']}")
    print(f"✅ 自动报告: {auto['automated_reporting']}")
    print(f"✅ 动态载荷生成: {auto['dynamic_payload_generation']}")
    print(f"✅ 上下文感知规避: {auto['context_aware_evasion']}")
    print(f"✅ 预测性防御分析: {auto['predictive_defense_analysis']}")
    print(f"✅ 实时IOC生成: {auto['real_time_ioc_generation']}")


def show_cutting_edge(config):
    """显示前沿研究"""
    print("\n" + "="*70)
    print("🚀 前沿研究 (2025-2026)")
    print("="*70)
    
    research = config['cutting_edge_research']
    
    print("\n🎯 重点研究领域:")
    for i, area in enumerate(research['focus_areas_2025_2026'], 1):
        print(f"  {i:2d}. {area}")
    
    print("\n🔬 新兴技术:")
    for i, tech in enumerate(research['emerging_technologies'], 1):
        print(f"  {i:2d}. {tech}")


def show_statistics(config):
    """显示统计数据"""
    print("\n" + "="*70)
    print("📊 配置统计")
    print("="*70)
    
    stats = {
        "专注领域": len(config['engagement']['focus']),
        "允许操作": len(config['engagement']['allowed_operations']),
        "目标系统": len(config['engagement']['target_systems']),
        "AI工具": len(config['capabilities'].get('ai_powered_tools', [])),
        "C2框架": len(config['capabilities'].get('c2_frameworks', [])),
        "APT工具": len(config['capabilities'].get('apt_tools', [])),
        "研究的APT组织": len(config['methodology']['apt_groups_studied']),
        "威胁情报源": len(config['intelligence_sources']['threat_feeds']),
        "2025前沿研究领域": len(config['cutting_edge_research']['focus_areas_2025_2026'])
    }
    
    print()
    for key, value in stats.items():
        print(f"  📈 {key}: {value}")
    
    total = sum(stats.values())
    print(f"\n  🎯 总计配置项: {total}")


def show_runtime(config):
    """显示运行时配置"""
    print("\n" + "="*70)
    print("⚙️  运行时配置")
    print("="*70)
    
    runtime = config['runtime']
    
    print(f"\n🌐 互联网访问: {runtime['internet_access']}")
    print(f"🔍 实时情报: {runtime['real_time_intelligence']}")
    print(f"🔄 自动更新: {runtime['auto_update']}")
    
    print(f"\n🛠️  可用工具 ({len(runtime['tools'])}个):")
    for tool in runtime['tools']:
        print(f"  • {tool}")
    
    print(f"\n💻 首选操作系统:")
    for os in runtime['preferred_os']:
        print(f"  • {os}")


def main():
    """主函数"""
    try:
        print_banner()
        
        print("\n⏳ 加载角色配置...")
        config = load_config()
        print("✅ 配置加载成功！\n")
        
        # 显示各个部分
        show_basic_info(config)
        show_engagement_mode(config)
        show_capabilities(config)
        show_methodology(config)
        show_intelligence_sources(config)
        show_automation(config)
        show_cutting_edge(config)
        show_runtime(config)
        show_statistics(config)
        
        # 结束
        print("\n" + "="*70)
        print("✨ 角色配置展示完成")
        print("="*70)
        
        print(f"\n⏰ 展示时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
        print("\n🔴 红队角色已激活，系统就绪！")
        print("\n" + "="*70 + "\n")
        
    except FileNotFoundError:
        print("❌ 错误: 找不到 .assistant-security-prefs.json 文件")
        print("请确保配置文件在当前目录下")
    except json.JSONDecodeError as e:
        print(f"❌ 错误: JSON解析失败 - {e}")
    except Exception as e:
        print(f"❌ 未知错误: {e}")


if __name__ == "__main__":
    main()
