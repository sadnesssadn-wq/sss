#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import json
from urllib.parse import urlencode

def login():
    url = "https://emsone.com.vn/Account/JLogin"
    
    headers = {
        "Host": "emsone.com.vn",
        "Content-Length": "50",
        "sec-ch-ua-platform": '"Windows"',
        "x-requested-with": "XMLHttpRequest",
        "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36",
        "accept": "application/json, text/javascript, */*; q=0.01",
        "sec-ch-ua": '"Chromium";v="142", "Google Chrome";v="142", "Not_A Brand";v="99"',
        "content-type": "application/x-www-form-urlencoded; charset=UTF-8",
        "sec-ch-ua-mobile": "?0",
        "origin": "https://emsone.com.vn",
        "sec-fetch-site": "same-origin",
        "sec-fetch-mode": "cors",
        "sec-fetch-dest": "empty",
        "referer": "https://emsone.com.vn/dang-nhap",
        "accept-encoding": "gzip, deflate, br, zstd",
        "accept-language": "zh-CN,zh;q=0.9",
        "priority": "u=1, i",
        "cookie": "ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors; emsvietnam927-_zldp=Ho6AaPXymp01N9xvYeCnmz4oP4VzeLZsPJyg4IWF3kiZhSlnTN2ZqtJKcHe4M1Crwf1SVpMFsQo%3D; emsvietnam927-_zldt=139ad1a1-c370-40e4-b889-16b20e278b46-2"
    }
    
    data = {
        "MobileNumber": "0902955198",
        "Password": "Hieutruong@0115"
    }
    
    session = requests.Session()
    session.headers.update(headers)
    
    try:
        r = session.post(url, data=data, verify=False, timeout=10, allow_redirects=False)
        print(f"[+] Status: {r.status_code}")
        print(f"[+] Headers: {dict(r.headers)}")
        print(f"[+] Response: {r.text[:500]}")
        
        # 保存Cookie
        cookies = session.cookies.get_dict()
        print(f"\n[+] Cookies: {cookies}")
        
        # 保存Session
        with open('session_cookies.json', 'w') as f:
            json.dump(cookies, f, indent=2)
        
        # 保存响应
        with open('login_response.txt', 'w', encoding='utf-8') as f:
            f.write(f"Status: {r.status_code}\n")
            f.write(f"Headers:\n{json.dumps(dict(r.headers), indent=2)}\n")
            f.write(f"\nResponse:\n{r.text}\n")
        
        return session, r
        
    except Exception as e:
        print(f"[-] Error: {e}")
        return None, None

if __name__ == "__main__":
    session, response = login()