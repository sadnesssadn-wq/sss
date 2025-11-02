#!/usr/bin/env python3
"""
APT Framework Core - 高级持续性威胁攻击框架核心
作者: Red Team Expert
版本: 2.0
更新: 2025-11-02
"""

import asyncio
import json
import logging
import sys
from datetime import datetime
from pathlib import Path
from typing import Dict, List, Optional, Any
from dataclasses import dataclass, asdict
from enum import Enum

# 配置日志
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler('logs/apt_framework.log'),
        logging.StreamHandler(sys.stdout)
    ]
)
logger = logging.getLogger(__name__)


class AttackPhase(Enum):
    """攻击阶段"""
    RECON = "reconnaissance"           # 侦察
    WEAPONIZATION = "weaponization"    # 武器化
    DELIVERY = "delivery"              # 投递
    EXPLOITATION = "exploitation"      # 利用
    INSTALLATION = "installation"      # 安装
    C2 = "command_control"             # 命令与控制
    LATERAL = "lateral_movement"       # 横向移动
    PERSISTENCE = "persistence"        # 持久化
    PRIVILEGE_ESC = "privilege_escalation"  # 权限提升
    EVASION = "defense_evasion"        # 规避检测
    COLLECTION = "collection"          # 数据收集
    EXFILTRATION = "exfiltration"      # 数据外泄


class AttackDomain(Enum):
    """攻击域"""
    WEB_API = "web_api"
    CLOUD = "cloud"
    MOBILE = "mobile"
    IOT_OT = "iot_ot"
    AI_LLM = "ai_llm"
    NETWORK = "network"
    SOCIAL = "social_engineering"
    SUPPLY_CHAIN = "supply_chain"


@dataclass
class Target:
    """目标信息"""
    id: str
    name: str
    domain: Optional[str] = None
    ip_ranges: List[str] = None
    technologies: List[str] = None
    cloud_providers: List[str] = None
    metadata: Dict[str, Any] = None
    
    def __post_init__(self):
        if self.ip_ranges is None:
            self.ip_ranges = []
        if self.technologies is None:
            self.technologies = []
        if self.cloud_providers is None:
            self.cloud_providers = []
        if self.metadata is None:
            self.metadata = {}


@dataclass
class AttackModule:
    """攻击模块基类"""
    name: str
    domain: AttackDomain
    phase: AttackPhase
    techniques: List[str]  # MITRE ATT&CK 技术ID
    description: str
    enabled: bool = True
    
    async def execute(self, target: Target, params: Dict = None) -> Dict:
        """执行攻击模块"""
        raise NotImplementedError


@dataclass
class AttackResult:
    """攻击结果"""
    module: str
    phase: AttackPhase
    success: bool
    timestamp: str
    data: Dict[str, Any]
    vulnerabilities: List[str] = None
    credentials: List[Dict] = None
    artifacts: List[str] = None
    next_steps: List[str] = None
    
    def __post_init__(self):
        if self.vulnerabilities is None:
            self.vulnerabilities = []
        if self.credentials is None:
            self.credentials = []
        if self.artifacts is None:
            self.artifacts = []
        if self.next_steps is None:
            self.next_steps = []


class APTFramework:
    """APT 攻击框架核心"""
    
    def __init__(self, config_path: str = "configs/framework.json"):
        self.config = self._load_config(config_path)
        self.modules: Dict[str, AttackModule] = {}
        self.results: List[AttackResult] = []
        self.current_target: Optional[Target] = None
        self.attack_chain: List[str] = []
        
        logger.info("🎯 APT Framework 初始化完成")
    
    def _load_config(self, config_path: str) -> Dict:
        """加载配置"""
        config_file = Path(config_path)
        if config_file.exists():
            with open(config_file, 'r') as f:
                return json.load(f)
        return self._default_config()
    
    def _default_config(self) -> Dict:
        """默认配置"""
        return {
            "framework_version": "2.0",
            "stealth_mode": True,
            "auto_persistence": True,
            "auto_evasion": True,
            "intelligence_gathering": {
                "enabled": True,
                "sources": ["shodan", "censys", "github", "twitter"],
                "realtime": True
            },
            "attack_preferences": {
                "minimize_noise": True,
                "avoid_detection": True,
                "use_living_off_land": True
            },
            "output": {
                "format": "json",
                "encryption": True,
                "anonymization": True
            }
        }
    
    def register_module(self, module: AttackModule):
        """注册攻击模块"""
        self.modules[module.name] = module
        logger.info(f"✅ 注册模块: {module.name} ({module.domain.value}/{module.phase.value})")
    
    def set_target(self, target: Target):
        """设置目标"""
        self.current_target = target
        logger.info(f"🎯 目标设定: {target.name} ({target.domain or target.ip_ranges})")
    
    async def execute_phase(self, phase: AttackPhase, domain: Optional[AttackDomain] = None) -> List[AttackResult]:
        """执行特定阶段的攻击"""
        if not self.current_target:
            raise ValueError("未设置目标")
        
        phase_results = []
        logger.info(f"🚀 执行阶段: {phase.value}")
        
        # 筛选符合条件的模块
        modules = [
            m for m in self.modules.values()
            if m.phase == phase and m.enabled and (domain is None or m.domain == domain)
        ]
        
        # 并发执行模块
        tasks = [self._execute_module(m) for m in modules]
        results = await asyncio.gather(*tasks, return_exceptions=True)
        
        for result in results:
            if isinstance(result, Exception):
                logger.error(f"❌ 模块执行失败: {result}")
            else:
                phase_results.append(result)
                self.results.append(result)
        
        return phase_results
    
    async def _execute_module(self, module: AttackModule) -> AttackResult:
        """执行单个模块"""
        logger.info(f"  ▶️ 执行: {module.name}")
        start_time = datetime.now()
        
        try:
            result_data = await module.execute(self.current_target)
            success = result_data.get('success', False)
            
            result = AttackResult(
                module=module.name,
                phase=module.phase,
                success=success,
                timestamp=start_time.isoformat(),
                data=result_data,
                vulnerabilities=result_data.get('vulnerabilities', []),
                credentials=result_data.get('credentials', []),
                artifacts=result_data.get('artifacts', []),
                next_steps=result_data.get('next_steps', [])
            )
            
            if success:
                logger.info(f"  ✅ 成功: {module.name}")
            else:
                logger.warning(f"  ⚠️ 失败: {module.name}")
            
            return result
            
        except Exception as e:
            logger.error(f"  ❌ 异常: {module.name} - {e}")
            return AttackResult(
                module=module.name,
                phase=module.phase,
                success=False,
                timestamp=start_time.isoformat(),
                data={'error': str(e)}
            )
    
    async def execute_full_chain(self, target: Target, domains: List[AttackDomain] = None) -> Dict:
        """执行完整攻击链"""
        self.set_target(target)
        self.results = []
        
        logger.info("🔥 启动完整攻击链")
        
        # 定义攻击链顺序
        attack_sequence = [
            AttackPhase.RECON,
            AttackPhase.WEAPONIZATION,
            AttackPhase.DELIVERY,
            AttackPhase.EXPLOITATION,
            AttackPhase.PRIVILEGE_ESC,
            AttackPhase.PERSISTENCE,
            AttackPhase.EVASION,
            AttackPhase.LATERAL,
            AttackPhase.COLLECTION,
            AttackPhase.EXFILTRATION
        ]
        
        all_results = {}
        for phase in attack_sequence:
            phase_results = await self.execute_phase(phase)
            all_results[phase.value] = [asdict(r) for r in phase_results]
            
            # 检查是否有成功的结果，如果关键阶段失败则停止
            if phase in [AttackPhase.EXPLOITATION] and not any(r.success for r in phase_results):
                logger.warning(f"⚠️ 关键阶段 {phase.value} 失败，停止攻击链")
                break
        
        # 生成报告
        report = self._generate_report(all_results)
        self._save_report(report)
        
        logger.info("✅ 攻击链执行完成")
        return report
    
    def _generate_report(self, results: Dict) -> Dict:
        """生成攻击报告"""
        total_modules = sum(len(v) for v in results.values())
        successful_modules = sum(
            sum(1 for r in v if r.get('success', False))
            for v in results.values()
        )
        
        # 收集所有发现
        all_vulns = []
        all_creds = []
        all_artifacts = []
        
        for phase_results in results.values():
            for result in phase_results:
                all_vulns.extend(result.get('vulnerabilities', []))
                all_creds.extend(result.get('credentials', []))
                all_artifacts.extend(result.get('artifacts', []))
        
        report = {
            "framework_version": "2.0",
            "timestamp": datetime.now().isoformat(),
            "target": asdict(self.current_target) if self.current_target else None,
            "summary": {
                "total_modules": total_modules,
                "successful_modules": successful_modules,
                "success_rate": f"{(successful_modules/total_modules*100):.1f}%" if total_modules > 0 else "0%",
                "vulnerabilities_found": len(all_vulns),
                "credentials_obtained": len(all_creds),
                "artifacts_collected": len(all_artifacts)
            },
            "results_by_phase": results,
            "findings": {
                "vulnerabilities": all_vulns,
                "credentials": all_creds,
                "artifacts": all_artifacts
            }
        }
        
        return report
    
    def _save_report(self, report: Dict):
        """保存报告"""
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        target_name = self.current_target.name.replace(' ', '_') if self.current_target else 'unknown'
        filename = f"logs/apt_report_{target_name}_{timestamp}.json"
        
        with open(filename, 'w') as f:
            json.dump(report, f, indent=2)
        
        logger.info(f"📝 报告已保存: {filename}")
    
    def get_intelligence(self) -> Dict:
        """获取威胁情报摘要"""
        return {
            "target": self.current_target.name if self.current_target else None,
            "modules_loaded": len(self.modules),
            "results_count": len(self.results),
            "success_rate": f"{sum(1 for r in self.results if r.success) / len(self.results) * 100:.1f}%" if self.results else "0%"
        }


if __name__ == "__main__":
    # 测试框架
    async def main():
        framework = APTFramework()
        
        # 创建测试目标
        target = Target(
            id="target_001",
            name="Test Organization",
            domain="example.com",
            ip_ranges=["192.168.1.0/24"],
            technologies=["nginx", "mysql", "redis"],
            cloud_providers=["AWS"]
        )
        
        framework.set_target(target)
        print(f"\n✅ APT Framework 就绪")
        print(f"📊 当前情报: {framework.get_intelligence()}")
    
    asyncio.run(main())
