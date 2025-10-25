#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
🔥 Native库模糊测试 - 自动发现缓冲区溢出和内存破坏
"""

import os
import subprocess
import struct
import random
import string
from pathlib import Path


class NativeFuzzer:
    """Native库模糊测试器"""
    
    def __init__(self, so_path: str):
        self.so_path = so_path
        self.crashes = []
        
    def generate_payloads(self) -> list:
        """生成各种测试载荷"""
        payloads = []
        
        # 1. 缓冲区溢出测试
        payloads.extend([
            b"A" * size for size in [100, 500, 1000, 5000, 10000, 50000]
        ])
        
        # 2. 格式化字符串漏洞
        payloads.extend([
            b"%s" * 100,
            b"%x" * 100,
            b"%n" * 50,
            b"%p" * 100,
        ])
        
        # 3. 整数溢出
        payloads.extend([
            struct.pack("<I", 0xFFFFFFFF),
            struct.pack("<I", 0x7FFFFFFF),
            struct.pack("<Q", 0xFFFFFFFFFFFFFFFF),
            b"-1",
            b"2147483647",
            b"-2147483648",
        ])
        
        # 4. 空字节注入
        payloads.extend([
            b"\x00" * 100,
            b"ABC\x00DEF",
            b"\x00" + b"A" * 100,
        ])
        
        # 5. Unicode和特殊字符
        payloads.extend([
            "中文测试" * 100,
            "🔥" * 100,
            "\u0000" * 100,
        ])
        
        # 6. SQL注入和命令注入模式
        payloads.extend([
            b"'; DROP TABLE users--",
            b"1' OR '1'='1",
            b"admin'--",
            b"; ls -la;",
            b"| whoami",
            b"`id`",
            b"$(cat /etc/passwd)",
        ])
        
        # 7. 路径遍历
        payloads.extend([
            b"../" * 50,
            b"../../../../../../etc/passwd",
            b"C:\\Windows\\System32\\config\\sam",
        ])
        
        # 8. XML/XXE
        payloads.extend([
            b'<?xml version="1.0"?><!DOCTYPE foo [<!ENTITY xxe SYSTEM "file:///etc/passwd">]><foo>&xxe;</foo>',
        ])
        
        return payloads
    
    def extract_jni_functions(self) -> list:
        """提取JNI函数名"""
        try:
            result = subprocess.run(
                ['strings', self.so_path],
                capture_output=True,
                text=True,
                timeout=30
            )
            
            jni_funcs = [
                line.strip() for line in result.stdout.split('\n')
                if line.startswith('Java_')
            ]
            
            return jni_funcs
        except:
            return []
    
    def analyze_for_vulnerabilities(self) -> dict:
        """静态分析寻找潜在漏洞"""
        findings = {
            'dangerous_functions': [],
            'potential_bugs': [],
            'jni_functions': []
        }
        
        # 提取JNI函数
        findings['jni_functions'] = self.extract_jni_functions()
        
        # 检查危险函数
        try:
            result = subprocess.run(
                ['nm', '-D', self.so_path],
                capture_output=True,
                text=True,
                timeout=30
            )
            
            dangerous = [
                'strcpy', 'strcat', 'sprintf', 'gets', 'scanf',
                'system', 'popen', 'execve', 'memcpy'
            ]
            
            for func in dangerous:
                if func in result.stdout:
                    findings['dangerous_functions'].append(func)
        except:
            pass
        
        return findings
    
    def generate_frida_fuzzer(self, jni_funcs: list) -> str:
        """生成Frida模糊测试脚本"""
        
        script = """
// 🔥 Frida Native模糊测试脚本

console.log("[*] Native Fuzzer启动...");

Java.perform(function() {
    
    // 监控崩溃
    Process.setExceptionHandler(function(details) {
        console.log("\\n[!!!] 崩溃检测:");
        console.log("  类型: " + details.type);
        console.log("  地址: " + details.address);
        console.log("  上下文:");
        console.log(JSON.stringify(details.context, null, 2));
        console.log("  内存:");
        console.log(hexdump(details.memory.base, {length: 256}));
        return true; // 继续执行
    });
    
"""
        
        # 为每个JNI函数生成Fuzzer
        for func in jni_funcs[:10]:  # 限制数量
            script += f"""
    // Fuzzing: {func}
    try {{
        var funcPtr = Module.findExportByName(null, "{func}");
        if(funcPtr) {{
            Interceptor.attach(funcPtr, {{
                onEnter: function(args) {{
                    console.log("\\n[FUZZ] {func}");
                    
                    // 尝试修改参数
                    if(args[2]) {{
                        var original = Memory.readUtf8String(args[2]);
                        console.log("  原参数: " + original);
                        
                        // 注入测试载荷
                        var payloads = [
                            "A".repeat(10000),
                            "%s%s%s%s",
                            "'; DROP TABLE users--"
                        ];
                        
                        var payload = payloads[Math.floor(Math.random() * payloads.length)];
                        Memory.writeUtf8String(args[2], payload);
                        console.log("  [!] 注入载荷: " + payload.substring(0, 50));
                    }}
                }},
                onLeave: function(retval) {{
                    console.log("  返回: " + retval);
                }}
            }});
            console.log("[+] Hooked: {func}");
        }}
    }} catch(e) {{
        console.log("[-] 无法Hook {func}: " + e);
    }}
"""
        
        script += """
});

console.log("[✓] Fuzzer准备完成！");
"""
        
        return script


def main():
    import sys
    
    if len(sys.argv) < 2:
        print("用法: python3 native_fuzzer.py <.so文件路径>")
        sys.exit(1)
    
    so_path = sys.argv[1]
    
    print(f"[*] 分析Native库: {so_path}")
    
    fuzzer = NativeFuzzer(so_path)
    
    # 静态分析
    findings = fuzzer.analyze_for_vulnerabilities()
    
    print(f"\n[+] 发现 {len(findings['jni_functions'])} 个JNI函数")
    print(f"[+] 发现 {len(findings['dangerous_functions'])} 个危险函数")
    
    if findings['jni_functions']:
        print("\n[*] JNI函数列表:")
        for func in findings['jni_functions'][:20]:
            print(f"  - {func}")
    
    if findings['dangerous_functions']:
        print("\n[!] 危险函数:")
        for func in findings['dangerous_functions']:
            print(f"  - {func}")
    
    # 生成Frida Fuzzer
    frida_script = fuzzer.generate_frida_fuzzer(findings['jni_functions'])
    
    output_path = Path(so_path).stem + "_fuzzer.js"
    with open(output_path, 'w') as f:
        f.write(frida_script)
    
    print(f"\n[✓] Frida Fuzzer脚本已生成: {output_path}")
    print(f"\n使用方法:")
    print(f"  frida -U -f <包名> -l {output_path}")


if __name__ == "__main__":
    main()
