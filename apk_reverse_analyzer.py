#!/usr/bin/env python3
"""
VNPost APK逆向分析工具
分析API签名算法和硬编码内容
"""

import os
import re
import zipfile
import subprocess
import json
import xml.etree.ElementTree as ET
from pathlib import Path
import binascii

class APKAnalyzer:
    def __init__(self, apk_path):
        self.apk_path = apk_path
        self.extract_dir = "apk_analysis"
        self.results = {
            "basic_info": {},
            "permissions": [],
            "api_endpoints": [],
            "hardcoded_secrets": [],
            "network_security": {},
            "signature_algorithms": [],
            "certificates": [],
            "strings": []
        }
    
    def analyze(self):
        """执行完整的APK分析"""
        print("🔍 开始APK逆向分析...")
        
        # 1. 基础信息分析
        self.extract_basic_info()
        
        # 2. 解包APK
        self.extract_apk()
        
        # 3. 分析AndroidManifest.xml
        self.analyze_manifest()
        
        # 4. 分析DEX文件
        self.analyze_dex_files()
        
        # 5. 提取字符串
        self.extract_strings()
        
        # 6. 查找API相关内容
        self.find_api_signatures()
        
        # 7. 查找硬编码内容
        self.find_hardcoded_secrets()
        
        # 8. 分析网络安全配置
        self.analyze_network_security()
        
        # 9. 分析证书和签名
        self.analyze_certificates()
        
        # 10. 生成报告
        self.generate_report()
        
        return self.results
    
    def extract_basic_info(self):
        """提取APK基础信息"""
        print("📋 分析APK基础信息...")
        
        try:
            # 使用aapt获取基础信息
            result = subprocess.run(['aapt', 'dump', 'badging', self.apk_path], 
                                  capture_output=True, text=True)
            
            if result.returncode == 0:
                output = result.stdout
                
                # 解析包名
                package_match = re.search(r"package: name='([^']+)'", output)
                if package_match:
                    self.results["basic_info"]["package_name"] = package_match.group(1)
                
                # 解析版本信息
                version_match = re.search(r"versionName='([^']+)'", output)
                if version_match:
                    self.results["basic_info"]["version_name"] = version_match.group(1)
                
                version_code_match = re.search(r"versionCode='([^']+)'", output)
                if version_code_match:
                    self.results["basic_info"]["version_code"] = version_code_match.group(1)
                    
        except Exception as e:
            print(f"⚠️  基础信息分析失败: {e}")
            # 从文件名推断
            self.results["basic_info"]["package_name"] = "com.vnpost.tellers"
    
    def extract_apk(self):
        """解包APK文件"""
        print("📦 解包APK文件...")
        
        if os.path.exists(self.extract_dir):
            subprocess.run(['rm', '-rf', self.extract_dir])
        
        os.makedirs(self.extract_dir, exist_ok=True)
        
        try:
            with zipfile.ZipFile(self.apk_path, 'r') as apk:
                apk.extractall(self.extract_dir)
            print(f"✅ APK已解包到: {self.extract_dir}")
        except Exception as e:
            print(f"❌ 解包失败: {e}")
    
    def analyze_manifest(self):
        """分析AndroidManifest.xml"""
        print("📄 分析AndroidManifest.xml...")
        
        manifest_path = os.path.join(self.extract_dir, "AndroidManifest.xml")
        
        if os.path.exists(manifest_path):
            try:
                with open(manifest_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                
                # 提取权限
                permissions = re.findall(r'android:name="([^"]*permission[^"]*)"', content)
                self.results["permissions"] = list(set(permissions))
                
                # 查找API相关的meta-data
                api_configs = re.findall(r'<meta-data[^>]*android:name="([^"]*(?:API|URL|KEY|SECRET)[^"]*)"[^>]*android:value="([^"]*)"', content, re.IGNORECASE)
                
                for name, value in api_configs:
                    self.results["api_endpoints"].append({
                        "type": "manifest_meta_data",
                        "name": name,
                        "value": value
                    })
                
                print(f"✅ 找到 {len(self.results['permissions'])} 个权限")
                print(f"✅ 找到 {len(api_configs)} 个API配置")
                
            except Exception as e:
                print(f"⚠️  Manifest分析失败: {e}")
    
    def analyze_dex_files(self):
        """分析DEX文件"""
        print("🔍 分析DEX文件...")
        
        dex_files = []
        for root, dirs, files in os.walk(self.extract_dir):
            for file in files:
                if file.endswith('.dex'):
                    dex_files.append(os.path.join(root, file))
        
        print(f"📁 找到 {len(dex_files)} 个DEX文件")
        
        for dex_file in dex_files:
            try:
                # 使用dexdump分析DEX文件（如果可用）
                if subprocess.run(['which', 'dexdump'], capture_output=True).returncode == 0:
                    result = subprocess.run(['dexdump', '-d', dex_file], 
                                          capture_output=True, text=True)
                    
                    if result.returncode == 0:
                        # 分析反编译输出
                        self.analyze_dex_output(result.stdout)
                
            except Exception as e:
                print(f"⚠️  DEX分析失败: {e}")
    
    def analyze_dex_output(self, dex_output):
        """分析DEX反编译输出"""
        # 查找网络相关的类和方法
        network_patterns = [
            r'(https?://[^\s"\']+)',  # URL
            r'(api[._-]?key|secret[._-]?key|access[._-]?token)',  # API密钥
            r'(signature|sign|hash|encrypt|decrypt)',  # 签名相关
            r'(okhttp|retrofit|volley|httpclient)',  # 网络库
        ]
        
        for pattern in network_patterns:
            matches = re.findall(pattern, dex_output, re.IGNORECASE)
            for match in matches:
                if match not in [item['value'] for item in self.results["api_endpoints"]]:
                    self.results["api_endpoints"].append({
                        "type": "dex_analysis",
                        "pattern": pattern,
                        "value": match
                    })
    
    def extract_strings(self):
        """提取APK中的字符串"""
        print("🔤 提取字符串内容...")
        
        strings_found = []
        
        # 从所有文件中提取字符串
        for root, dirs, files in os.walk(self.extract_dir):
            for file in files:
                file_path = os.path.join(root, file)
                
                try:
                    # 对于二进制文件使用strings命令
                    if file.endswith(('.dex', '.so', '.arsc')):
                        result = subprocess.run(['strings', file_path], 
                                              capture_output=True, text=True)
                        if result.returncode == 0:
                            strings_found.extend(result.stdout.splitlines())
                    
                    # 对于文本文件直接读取
                    elif file.endswith(('.xml', '.json', '.txt', '.properties')):
                        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                            content = f.read()
                            strings_found.extend(content.splitlines())
                            
                except Exception as e:
                    continue
        
        # 过滤有价值的字符串
        valuable_strings = []
        patterns = [
            r'https?://[^\s]+',  # URLs
            r'[a-zA-Z0-9+/]{20,}={0,2}',  # Base64编码
            r'[0-9a-fA-F]{32,}',  # 十六进制字符串
            r'[A-Za-z0-9+/]{40,}',  # 可能的密钥
            r'api[._-]?key|secret|token|password',  # 敏感关键词
        ]
        
        for string in strings_found:
            string = string.strip()
            if len(string) > 5:  # 过滤太短的字符串
                for pattern in patterns:
                    if re.search(pattern, string, re.IGNORECASE):
                        valuable_strings.append(string)
                        break
        
        self.results["strings"] = list(set(valuable_strings))
        print(f"✅ 提取到 {len(self.results['strings'])} 个有价值的字符串")
    
    def find_api_signatures(self):
        """查找API签名算法"""
        print("🔐 分析API签名算法...")
        
        signature_patterns = [
            # 常见签名算法
            r'(MD5|SHA1|SHA256|SHA512|HMAC)',
            r'(RSA|DSA|ECDSA)',
            r'(AES|DES|3DES)',
            
            # 签名相关方法
            r'(sign|signature|digest|hash)',
            r'(encrypt|decrypt|cipher)',
            
            # 常见的API签名参数
            r'(timestamp|nonce|appid|appkey)',
            r'(access_token|refresh_token)',
        ]
        
        all_content = ' '.join(self.results["strings"])
        
        for pattern in signature_patterns:
            matches = re.findall(pattern, all_content, re.IGNORECASE)
            for match in matches:
                if match not in self.results["signature_algorithms"]:
                    self.results["signature_algorithms"].append(match)
        
        print(f"✅ 识别到 {len(self.results['signature_algorithms'])} 个签名相关算法")
    
    def find_hardcoded_secrets(self):
        """查找硬编码的密钥和配置"""
        print("🔑 查找硬编码密钥...")
        
        secret_patterns = [
            (r'api[._-]?key["\s]*[:=]["\s]*([a-zA-Z0-9+/]{10,})', 'API Key'),
            (r'secret[._-]?key["\s]*[:=]["\s]*([a-zA-Z0-9+/]{10,})', 'Secret Key'),
            (r'access[._-]?token["\s]*[:=]["\s]*([a-zA-Z0-9+/]{10,})', 'Access Token'),
            (r'app[._-]?id["\s]*[:=]["\s]*([a-zA-Z0-9]{8,})', 'App ID'),
            (r'client[._-]?secret["\s]*[:=]["\s]*([a-zA-Z0-9+/]{10,})', 'Client Secret'),
            (r'private[._-]?key["\s]*[:=]["\s]*([a-zA-Z0-9+/=]{20,})', 'Private Key'),
            (r'password["\s]*[:=]["\s]*([a-zA-Z0-9!@#$%^&*]{6,})', 'Password'),
        ]
        
        all_content = ' '.join(self.results["strings"])
        
        for pattern, secret_type in secret_patterns:
            matches = re.findall(pattern, all_content, re.IGNORECASE)
            for match in matches:
                self.results["hardcoded_secrets"].append({
                    "type": secret_type,
                    "value": match,
                    "pattern": pattern
                })
        
        print(f"✅ 发现 {len(self.results['hardcoded_secrets'])} 个硬编码密钥")
    
    def analyze_network_security(self):
        """分析网络安全配置"""
        print("🌐 分析网络安全配置...")
        
        # 查找网络安全配置文件
        network_config_path = os.path.join(self.extract_dir, "res", "xml", "network_security_config.xml")
        
        if os.path.exists(network_config_path):
            try:
                with open(network_config_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                    self.results["network_security"]["config_file"] = content
            except Exception as e:
                print(f"⚠️  网络配置分析失败: {e}")
        
        # 从字符串中查找网络相关配置
        network_keywords = ['cleartext', 'certificate', 'pinning', 'trust-anchors']
        for keyword in network_keywords:
            matches = [s for s in self.results["strings"] if keyword.lower() in s.lower()]
            if matches:
                self.results["network_security"][keyword] = matches
    
    def analyze_certificates(self):
        """分析证书和签名信息"""
        print("📜 分析证书信息...")
        
        meta_inf_path = os.path.join(self.extract_dir, "META-INF")
        
        if os.path.exists(meta_inf_path):
            cert_files = []
            for file in os.listdir(meta_inf_path):
                if file.endswith(('.RSA', '.DSA', '.EC')):
                    cert_files.append(os.path.join(meta_inf_path, file))
            
            for cert_file in cert_files:
                try:
                    # 使用keytool分析证书
                    result = subprocess.run(['keytool', '-printcert', '-file', cert_file], 
                                          capture_output=True, text=True)
                    
                    if result.returncode == 0:
                        self.results["certificates"].append({
                            "file": cert_file,
                            "info": result.stdout
                        })
                        
                except Exception as e:
                    print(f"⚠️  证书分析失败: {e}")
    
    def generate_report(self):
        """生成分析报告"""
        print("\n" + "="*60)
        print("📊 VNPost APK 逆向分析报告")
        print("="*60)
        
        # 基础信息
        print(f"\n📋 基础信息:")
        for key, value in self.results["basic_info"].items():
            print(f"  {key}: {value}")
        
        # 权限
        print(f"\n🔒 权限列表 ({len(self.results['permissions'])}):")
        for perm in self.results["permissions"][:10]:  # 显示前10个
            print(f"  • {perm}")
        if len(self.results["permissions"]) > 10:
            print(f"  ... 还有 {len(self.results['permissions']) - 10} 个权限")
        
        # API端点
        print(f"\n🌐 API端点和配置 ({len(self.results['api_endpoints'])}):")
        for api in self.results["api_endpoints"]:
            print(f"  • {api['type']}: {api.get('name', 'N/A')} = {api['value']}")
        
        # 硬编码密钥
        print(f"\n🔑 硬编码密钥 ({len(self.results['hardcoded_secrets'])}):")
        for secret in self.results["hardcoded_secrets"]:
            masked_value = secret['value'][:8] + "***" if len(secret['value']) > 8 else "***"
            print(f"  • {secret['type']}: {masked_value}")
        
        # 签名算法
        print(f"\n🔐 签名算法 ({len(self.results['signature_algorithms'])}):")
        for algo in self.results["signature_algorithms"]:
            print(f"  • {algo}")
        
        # 重要字符串
        print(f"\n🔤 重要字符串 (前20个):")
        for string in self.results["strings"][:20]:
            if len(string) < 100:  # 只显示不太长的字符串
                print(f"  • {string}")
        
        print(f"\n✅ 分析完成！共发现:")
        print(f"  - {len(self.results['permissions'])} 个权限")
        print(f"  - {len(self.results['api_endpoints'])} 个API配置")
        print(f"  - {len(self.results['hardcoded_secrets'])} 个硬编码密钥")
        print(f"  - {len(self.results['signature_algorithms'])} 个签名算法")
        print(f"  - {len(self.results['strings'])} 个有价值字符串")
        
        # 保存详细报告到JSON文件
        with open("vnpost_analysis_report.json", "w", encoding="utf-8") as f:
            json.dump(self.results, f, indent=2, ensure_ascii=False)
        
        print(f"\n📄 详细报告已保存到: vnpost_analysis_report.json")

def main():
    apk_path = "com.vnpost.tellers.apk"
    
    if not os.path.exists(apk_path):
        print(f"❌ APK文件不存在: {apk_path}")
        return
    
    analyzer = APKAnalyzer(apk_path)
    results = analyzer.analyze()
    
    print("\n🎯 针对VNPost应用的特定分析建议:")
    print("="*50)
    print("1. 重点关注邮政服务相关的API端点")
    print("2. 查找快递跟踪、支付相关的签名算法")
    print("3. 检查用户认证和会话管理机制")
    print("4. 分析地理位置和配送路径相关功能")
    print("5. 审查支付接口的安全实现")
    
    print("\n🛠️  进一步分析建议:")
    print("- 使用Frida进行动态分析")
    print("- 使用Burp Suite拦截网络流量")
    print("- 分析加密算法的具体实现")
    print("- 检查SSL证书固定机制")

if __name__ == "__main__":
    main()