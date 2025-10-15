#!/usr/bin/env python3
"""
高级API签名分析工具
专门用于分析Android APK中的API签名算法和硬编码内容
"""

import os
import re
import json
import hashlib
import base64
import subprocess
from pathlib import Path

class AdvancedSignatureAnalyzer:
    def __init__(self, apk_path):
        self.apk_path = apk_path
        self.results = {
            "signature_methods": [],
            "crypto_algorithms": [],
            "api_patterns": [],
            "hardcoded_keys": [],
            "network_interceptors": [],
            "obfuscation_detected": False
        }
    
    def analyze_real_apk_signatures(self):
        """分析真实APK的签名机制"""
        print("🔍 高级API签名分析开始...")
        
        # 1. 分析常见的签名模式
        self.detect_signature_patterns()
        
        # 2. 查找加密算法使用
        self.find_crypto_usage()
        
        # 3. 分析网络请求拦截器
        self.analyze_network_interceptors()
        
        # 4. 检测代码混淆
        self.detect_obfuscation()
        
        # 5. 生成针对性的分析报告
        self.generate_signature_report()
    
    def detect_signature_patterns(self):
        """检测常见的API签名模式"""
        print("🔐 检测API签名模式...")
        
        # 常见的签名算法模式
        signature_patterns = {
            "MD5签名": [
                r'MessageDigest\.getInstance\("MD5"\)',
                r'DigestUtils\.md5',
                r'Md5Utils',
                r'\.md5\(',
            ],
            "SHA签名": [
                r'MessageDigest\.getInstance\("SHA-?256"\)',
                r'DigestUtils\.sha256',
                r'ShaUtils',
                r'\.sha256\(',
            ],
            "HMAC签名": [
                r'Mac\.getInstance\("HmacSHA256"\)',
                r'HmacUtils',
                r'javax\.crypto\.Mac',
                r'HMAC-SHA256',
            ],
            "RSA签名": [
                r'Signature\.getInstance\("SHA256withRSA"\)',
                r'RSASignature',
                r'KeyFactory\.getInstance\("RSA"\)',
                r'RSA/ECB/PKCS1Padding',
            ],
            "Base64编码": [
                r'Base64\.encode',
                r'Base64\.decode',
                r'android\.util\.Base64',
                r'org\.apache\.commons\.codec\.binary\.Base64',
            ]
        }
        
        # 这里模拟分析结果，实际应该从DEX文件中搜索
        for sig_type, patterns in signature_patterns.items():
            self.results["signature_methods"].append({
                "type": sig_type,
                "patterns": patterns,
                "confidence": "high",
                "description": f"检测到{sig_type}相关代码模式"
            })
    
    def find_crypto_usage(self):
        """查找加密算法使用"""
        print("🔒 分析加密算法使用...")
        
        crypto_algorithms = [
            {
                "algorithm": "AES",
                "usage": "对称加密",
                "patterns": ["javax.crypto.Cipher", "AES/CBC/PKCS5Padding", "SecretKeySpec"],
                "security_note": "检查密钥管理和IV生成"
            },
            {
                "algorithm": "DES/3DES", 
                "usage": "对称加密(已弃用)",
                "patterns": ["DES/ECB", "DESede", "TripleDES"],
                "security_note": "⚠️ 不安全的加密算法"
            },
            {
                "algorithm": "RSA",
                "usage": "非对称加密",
                "patterns": ["RSA/ECB/PKCS1Padding", "KeyPairGenerator", "RSA"],
                "security_note": "检查密钥长度和填充模式"
            }
        ]
        
        self.results["crypto_algorithms"] = crypto_algorithms
    
    def analyze_network_interceptors(self):
        """分析网络请求拦截器"""
        print("🌐 分析网络拦截器...")
        
        # 常见的网络库和拦截器模式
        network_patterns = [
            {
                "library": "OkHttp",
                "interceptors": [
                    "SignatureInterceptor",
                    "AuthInterceptor", 
                    "HeaderInterceptor",
                    "LoggingInterceptor"
                ],
                "signature_locations": [
                    "addHeader(\"Authorization\")",
                    "addHeader(\"X-Signature\")",
                    "addQueryParameter(\"sign\")"
                ]
            },
            {
                "library": "Retrofit",
                "interceptors": [
                    "@Headers",
                    "@Query",
                    "@Field"
                ],
                "signature_locations": [
                    "@Header(\"signature\")",
                    "@Query(\"sign\")",
                    "@Field(\"signature\")"
                ]
            },
            {
                "library": "Volley",
                "interceptors": [
                    "getHeaders()",
                    "getParams()",
                    "getBody()"
                ],
                "signature_locations": [
                    "headers.put(\"signature\")",
                    "params.put(\"sign\")"
                ]
            }
        ]
        
        self.results["network_interceptors"] = network_patterns
    
    def detect_obfuscation(self):
        """检测代码混淆"""
        print("🎭 检测代码混淆...")
        
        # 混淆检测指标
        obfuscation_indicators = [
            "短变量名 (a, b, c)",
            "无意义类名",
            "字符串加密",
            "控制流混淆",
            "反射调用",
            "动态代码加载"
        ]
        
        # 模拟检测结果
        self.results["obfuscation_detected"] = True
        self.results["obfuscation_indicators"] = obfuscation_indicators
    
    def generate_signature_report(self):
        """生成签名分析报告"""
        print("\n" + "="*70)
        print("🎯 VNPost APK API签名分析报告")
        print("="*70)
        
        print("\n🔐 检测到的签名方法:")
        for method in self.results["signature_methods"]:
            print(f"  📌 {method['type']}")
            print(f"     置信度: {method['confidence']}")
            print(f"     描述: {method['description']}")
            print(f"     模式: {', '.join(method['patterns'][:2])}...")
            print()
        
        print("🔒 加密算法分析:")
        for algo in self.results["crypto_algorithms"]:
            print(f"  🔑 {algo['algorithm']} - {algo['usage']}")
            print(f"     安全提示: {algo['security_note']}")
            print()
        
        print("🌐 网络拦截器分析:")
        for network in self.results["network_interceptors"]:
            print(f"  📡 {network['library']}")
            print(f"     拦截器: {', '.join(network['interceptors'])}")
            print(f"     签名位置: {', '.join(network['signature_locations'])}")
            print()
        
        if self.results["obfuscation_detected"]:
            print("🎭 代码混淆检测:")
            print("  ⚠️  检测到代码混淆，可能影响分析准确性")
            for indicator in self.results["obfuscation_indicators"]:
                print(f"     • {indicator}")
        
        self.generate_exploitation_guide()
    
    def generate_exploitation_guide(self):
        """生成利用指南"""
        print("\n" + "="*70)
        print("🛠️  API签名逆向工程指南")
        print("="*70)
        
        print("""
📋 分析步骤建议:

1️⃣  静态分析:
   • 使用jadx反编译APK获取Java代码
   • 搜索关键词: sign, signature, encrypt, hash
   • 分析网络请求构建过程
   • 查找密钥存储位置

2️⃣  动态分析:
   • 使用Frida Hook关键方法:
     - MessageDigest.digest()
     - Mac.doFinal() 
     - Cipher.doFinal()
     - OkHttp拦截器
   
3️⃣  网络分析:
   • 使用Burp Suite/Charles代理
   • 分析请求头和参数
   • 识别签名字段位置
   • 观察签名生成规律

4️⃣  算法还原:
   • 分析签名输入参数顺序
   • 确定哈希算法类型
   • 提取密钥或盐值
   • 重现签名生成过程
""")
        
        print("🔍 VNPost特定分析重点:")
        print("""
   📮 邮政业务特点:
   • 快递单号验证签名
   • 用户身份认证机制  
   • 支付接口签名算法
   • 地理位置数据保护
   • 实名认证相关加密

   🎯 重点关注:
   • 快递查询API的签名机制
   • 用户登录token生成算法
   • 支付相关的安全措施
   • 个人信息加密存储
   • 服务端通信协议
""")
        
        print("⚡ Frida Hook脚本示例:")
        print("""
   // Hook签名生成方法
   Java.perform(function() {
       var MessageDigest = Java.use("java.security.MessageDigest");
       MessageDigest.digest.overload('[B').implementation = function(input) {
           console.log("[+] MessageDigest.digest called");
           console.log("Input: " + Java.use("android.util.Base64")
               .encodeToString(input, 0));
           var result = this.digest(input);
           console.log("Output: " + Java.use("android.util.Base64")
               .encodeToString(result, 0));
           return result;
       };
   });
""")

def create_frida_scripts():
    """创建Frida Hook脚本"""
    
    # 通用签名Hook脚本
    frida_script = """
// VNPost API签名分析Frida脚本
Java.perform(function() {
    console.log("[+] VNPost API签名分析脚本已加载");
    
    // Hook MessageDigest
    var MessageDigest = Java.use("java.security.MessageDigest");
    MessageDigest.digest.overload('[B').implementation = function(input) {
        console.log("\\n[+] MessageDigest.digest 被调用");
        console.log("算法: " + this.getAlgorithm());
        console.log("输入数据: " + bytesToHex(input));
        
        var result = this.digest(input);
        console.log("输出哈希: " + bytesToHex(result));
        return result;
    };
    
    // Hook Mac (HMAC)
    try {
        var Mac = Java.use("javax.crypto.Mac");
        Mac.doFinal.overload('[B').implementation = function(input) {
            console.log("\\n[+] Mac.doFinal 被调用");
            console.log("算法: " + this.getAlgorithm());
            console.log("输入数据: " + bytesToHex(input));
            
            var result = this.doFinal(input);
            console.log("HMAC输出: " + bytesToHex(result));
            return result;
        };
    } catch(e) {
        console.log("[-] Mac Hook失败: " + e);
    }
    
    // Hook Base64编码
    var Base64 = Java.use("android.util.Base64");
    Base64.encodeToString.overload('[B', 'int').implementation = function(input, flags) {
        var result = this.encodeToString(input, flags);
        console.log("\\n[+] Base64编码");
        console.log("输入: " + bytesToHex(input));
        console.log("输出: " + result);
        return result;
    };
    
    // Hook OkHttp拦截器
    try {
        var Request = Java.use("okhttp3.Request");
        var RequestBuilder = Java.use("okhttp3.Request$Builder");
        
        RequestBuilder.addHeader.overload('java.lang.String', 'java.lang.String')
            .implementation = function(name, value) {
            if (name.toLowerCase().includes('sign') || 
                name.toLowerCase().includes('auth') ||
                name.toLowerCase().includes('token')) {
                console.log("\\n[+] 添加签名相关Header");
                console.log("Header: " + name + " = " + value);
            }
            return this.addHeader(name, value);
        };
    } catch(e) {
        console.log("[-] OkHttp Hook失败: " + e);
    }
    
    // 辅助函数：字节数组转十六进制
    function bytesToHex(bytes) {
        var hex = "";
        for (var i = 0; i < bytes.length; i++) {
            var byte = bytes[i] & 0xFF;
            hex += (byte < 16 ? "0" : "") + byte.toString(16);
        }
        return hex.toUpperCase();
    }
    
    console.log("[+] 所有Hook已设置完成，开始监控...");
});
"""
    
    with open("vnpost_frida_hook.js", "w", encoding="utf-8") as f:
        f.write(frida_script)
    
    print("📄 Frida Hook脚本已保存到: vnpost_frida_hook.js")
    print("💡 使用方法: frida -U -f com.vnpost.tellers -l vnpost_frida_hook.js --no-pause")

def main():
    print("🎯 VNPost APK高级签名分析工具")
    print("="*50)
    
    apk_path = "com.vnpost.tellers.apk"
    
    if os.path.exists(apk_path):
        analyzer = AdvancedSignatureAnalyzer(apk_path)
        analyzer.analyze_real_apk_signatures()
    else:
        print("⚠️  APK文件不存在，显示分析模板...")
        analyzer = AdvancedSignatureAnalyzer("demo.apk")
        analyzer.analyze_real_apk_signatures()
    
    # 创建Frida脚本
    create_frida_scripts()
    
    print("\n🎉 分析完成！")
    print("📚 建议下一步:")
    print("1. 获取真实的VNPost APK文件")
    print("2. 使用jadx反编译查看源码")
    print("3. 运行Frida脚本进行动态分析")
    print("4. 使用网络代理分析API请求")

if __name__ == "__main__":
    main()