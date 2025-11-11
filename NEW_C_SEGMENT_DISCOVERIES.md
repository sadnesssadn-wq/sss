# C段深度扫描 - 重大发现

## 扫描方法
✅ 直接HTTP/HTTPS探测已知IP的相邻IP（±5）
✅ 绕过了nmap的限制

## 新发现的IP

### 27.71.229.0/24 段
```
✅ 27.71.229.64  - HTTP/HTTPS响应
✅ 27.71.229.65  - HTTP/HTTPS响应  
✅ 27.71.229.70  - HTTPS响应
✅ 27.71.229.71  - HTTPS响应
✅ 27.71.229.72  - HTTPS响应
```

### 171.244.51.0/24 段
```
✅ 171.244.51.236 - HTTP响应
✅ 171.244.51.237 - HTTP响应
✅ 171.244.51.239 - HTTP/HTTPS响应
✅ 171.244.51.240 - HTTP/HTTPS响应
✅ 171.244.51.241 - HTTP/HTTPS响应 (已知VMC)
✅ 171.244.51.243 - HTTP响应
```

## 详细分析

### 27.71.229段详情
========== 27.71.229.64 ==========
[HTTP:80]
HTTP/1.1 503 Service Unavailable
content-length: 107
cache-control: no-cache
content-type: text/html
connection: close


[HTTPS:443]
HTTP/1.1 503 Service Unavailable
content-length: 107
cache-control: no-cache
content-type: text/html
connection: close

--
========== 27.71.229.65 ==========
[HTTP:80]
HTTP/1.1 503 Service Unavailable
content-length: 107
cache-control: no-cache
content-type: text/html
connection: close


[HTTPS:443]
HTTP/1.1 503 Service Unavailable
content-length: 107
cache-control: no-cache
content-type: text/html
connection: close

--
========== 27.71.229.70 ==========
[HTTP:80]
HTTP/1.1 302 Found
content-length: 0
location: https://27.71.229.70/
cache-control: no-cache
connection: close


[HTTPS:443]
HTTP/1.1 503 Service Unavailable
content-length: 107
cache-control: no-cache
content-type: text/html
connection: close

--
========== 27.71.229.71 ==========
[HTTP:80]
HTTP/1.1 302 Found
content-length: 0
location: https://27.71.229.71/
cache-control: no-cache
connection: close


[HTTPS:443]
HTTP/1.1 503 Service Unavailable
content-length: 107
cache-control: no-cache
content-type: text/html
connection: close

--
========== 27.71.229.72 ==========
[HTTP:80]
HTTP/1.1 302 Found
content-length: 0
location: https://27.71.229.72/
cache-control: no-cache
connection: close


[HTTPS:443]
HTTP/1.1 503 Service Unavailable
content-length: 107
cache-control: no-cache
content-type: text/html
connection: close


### 171.244.51段详情
========== 171.244.51.236 ==========
[HTTP:80]
HTTP/1.1 302 Moved Temporarily
Vary: Accept
X-XSS-Protection: 1
X-Frame-Options: sameorigin
X-Content-Type-Options: nosniff
Location: /users/sign_In?err=notauthen
Content-Type: text/plain
Content-Length: 62
Set-Cookie: connect.sid=s%3AprQTZBNdhr9pkEEoZobWNQF4.MncMrriGHU7D8A%2Bzcxboq0M5jBHkTLd2LqdGuLsKPYA; Path=/; HttpOnly
Date: Tue, 11 Nov 2025 17:13:39 GMT

[HTTPS:443]

[网页内容关键字]
--
========== 171.244.51.237 ==========
[HTTP:80]
HTTP/1.1 301 Moved Permanently
Server: nginx/1.20.1
Date: Tue, 11 Nov 2025 17:13:45 GMT
Content-Type: text/html
Content-Length: 169
Connection: keep-alive
Location: https://171.244.51.237/


[HTTPS:443]
