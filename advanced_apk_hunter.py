#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
🔥 高级APK漏洞自动化挖掘系统
专注于深度分析，而非表面扫描
"""

import os
import re
import json
import subprocess
import hashlib
from pathlib import Path
from typing import List, Dict, Set
import zipfile

class AdvancedAPKHunter:
    """深度APK漏洞挖掘器"""
    
    def __init__(self, apk_path: str, output_dir: str = "./analysis_output"):
        self.apk_path = apk_path
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(exist_ok=True)
        self.vulnerabilities = []
        
    # ============================================================
    # 1. 深度字符串提取 - 不只是简单的grep
    # ============================================================
    def deep_string_analysis(self, extracted_dir: str) -> Dict:
        """深度分析所有字符串，提取敏感信息"""
        print("[*] 开始深度字符串分析...")
        
        findings = {
            'api_keys': set(),
            'secrets': set(),
            'endpoints': set(),
            'encryption_keys': set(),
            'hardcoded_credentials': set(),
            'internal_ips': set(),
            'jwt_secrets': set(),
            'database_strings': set(),
            'crypto_material': set()
        }
        
        patterns = {
            # API密钥模式（更精确）
            'api_keys': [
                r'AIza[0-9A-Za-z_-]{35}',  # Google API
                r'sk_live_[0-9a-zA-Z]{24}',  # Stripe
                r'rk_live_[0-9a-zA-Z]{24}',  # Stripe
                r'sq0atp-[0-9A-Za-z\-_]{22}',  # Square
                r'SK[0-9a-fA-F]{32}',  # Twilio
                r'AC[a-zA-Z0-9_\-]{32}',  # Twilio Account SID
            ],
            # 加密密钥和密文
            'encryption_keys': [
                r'["\']aes[_-]?key["\']:\s*["\']([^"\']{16,})["\']',
                r'["\']secret[_-]?key["\']:\s*["\']([^"\']{16,})["\']',
                r'ENCRYPT[_]?KEY\s*=\s*["\']([^"\']+)["\']',
            ],
            # JWT相关
            'jwt_secrets': [
                r'jwt[_-]?secret[_-]?key["\']?\s*[:=]\s*["\']([^"\']{16,})["\']',
                r'HS256[_-]?SECRET',
                r'RS256[_-]?PRIVATE[_-]?KEY',
            ],
            # 硬编码凭证
            'hardcoded_credentials': [
                r'password\s*[:=]\s*["\'](?!.*\$\{)([^"\']{4,})["\']',
                r'passwd\s*[:=]\s*["\']([^"\']{4,})["\']',
                r'username\s*[:=]\s*["\'][a-zA-Z0-9_]+["\'].*password\s*[:=]\s*["\']([^"\']+)["\']',
            ],
            # 数据库连接字符串
            'database_strings': [
                r'mongodb\+srv://[^\s]+',
                r'postgres://[^\s]+',
                r'mysql://[^\s]+',
                r'jdbc:[^\s]+',
            ],
            # 内部IP和内网地址
            'internal_ips': [
                r'10\.\d{1,3}\.\d{1,3}\.\d{1,3}',
                r'172\.(1[6-9]|2[0-9]|3[0-1])\.\d{1,3}\.\d{1,3}',
                r'192\.168\.\d{1,3}\.\d{1,3}',
            ],
            # API端点（深度提取）
            'endpoints': [
                r'https?://[a-zA-Z0-9\-\.]+/[a-zA-Z0-9\-\._/]+',
                r'/api/v[0-9]+/[a-zA-Z0-9\-_/]+',
                r'wss?://[a-zA-Z0-9\-\.]+',
            ]
        }
        
        # 遍历所有文件
        for root, dirs, files in os.walk(extracted_dir):
            for file in files:
                filepath = os.path.join(root, file)
                try:
                    # 只分析文本文件和特定二进制文件
                    if file.endswith(('.xml', '.json', '.js', '.txt', '.so', '.dex', '.properties')):
                        with open(filepath, 'rb') as f:
                            content = f.read()
                            # 尝试解码
                            try:
                                text = content.decode('utf-8', errors='ignore')
                            except:
                                text = content.decode('latin-1', errors='ignore')
                            
                            # 应用所有模式
                            for category, pattern_list in patterns.items():
                                for pattern in pattern_list:
                                    matches = re.finditer(pattern, text, re.IGNORECASE)
                                    for match in matches:
                                        finding = match.group(0) if match.lastindex is None else match.group(1)
                                        findings[category].add(f"{finding} [来源: {file}]")
                except Exception as e:
                    continue
        
        # 转换set为list以便JSON序列化
        findings_json = {k: list(v) for k, v in findings.items()}
        
        # 保存结果
        with open(self.output_dir / 'deep_string_analysis.json', 'w', encoding='utf-8') as f:
            json.dump(findings_json, f, indent=2, ensure_ascii=False)
        
        print(f"[+] 发现 {sum(len(v) for v in findings.values())} 个潜在敏感字符串")
        return findings_json
    
    # ============================================================
    # 2. Native库深度分析 - 这才是关键
    # ============================================================
    def analyze_native_libraries(self, extracted_dir: str) -> List[Dict]:
        """分析所有.so文件，寻找漏洞"""
        print("[*] 开始Native库深度分析...")
        
        vulnerabilities = []
        
        # 查找所有.so文件
        so_files = []
        for root, dirs, files in os.walk(extracted_dir):
            for file in files:
                if file.endswith('.so'):
                    so_files.append(os.path.join(root, file))
        
        print(f"[*] 发现 {len(so_files)} 个Native库")
        
        for so_file in so_files:
            print(f"[*] 分析: {os.path.basename(so_file)}")
            
            # 1. 检查危险函数
            dangerous_functions = self._check_dangerous_functions(so_file)
            if dangerous_functions:
                vulnerabilities.append({
                    'type': 'DANGEROUS_NATIVE_FUNCTIONS',
                    'severity': 'HIGH',
                    'file': so_file,
                    'functions': dangerous_functions,
                    'description': '发现危险的Native函数，可能存在缓冲区溢出或命令注入'
                })
            
            # 2. 检查加密实现
            crypto_findings = self._check_crypto_implementation(so_file)
            if crypto_findings:
                vulnerabilities.append({
                    'type': 'WEAK_CRYPTO_NATIVE',
                    'severity': 'MEDIUM',
                    'file': so_file,
                    'details': crypto_findings,
                    'description': '发现弱加密实现或硬编码密钥'
                })
            
            # 3. 提取JNI函数签名
            jni_functions = self._extract_jni_signatures(so_file)
            if jni_functions:
                vulnerabilities.append({
                    'type': 'JNI_EXPOSED_FUNCTIONS',
                    'severity': 'INFO',
                    'file': so_file,
                    'functions': jni_functions,
                    'description': 'JNI暴露的函数，可用于Hook分析'
                })
        
        # 保存结果
        with open(self.output_dir / 'native_analysis.json', 'w', encoding='utf-8') as f:
            json.dump(vulnerabilities, f, indent=2, ensure_ascii=False)
        
        print(f"[+] Native分析完成，发现 {len(vulnerabilities)} 个问题")
        return vulnerabilities
    
    def _check_dangerous_functions(self, so_file: str) -> List[str]:
        """检查危险函数"""
        dangerous = []
        dangerous_funcs = [
            'strcpy', 'strcat', 'sprintf', 'gets', 'scanf',
            'system', 'popen', 'exec', 'eval',
            'memcpy', 'memmove', 'strncpy'
        ]
        
        try:
            result = subprocess.run(['strings', so_file], 
                                  capture_output=True, text=True, timeout=30)
            content = result.stdout
            
            for func in dangerous_funcs:
                if func in content:
                    dangerous.append(func)
        except:
            pass
        
        return dangerous
    
    def _check_crypto_implementation(self, so_file: str) -> List[str]:
        """检查加密实现"""
        findings = []
        crypto_indicators = [
            'AES', 'DES', 'RSA', 'MD5', 'SHA1', 'SHA256',
            'encrypt', 'decrypt', 'cipher', 'key',
            'HMAC', 'base64', 'sign', 'verify'
        ]
        
        try:
            result = subprocess.run(['strings', so_file], 
                                  capture_output=True, text=True, timeout=30)
            content = result.stdout
            
            for indicator in crypto_indicators:
                if indicator.lower() in content.lower():
                    # 检查附近是否有硬编码密钥
                    lines = content.split('\n')
                    for i, line in enumerate(lines):
                        if indicator.lower() in line.lower():
                            # 检查前后几行
                            context = lines[max(0,i-2):min(len(lines),i+3)]
                            for ctx_line in context:
                                if len(ctx_line) >= 16 and re.search(r'^[A-Za-z0-9+/=]{16,}$', ctx_line):
                                    findings.append(f"{indicator} with possible key: {ctx_line[:32]}...")
        except:
            pass
        
        return findings
    
    def _extract_jni_signatures(self, so_file: str) -> List[str]:
        """提取JNI函数签名"""
        jni_funcs = []
        
        try:
            result = subprocess.run(['strings', so_file], 
                                  capture_output=True, text=True, timeout=30)
            content = result.stdout
            
            # JNI函数通常以Java_开头
            for line in content.split('\n'):
                if line.startswith('Java_'):
                    jni_funcs.append(line)
        except:
            pass
        
        return jni_funcs
    
    # ============================================================
    # 3. Smali代码深度分析 - 寻找逻辑漏洞
    # ============================================================
    def analyze_smali_logic(self, extracted_dir: str) -> List[Dict]:
        """分析Smali代码中的逻辑漏洞"""
        print("[*] 开始Smali逻辑分析...")
        
        vulnerabilities = []
        
        # 查找所有smali文件
        smali_files = []
        for root, dirs, files in os.walk(extracted_dir):
            for file in files:
                if file.endswith('.smali'):
                    smali_files.append(os.path.join(root, file))
        
        print(f"[*] 发现 {len(smali_files)} 个Smali文件")
        
        # 漏洞模式
        vuln_patterns = {
            'SQL_INJECTION': [
                (r'execSQL.*concat', 'SQL注入：直接拼接SQL语句'),
                (r'rawQuery.*\+', 'SQL注入：使用字符串拼接构建查询'),
            ],
            'PATH_TRAVERSAL': [
                (r'new-instance.*File.*\+', '路径遍历：未验证的文件路径'),
                (r'openFileOutput.*\+', '路径遍历：文件输出路径拼接'),
            ],
            'WEBVIEW_RCE': [
                (r'setJavaScriptEnabled.*true', 'WebView启用JavaScript'),
                (r'addJavascriptInterface', 'WebView添加JS接口（RCE风险）'),
                (r'loadUrl.*\+', 'WebView动态URL加载'),
            ],
            'INSECURE_CRYPTO': [
                (r'ECB', '使用ECB模式（不安全）'),
                (r'"DES"', '使用DES加密（已破解）'),
                (r'"MD5"', '使用MD5哈希（已碰撞）'),
            ],
            'BROADCAST_INJECTION': [
                (r'sendBroadcast.*implicit', '隐式广播（可被劫持）'),
                (r'registerReceiver.*null', '动态注册接收器无权限检查'),
            ]
        }
        
        # 只分析部分关键文件（避免超时）
        sample_size = min(100, len(smali_files))
        for smali_file in smali_files[:sample_size]:
            try:
                with open(smali_file, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                    
                    for vuln_type, patterns in vuln_patterns.items():
                        for pattern, description in patterns:
                            if re.search(pattern, content, re.IGNORECASE):
                                vulnerabilities.append({
                                    'type': vuln_type,
                                    'severity': 'HIGH' if 'INJECTION' in vuln_type or 'RCE' in vuln_type else 'MEDIUM',
                                    'file': smali_file,
                                    'pattern': pattern,
                                    'description': description
                                })
            except:
                continue
        
        # 保存结果
        with open(self.output_dir / 'smali_logic_analysis.json', 'w', encoding='utf-8') as f:
            json.dump(vulnerabilities, f, indent=2, ensure_ascii=False)
        
        print(f"[+] Smali分析完成，发现 {len(vulnerabilities)} 个潜在逻辑漏洞")
        return vulnerabilities
    
    # ============================================================
    # 4. 生成Frida Hook脚本 - 自动化
    # ============================================================
    def generate_frida_scripts(self, package_name: str, findings: Dict) -> str:
        """基于发现的问题自动生成Frida Hook脚本"""
        print("[*] 生成针对性Frida Hook脚本...")
        
        script = f"""
// 🔥 自动生成的Frida Hook脚本
// 目标: {package_name}
// 生成时间: {__import__('datetime').datetime.now()}

console.log("\\n[*] 高级Hook系统启动...");

Java.perform(function() {{
    
    // ================================================
    // 1. 全局异常捕获 - 看看崩溃信息
    // ================================================
    var Throwable = Java.use("java.lang.Throwable");
    Throwable.$init.overload('java.lang.String').implementation = function(msg) {{
        console.log("\\n[!] 捕获异常: " + msg);
        console.log(Java.use("android.util.Log").getStackTraceString(this));
        return this.$init(msg);
    }};
    
"""
        
        # 根据发现的JNI函数生成Hook
        if 'JNI_EXPOSED_FUNCTIONS' in str(findings):
            script += """
    // ================================================
    // 2. Native函数Hook - 拦截加密/签名函数
    // ================================================
    var System = Java.use("java.lang.System");
    System.loadLibrary.overload('java.lang.String').implementation = function(lib) {
        console.log("[*] 加载Native库: " + lib);
        var result = this.loadLibrary(lib);
        
        // Hook Native函数
        if (lib.includes("native") || lib.includes("crypto")) {
            console.log("[+] 检测到关键库，开始Hook Native函数...");
            
            Interceptor.attach(Module.findExportByName(null, "Java_*_sign*"), {
                onEnter: function(args) {
                    console.log("\\n[JNI] 签名函数被调用");
                    console.log("参数: " + Memory.readUtf8String(args[2]));
                },
                onLeave: function(retval) {
                    console.log("[JNI] 签名结果: " + Memory.readUtf8String(retval));
                }
            });
        }
        return result;
    };
    
"""
        
        # HTTP/HTTPS请求拦截
        script += """
    // ================================================
    // 3. 网络请求全面拦截
    // ================================================
    
    // OkHttp3
    try {
        var OkHttpClient = Java.use("okhttp3.OkHttpClient");
        var Request = Java.use("okhttp3.Request");
        var RequestBuilder = Java.use("okhttp3.Request$Builder");
        
        RequestBuilder.build.implementation = function() {
            var request = this.build();
            var url = request.url().toString();
            var method = request.method();
            
            console.log("\\n[📡] OkHttp请求:");
            console.log("  URL: " + url);
            console.log("  Method: " + method);
            
            // 打印所有请求头
            var headers = request.headers();
            console.log("  Headers:");
            for(var i = 0; i < headers.size(); i++) {
                var name = headers.name(i);
                var value = headers.value(i);
                console.log("    " + name + ": " + value);
                
                // 特别关注认证相关
                if(name.toLowerCase().includes("auth") || 
                   name.toLowerCase().includes("token") ||
                   name.toLowerCase().includes("session")) {
                    console.log("    [!] 发现认证令牌: " + value);
                }
            }
            
            return request;
        };
    } catch(e) {
        console.log("[-] OkHttp Hook失败: " + e);
    }
    
    // HttpURLConnection
    try {
        var HttpURLConnection = Java.use("java.net.HttpURLConnection");
        HttpURLConnection.getInputStream.implementation = function() {
            console.log("\\n[🌐] HttpURLConnection请求: " + this.getURL().toString());
            return this.getInputStream();
        };
    } catch(e) {}
    
    // ================================================
    // 4. 加密函数Hook - 提取密钥
    // ================================================
    try {
        var Cipher = Java.use("javax.crypto.Cipher");
        Cipher.init.overload('int', 'java.security.Key').implementation = function(mode, key) {
            console.log("\\n[🔐] Cipher初始化:");
            console.log("  模式: " + (mode == 1 ? "ENCRYPT" : "DECRYPT"));
            
            // 尝试提取密钥
            try {
                var keyBytes = key.getEncoded();
                var keyHex = "";
                for(var i = 0; i < keyBytes.length; i++) {
                    keyHex += ("0" + (keyBytes[i] & 0xFF).toString(16)).slice(-2);
                }
                console.log("  [!] 密钥(HEX): " + keyHex);
            } catch(e) {
                console.log("  密钥提取失败: " + e);
            }
            
            return this.init(mode, key);
        };
    } catch(e) {
        console.log("[-] Cipher Hook失败: " + e);
    }
    
    // ================================================
    // 5. SharedPreferences - 查看存储的敏感数据
    // ================================================
    try {
        var SharedPreferences = Java.use("android.content.SharedPreferences");
        var Editor = Java.use("android.content.SharedPreferences$Editor");
        
        Editor.putString.implementation = function(key, value) {
            console.log("\\n[💾] SharedPreferences存储:");
            console.log("  Key: " + key);
            console.log("  Value: " + value);
            return this.putString(key, value);
        };
    } catch(e) {}
    
    // ================================================
    // 6. File操作监控 - 查看读写的文件
    // ================================================
    try {
        var File = Java.use("java.io.File");
        File.$init.overload('java.lang.String').implementation = function(path) {
            if(path.includes("cache") || path.includes("data") || path.includes(".db")) {
                console.log("\\n[📁] 文件操作: " + path);
            }
            return this.$init(path);
        };
    } catch(e) {}
    
    console.log("\\n[✓] Hook系统加载完成！\\n");
}});
"""
        
        # 保存脚本
        script_path = self.output_dir / f'{package_name}_advanced_hook.js'
        with open(script_path, 'w', encoding='utf-8') as f:
            f.write(script)
        
        print(f"[+] Frida脚本已生成: {script_path}")
        return str(script_path)
    
    # ============================================================
    # 主分析流程
    # ============================================================
    def run_full_analysis(self, extracted_dir: str, package_name: str):
        """运行完整的深度分析"""
        print(f"\n{'='*60}")
        print(f"🔥 开始深度APK漏洞挖掘")
        print(f"目标: {package_name}")
        print(f"{'='*60}\n")
        
        all_findings = {}
        
        # 1. 深度字符串分析
        all_findings['strings'] = self.deep_string_analysis(extracted_dir)
        
        # 2. Native库分析
        all_findings['native'] = self.analyze_native_libraries(extracted_dir)
        
        # 3. Smali逻辑分析
        all_findings['smali'] = self.analyze_smali_logic(extracted_dir)
        
        # 4. 生成Frida脚本
        frida_script = self.generate_frida_scripts(package_name, all_findings)
        all_findings['frida_script'] = frida_script
        
        # 5. 生成最终报告
        self._generate_final_report(all_findings, package_name)
        
        print(f"\n{'='*60}")
        print(f"✅ 分析完成！结果保存在: {self.output_dir}")
        print(f"{'='*60}\n")
    
    def _generate_final_report(self, findings: Dict, package_name: str):
        """生成最终报告"""
        report = f"""
# 🔥 深度APK漏洞挖掘报告

**目标应用**: {package_name}
**分析时间**: {__import__('datetime').datetime.now()}

## 📊 发现摘要

### 1. 敏感字符串
- API密钥: {len(findings['strings'].get('api_keys', []))} 个
- 加密密钥: {len(findings['strings'].get('encryption_keys', []))} 个
- 硬编码凭证: {len(findings['strings'].get('hardcoded_credentials', []))} 个
- JWT密钥: {len(findings['strings'].get('jwt_secrets', []))} 个
- 内部IP: {len(findings['strings'].get('internal_ips', []))} 个

### 2. Native层问题
- 发现问题: {len(findings.get('native', []))} 个

### 3. Smali逻辑漏洞
- 发现漏洞: {len(findings.get('smali', []))} 个

## 🎯 关键发现

"""
        
        # 添加高危发现
        if findings['strings'].get('api_keys'):
            report += "\n### ⚠️ 发现API密钥\n```\n"
            for key in findings['strings']['api_keys'][:5]:
                report += f"{key}\n"
            report += "```\n"
        
        if findings['strings'].get('hardcoded_credentials'):
            report += "\n### ⚠️ 发现硬编码凭证\n```\n"
            for cred in findings['strings']['hardcoded_credentials'][:5]:
                report += f"{cred}\n"
            report += "```\n"
        
        report += f"\n## 🛠️ 下一步行动\n\n"
        report += f"1. 使用生成的Frida脚本进行动态分析\n"
        report += f"2. 针对发现的敏感信息进行验证\n"
        report += f"3. 深入分析Native层的加密实现\n"
        report += f"4. 测试发现的逻辑漏洞\n\n"
        report += f"详细结果请查看 `{self.output_dir}` 目录下的JSON文件。\n"
        
        with open(self.output_dir / 'FINAL_REPORT.md', 'w', encoding='utf-8') as f:
            f.write(report)


if __name__ == "__main__":
    import sys
    
    if len(sys.argv) < 3:
        print("用法: python3 advanced_apk_hunter.py <APK路径> <解包目录> <包名>")
        sys.exit(1)
    
    apk_path = sys.argv[1]
    extracted_dir = sys.argv[2]
    package_name = sys.argv[3] if len(sys.argv) > 3 else "unknown"
    
    hunter = AdvancedAPKHunter(apk_path)
    hunter.run_full_analysis(extracted_dir, package_name)
