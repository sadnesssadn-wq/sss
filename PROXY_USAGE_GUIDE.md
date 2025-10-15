# 🚀 代理池使用指南

## 📚 脚本说明

现在有3个版本的脚本，根据你的需求选择：

### 1️⃣ `find_first_order_optimized.py` - 优化版（无代理）
- ✅ 不需要代理
- ✅ 使用智能算法减少请求
- ⚠️ 并发数限制：10-20
- ⚠️ 可能被IP限制
- 🎯 适用：小规模测试

### 2️⃣ `find_first_with_proxy_pool.py` - 代理池版（推荐）
- ✅ 支持100+并发
- ✅ 使用静态代理列表
- ✅ 速度快，不会被封IP
- ⚠️ 需要准备代理列表
- 🎯 适用：有代理资源的用户

### 3️⃣ `find_with_dynamic_proxy.py` - 动态代理API版
- ✅ 支持主流代理服务商API
- ✅ 自动旋转IP
- ✅ 最稳定，最快速
- ⚠️ 需要付费代理服务
- 🎯 适用：商业用途

---

## 🔧 方案一：使用静态代理池（免费/低成本）

### 步骤1：准备代理列表

创建 `proxies.txt` 文件：

```bash
# 格式示例
103.152.112.162:80
103.152.112.163:80
user:pass@proxy.example.com:8080
http://192.168.1.100:3128
```

### 步骤2：获取代理IP的方法

#### 方法A：免费代理（不推荐，质量差）
```python
# 从免费代理网站获取
# https://www.freeproxy.world/
# https://free-proxy-list.net/
# 但免费代理通常：
# - 速度慢
# - 不稳定
# - 成功率低
```

#### 方法B：购买代理包（推荐）
```
国内代理商：
- 快代理: https://www.kuaidaili.com/
- 芝麻代理: http://www.zhimaruanjian.com/
- 蘑菇代理: https://www.mogumiao.com/

价格参考：
- 100个IP/天: ¥10-30
- 1000个IP/天: ¥50-100
```

#### 方法C：自建代理池（高级）
```bash
# 使用云服务器搭建
# 1. 购买多台VPS（如Vultr, DigitalOcean）
# 2. 每台安装Squid代理
# 3. 配置认证
```

### 步骤3：运行脚本

```bash
# 1. 准备代理文件
cp proxies.txt.example proxies.txt
# 编辑 proxies.txt，填入你的代理列表

# 2. 运行脚本
python3 find_first_with_proxy_pool.py

# 3. 脚本会自动：
#    - 加载代理
#    - 验证代理
#    - 开始扫描
#    - 显示结果
```

---

## 🌐 方案二：使用动态代理API（推荐，商业级）

### 支持的代理服务商

#### 1. Bright Data (原 Luminati) ⭐ 推荐
```
官网: https://brightdata.com/
价格: $8.4/GB起
特点:
- 最大的代理网络（7200万+IP）
- 99.9%成功率
- 支持国家/城市定向
- 自动IP轮换

配置示例:
BRIGHTDATA = {
    'host': 'brd.superproxy.io',
    'port': 22225,
    'username': 'brd-customer-hl_xxxxx-zone-residential',
    'password': 'your_password'
}
```

#### 2. Oxylabs
```
官网: https://oxylabs.io/
价格: $15/GB起
特点:
- 1亿+ 住宅IP
- 支持会话管理
- 高匿名性

配置示例:
OXYLABS = {
    'host': 'pr.oxylabs.io',
    'port': 7777,
    'username': 'customer-xxx',
    'password': 'your_password'
}
```

#### 3. SmartProxy
```
官网: https://smartproxy.com/
价格: $8.5/GB起
特点:
- 4000万+ IP
- 便宜
- 适合中小规模

配置示例:
SMARTPROXY = {
    'host': 'gate.smartproxy.com',
    'port': 7000,
    'username': 'user-xxx',
    'password': 'your_password'
}
```

### 使用步骤

```bash
# 1. 注册代理服务（以Bright Data为例）
#    - 访问 https://brightdata.com/
#    - 注册账号
#    - 创建代理Zone
#    - 获取认证信息

# 2. 修改脚本配置
#    编辑 find_with_dynamic_proxy.py
#    填入你的真实账号密码

# 3. 运行脚本
python3 find_with_dynamic_proxy.py

# 4. 选择代理服务商
#    根据提示选择 1-5
```

---

## 📊 性能对比

| 方案 | 并发数 | 速度 | 成本 | 稳定性 | 难度 |
|------|--------|------|------|--------|------|
| 无代理 | 10 | ⭐ | 免费 | ⭐⭐ | ⭐ |
| 免费代理池 | 50 | ⭐⭐ | 免费 | ⭐ | ⭐⭐ |
| 购买代理池 | 100 | ⭐⭐⭐⭐ | ¥10-100/天 | ⭐⭐⭐⭐ | ⭐⭐ |
| 动态API代理 | 100+ | ⭐⭐⭐⭐⭐ | $100+/月 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |

---

## 🎯 推荐方案

### 场景1：测试/学习
```bash
使用: find_first_order_optimized.py
原因: 免费，简单，够用
```

### 场景2：小规模扫描（每天几万个订单）
```bash
使用: find_first_with_proxy_pool.py + 购买代理包
成本: ¥30-50/天
代理商: 快代理/芝麻代理
数量: 100-200个IP
```

### 场景3：大规模扫描（每天几十万订单）
```bash
使用: find_with_dynamic_proxy.py + Bright Data
成本: $100-200/月
优势: 稳定、快速、自动轮换
```

### 场景4：商业项目
```bash
使用: find_with_dynamic_proxy.py + Bright Data/Oxylabs
成本: $500+/月
配置: 企业级代理 + 专属IP池
```

---

## 🛠️ 实战示例

### 示例1：使用快代理（国内）

```bash
# 1. 注册快代理账号
#    访问 https://www.kuaidaili.com/

# 2. 购买代理套餐
#    推荐：动态代理包，100个IP，¥30/天

# 3. 获取API提取链接
#    示例: https://dps.kdlapi.com/api/getdps/?secret_id=xxx&num=100

# 4. 使用Python获取代理
cat > get_proxies.py << 'EOF'
import requests

# 你的提取链接
API_URL = "https://dps.kdlapi.com/api/getdps/?secret_id=xxx&num=100&format=text"

response = requests.get(API_URL)
proxies = response.text.strip().split('\n')

# 保存到文件
with open('proxies.txt', 'w') as f:
    for proxy in proxies:
        f.write(f"{proxy}\n")

print(f"获取了 {len(proxies)} 个代理")
EOF

python3 get_proxies.py

# 5. 运行扫描脚本
python3 find_first_with_proxy_pool.py
```

### 示例2：使用Bright Data（国际）

```bash
# 1. 注册并获取凭据
#    访问 https://brightdata.com/
#    创建Zone，选择 Residential Proxies

# 2. 获取配置信息
#    Zone Name: residential
#    Username: brd-customer-hl_xxxxx-zone-residential
#    Password: your_password

# 3. 修改脚本
nano find_with_dynamic_proxy.py

# 将 BRIGHTDATA 配置改为:
BRIGHTDATA = {
    'host': 'brd.superproxy.io',
    'port': 22225,
    'username': 'brd-customer-hl_xxxxx-zone-residential',
    'password': 'your_actual_password'
}

# 4. 运行
python3 find_with_dynamic_proxy.py
# 选择 1 (Bright Data)
```

---

## ⚠️ 注意事项

### 1. 法律合规
- ✅ 确保有权访问这些API
- ✅ 遵守服务条款
- ✅ 不要用于非法用途

### 2. 速率限制
```python
# 即使使用代理，也建议加延迟
time.sleep(0.1)  # 每个请求后延迟100ms
```

### 3. 成本控制
```python
# 限制最大请求数
MAX_REQUESTS = 10000
if request_count >= MAX_REQUESTS:
    print("达到请求上限，停止扫描")
    break
```

### 4. 代理验证
```bash
# 使用前测试代理是否工作
curl -x http://user:pass@proxy:port http://ip-api.com/json
```

---

## 🚀 性能优化技巧

### 1. 合理设置并发数
```python
# 根据代理数量调整
proxy_count = 100
max_workers = proxy_count  # 1:1 比例

# 如果代理质量好，可以超配
max_workers = proxy_count * 2  # 2:1 比例
```

### 2. 智能重试
```python
# 失败后切换代理重试
max_retries = 3
for retry in range(max_retries):
    proxy = get_new_proxy()
    # ... 重试请求
```

### 3. 动态调整策略
```python
# 根据成功率动态调整
if success_rate < 0.5:
    # 降低并发
    max_workers = max_workers // 2
    # 增加延迟
    delay *= 2
```

---

## 📞 问题排查

### 问题1：代理连接失败
```bash
# 测试代理
curl -x http://proxy:port http://google.com

# 检查认证
curl -x http://user:pass@proxy:port http://google.com
```

### 问题2：速度很慢
```bash
# 可能原因：
# 1. 代理质量差 -> 换代理商
# 2. 并发太低 -> 增加并发
# 3. 目标API慢 -> 无解
```

### 问题3：大量失败
```bash
# 检查：
# 1. API凭据是否正确
# 2. 代理IP是否被封
# 3. 请求格式是否正确
```

---

## 💰 成本估算

### 场景：扫描100万个订单号

#### 方案A：无代理
- 并发: 10
- 速度: 5 req/s
- 耗时: 100万 ÷ 5 = 200,000秒 ≈ 56小时
- 成本: ¥0
- 风险: ⚠️ 极高（会被封IP）

#### 方案B：购买代理池
- 并发: 100
- 速度: 50 req/s
- 耗时: 100万 ÷ 50 = 20,000秒 ≈ 5.5小时
- 成本: ¥50/天
- 风险: ✅ 低

#### 方案C：Bright Data
- 并发: 200
- 速度: 100 req/s
- 耗时: 100万 ÷ 100 = 10,000秒 ≈ 2.8小时
- 成本: $0.1 (按请求数计费很低)
- 风险: ✅ 极低

---

## 📝 总结

1. **测试阶段**: 使用优化版，不需要代理
2. **生产环境**: 使用代理池版 + 购买代理
3. **商业项目**: 使用动态API版 + Bright Data

选择合适的方案，平衡成本与效率！
