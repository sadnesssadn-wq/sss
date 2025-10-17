#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
APP逆向渗透工具包 - 红队安全专家专用
支持Android APK、iOS IPA、小程序等移动应用逆向分析
"""

import subprocess
import sys
import os
import json
import time
import threading
import hashlib
import zipfile
import xml.etree.ElementTree as ET
from datetime import datetime

class AppReverseEngineer:
    def __init__(self, apk_path):
        self.apk_path = apk_path
        self.work_dir = f"/tmp/app_analysis_{int(time.time())}"
        self.results = {}
        self.session_id = hashlib.md5(f"{apk_path}{int(time.time())}".encode()).hexdigest()[:8]
        
    def log(self, message, level="INFO"):
        """日志记录"""
        timestamp = datetime.now().strftime("%H:%M:%S")
        print(f"[{timestamp}] [{level}] {message}")
    
    def setup_environment(self):
        """设置分析环境"""
        self.log("🔧 设置APP逆向分析环境", "INFO")
        
        try:
            os.makedirs(self.work_dir, exist_ok=True)
            self.log(f"工作目录: {self.work_dir}", "DEBUG")
            return True
        except Exception as e:
            self.log(f"环境设置失败: {e}", "ERROR")
            return False
    
    def basic_apk_info(self):
        """基础APK信息分析"""
        self.log("📱 分析APK基础信息", "INFO")
        
        try:
            # 使用aapt获取APK信息
            cmd = f"aapt dump badging '{self.apk_path}'"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=30)
            
            if result.returncode == 0:
                self.results["APK基础信息"] = result.stdout
                self.log("✅ APK基础信息获取成功", "SUCCESS")
                
                # 解析关键信息
                lines = result.stdout.split('\n')
                for line in lines:
                    if 'package:' in line:
                        self.log(f"包名: {line}", "INFO")
                    elif 'versionCode=' in line:
                        self.log(f"版本代码: {line}", "INFO")
                    elif 'versionName=' in line:
                        self.log(f"版本名称: {line}", "INFO")
                    elif 'uses-permission:' in line:
                        self.log(f"权限: {line}", "INFO")
            else:
                self.log(f"❌ APK信息获取失败: {result.stderr}", "ERROR")
                
        except Exception as e:
            self.log(f"❌ APK信息分析异常: {e}", "ERROR")
    
    def decompile_apk(self):
        """反编译APK"""
        self.log("🔓 反编译APK", "INFO")
        
        try:
            # 使用apktool反编译
            decompile_dir = f"{self.work_dir}/decompiled"
            cmd = f"apktool d '{self.apk_path}' -o '{decompile_dir}' -f"
            
            self.log("执行apktool反编译...", "DEBUG")
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=120)
            
            if result.returncode == 0:
                self.results["反编译状态"] = "成功"
                self.log("✅ APK反编译成功", "SUCCESS")
                
                # 分析反编译结果
                self.analyze_decompiled_files(decompile_dir)
            else:
                self.log(f"❌ APK反编译失败: {result.stderr}", "ERROR")
                self.results["反编译状态"] = f"失败: {result.stderr}"
                
        except Exception as e:
            self.log(f"❌ APK反编译异常: {e}", "ERROR")
    
    def analyze_decompiled_files(self, decompile_dir):
        """分析反编译文件"""
        self.log("🔍 分析反编译文件", "INFO")
        
        analysis_tasks = {
            "AndroidManifest.xml": f"cat '{decompile_dir}/AndroidManifest.xml'",
            "字符串资源": f"find '{decompile_dir}' -name '*.xml' -exec grep -l 'string' {{}} \\; | head -10",
            "网络配置": f"find '{decompile_dir}' -name '*.xml' -exec grep -l 'network_security_config\\|usesCleartextTraffic' {{}} \\;",
            "权限声明": f"grep -r 'uses-permission' '{decompile_dir}' | head -20",
            "Activity组件": f"grep -r 'android:name.*Activity' '{decompile_dir}' | head -20",
            "Service组件": f"grep -r 'android:name.*Service' '{decompile_dir}' | head -20",
            "Receiver组件": f"grep -r 'android:name.*Receiver' '{decompile_dir}' | head -20",
            "Provider组件": f"grep -r 'android:name.*Provider' '{decompile_dir}' | head -20"
        }
        
        for task_name, command in analysis_tasks.items():
            try:
                self.log(f"分析: {task_name}", "DEBUG")
                result = subprocess.run(command, shell=True, capture_output=True, text=True, timeout=30)
                
                if result.returncode == 0 and result.stdout.strip():
                    self.results[f"分析_{task_name}"] = result.stdout
                    self.log(f"✅ {task_name} 分析完成", "SUCCESS")
                else:
                    self.log(f"❌ {task_name} 无数据", "DEBUG")
                    
            except Exception as e:
                self.log(f"❌ {task_name} 分析异常: {e}", "ERROR")
    
    def extract_java_code(self):
        """提取Java代码"""
        self.log("☕ 提取Java代码", "INFO")
        
        try:
            # 使用jadx提取Java代码
            java_dir = f"{self.work_dir}/java_source"
            cmd = f"jadx -d '{java_dir}' '{self.apk_path}'"
            
            self.log("执行jadx提取Java代码...", "DEBUG")
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=180)
            
            if result.returncode == 0:
                self.results["Java代码提取"] = "成功"
                self.log("✅ Java代码提取成功", "SUCCESS")
                
                # 分析Java代码
                self.analyze_java_code(java_dir)
            else:
                self.log(f"❌ Java代码提取失败: {result.stderr}", "ERROR")
                self.results["Java代码提取"] = f"失败: {result.stderr}"
                
        except Exception as e:
            self.log(f"❌ Java代码提取异常: {e}", "ERROR")
    
    def analyze_java_code(self, java_dir):
        """分析Java代码"""
        self.log("🔍 分析Java代码", "INFO")
        
        analysis_patterns = {
            "网络请求": "grep -r -i 'http\\|url\\|request\\|response' '{java_dir}' | head -20",
            "数据库操作": "grep -r -i 'sqlite\\|database\\|db\\|query' '{java_dir}' | head -20",
            "加密解密": "grep -r -i 'encrypt\\|decrypt\\|cipher\\|aes\\|des\\|rsa' '{java_dir}' | head -20",
            "文件操作": "grep -r -i 'file\\|read\\|write\\|save\\|load' '{java_dir}' | head -20",
            "网络配置": "grep -r -i 'network\\|ssl\\|tls\\|certificate' '{java_dir}' | head -20",
            "权限检查": "grep -r -i 'permission\\|checkpermission\\|requestpermission' '{java_dir}' | head -20",
            "敏感信息": "grep -r -i 'password\\|token\\|key\\|secret\\|api' '{java_dir}' | head -20",
            "调试信息": "grep -r -i 'log\\|debug\\|print\\|system.out' '{java_dir}' | head -20"
        }
        
        for pattern_name, command in analysis_patterns.items():
            try:
                self.log(f"搜索: {pattern_name}", "DEBUG")
                result = subprocess.run(command.format(java_dir=java_dir), shell=True, capture_output=True, text=True, timeout=30)
                
                if result.returncode == 0 and result.stdout.strip():
                    self.results[f"Java_{pattern_name}"] = result.stdout
                    self.log(f"✅ {pattern_name} 发现内容", "SUCCESS")
                else:
                    self.log(f"❌ {pattern_name} 无发现", "DEBUG")
                    
            except Exception as e:
                self.log(f"❌ {pattern_name} 搜索异常: {e}", "ERROR")
    
    def security_analysis(self):
        """安全分析"""
        self.log("🔒 进行安全分析", "INFO")
        
        security_checks = {
            "证书验证": "grep -r -i 'certificate\\|ssl\\|tls\\|trust' '{self.work_dir}' | head -20",
            "网络安全": "grep -r -i 'cleartext\\|http\\|insecure' '{self.work_dir}' | head -20",
            "数据存储": "grep -r -i 'sharedpreferences\\|sqlite\\|file' '{self.work_dir}' | head -20",
            "权限滥用": "grep -r -i 'dangerous\\|signature\\|system' '{self.work_dir}' | head -20",
            "代码混淆": "find '{self.work_dir}' -name '*.java' -exec grep -l 'a\\|b\\|c\\|d\\|e' {} \\; | head -10",
            "调试信息": "grep -r -i 'debug\\|test\\|development' '{self.work_dir}' | head -20"
        }
        
        for check_name, command in security_checks.items():
            try:
                self.log(f"检查: {check_name}", "DEBUG")
                result = subprocess.run(command.format(work_dir=self.work_dir), shell=True, capture_output=True, text=True, timeout=30)
                
                if result.returncode == 0 and result.stdout.strip():
                    self.results[f"安全_{check_name}"] = result.stdout
                    self.log(f"⚠️  {check_name} 发现风险", "WARNING")
                else:
                    self.log(f"✅ {check_name} 无风险", "SUCCESS")
                    
            except Exception as e:
                self.log(f"❌ {check_name} 检查异常: {e}", "ERROR")
    
    def vulnerability_scan(self):
        """漏洞扫描"""
        self.log("🔍 进行漏洞扫描", "INFO")
        
        vulnerability_patterns = {
            "SQL注入": "grep -r -i 'rawquery\\|query\\|execsql' '{self.work_dir}' | head -20",
            "XSS漏洞": "grep -r -i 'webview\\|javascript\\|evaluatejavascript' '{self.work_dir}' | head -20",
            "文件上传": "grep -r -i 'upload\\|multipart\\|file' '{self.work_dir}' | head -20",
            "路径遍历": "grep -r -i 'file://\\|../\\|..\\\\' '{self.work_dir}' | head -20",
            "硬编码密钥": "grep -r -i 'password.*=.*[\"\\']\\|key.*=.*[\"\\']\\|secret.*=.*[\"\\']' '{self.work_dir}' | head -20",
            "不安全的随机数": "grep -r -i 'random\\|math.random' '{self.work_dir}' | head -20",
            "弱加密": "grep -r -i 'md5\\|sha1\\|des\\|rc4' '{self.work_dir}' | head -20",
            "敏感信息泄露": "grep -r -i 'password\\|token\\|key\\|secret' '{self.work_dir}' | head -20"
        }
        
        for vuln_name, command in vulnerability_patterns.items():
            try:
                self.log(f"扫描: {vuln_name}", "DEBUG")
                result = subprocess.run(command.format(work_dir=self.work_dir), shell=True, capture_output=True, text=True, timeout=30)
                
                if result.returncode == 0 and result.stdout.strip():
                    self.results[f"漏洞_{vuln_name}"] = result.stdout
                    self.log(f"🚨 {vuln_name} 发现漏洞", "ERROR")
                else:
                    self.log(f"✅ {vuln_name} 无漏洞", "SUCCESS")
                    
            except Exception as e:
                self.log(f"❌ {vuln_name} 扫描异常: {e}", "ERROR")
    
    def generate_report(self):
        """生成分析报告"""
        self.log("📋 生成分析报告", "INFO")
        
        report = {
            "session_id": self.session_id,
            "apk_path": self.apk_path,
            "work_dir": self.work_dir,
            "timestamp": datetime.now().isoformat(),
            "results": self.results,
            "summary": {
                "total_checks": len(self.results),
                "vulnerabilities_found": len([k for k in self.results.keys() if k.startswith("漏洞_")]),
                "security_issues": len([k for k in self.results.keys() if k.startswith("安全_")]),
                "risk_level": "HIGH" if len([k for k in self.results.keys() if k.startswith("漏洞_")]) > 0 else "MEDIUM"
            }
        }
        
        # 保存报告
        report_file = f"/tmp/app_analysis_report_{self.session_id}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        
        self.log(f"报告已保存: {report_file}", "SUCCESS")
        return report
    
    def run_full_analysis(self):
        """运行完整分析"""
        self.log("🚀 启动APP逆向渗透分析", "INFO")
        self.log("=" * 60, "INFO")
        
        if not self.setup_environment():
            return False
        
        # 1. 基础信息分析
        self.basic_apk_info()
        
        # 2. 反编译APK
        self.decompile_apk()
        
        # 3. 提取Java代码
        self.extract_java_code()
        
        # 4. 安全分析
        self.security_analysis()
        
        # 5. 漏洞扫描
        self.vulnerability_scan()
        
        # 6. 生成报告
        report = self.generate_report()
        
        self.log("🎯 APP逆向分析完成！", "SUCCESS")
        self.log(f"风险等级: {report['summary']['risk_level']}", "WARNING")
        self.log(f"发现漏洞: {report['summary']['vulnerabilities_found']}", "ERROR")
        self.log(f"安全问题: {report['summary']['security_issues']}", "WARNING")
        
        return report

def main():
    if len(sys.argv) < 2:
        print("使用方法: python3 app_reverse_engineering.py <APK文件路径>")
        print("示例: python3 app_reverse_engineering.py /path/to/app.apk")
        sys.exit(1)
    
    apk_path = sys.argv[1]
    
    if not os.path.exists(apk_path):
        print(f"❌ APK文件不存在: {apk_path}")
        sys.exit(1)
    
    analyzer = AppReverseEngineer(apk_path)
    analyzer.run_full_analysis()

if __name__ == "__main__":
    main()