# ViettelPost C段扫描 - 最终报告

## 🎯 目标聚焦
**仅ViettelPost (viettelpost.vn) 资产**

---

## 🔥 27.71.229.0/24 段新发现

### 高价值资产

**27.71.229.73** ⭐⭐⭐⭐⭐
```
Server: Microsoft-IIS/10.0
Status: HTTP 200
Size: 92,400 bytes
Content-Type: text/html; charset=utf-8

特征:
- IIS 10.0服务器
- 返回完整HTML（92KB）
- 可能是ASP.NET应用

价值: 极高
下一步: 分析HTML内容，查找功能和API
```

**27.71.229.77** ⭐⭐⭐⭐  
```
Server: Nginx
Status: HTTP 200, HTTPS 200
Content-Type: text/html

特征:
- Nginx服务器
- HTTP和HTTPS都可访问
- 返回HTML内容

价值: 高
下一步: 分析HTML内容，测试端点
```

**27.71.229.61** ⭐⭐⭐
```
Status: HTTP 500 Internal Server Error
Content-Type: text/plain
Size: 2,169 bytes

特征:
- 服务器配置错误或崩溃
- 返回500错误
- 可能泄露错误信息

价值: 中
下一步: 分析错误消息，查找信息泄露
```

### 其他发现
```
27.71.229.60 - 302→HTTPS, HTTPS 503
27.71.229.64 - 503 (WAF/LB)
27.71.229.65 - 503 (WAF/LB)
27.71.229.68 - store.viettelpost.vn (已知)
27.71.229.70 - 302→HTTPS, HTTPS 503
27.71.229.71 - 302→HTTPS, HTTPS 503
27.71.229.72 - 302→HTTPS, HTTPS 503
27.71.229.74 - 302→HTTPS, HTTPS 503
```

---

## 📊 ViettelPost完整资产列表

### C段资产（27.71.229.0/24）
```
活跃IP: 至少11个
关键发现: 3个（61, 73, 77）
已知域名: store.viettelpost.vn (68)
```

### 域名资产
```
✅ api.viettelpost.vn - API网关（"common.no_header"障碍）
✅ appv2.viettelpost.vn - 移动后端
✅ devicev2.viettelpost.vn - 设备后端
✅ app.viettelpost.vn - Web后端
✅ store.viettelpost.vn - React SPA (27.71.229.68)
✅ mapapi.viettelpost.vn - Geocoding API
✅ location.viettelpost.vn - Location API
✅ tiles.viettelpost.vn - Tiles服务
✅ dev-api.viettelpost.vn - 开发API (171.244.51.242, 全404)
✅ partner.viettelpost.vn - 合作伙伴门户 (ZK Framework)
```

---

## 🎯 当前最有价值的突破点

### P0 - 27.71.229.73 (IIS应用)
```
为什么优先:
1. HTTP 200 - 完全可访问
2. IIS 10.0 - 可能是ASP.NET  
3. 92KB HTML - 完整的应用页面
4. 未知系统 - 可能有漏洞

立即行动:
- 分析HTML找功能
- 测试认证
- 枚举端点
- 查找漏洞
```

### P1 - 27.71.229.77 (Nginx)
```
为什么重要:
1. HTTP/HTTPS都可访问
2. Nginx - 可能是反向代理或API网关
3. 可能暴露后端服务

立即行动:
- 分析页面内容
- 测试API路径
- 查找配置文件
```

### P2 - 27.71.229.61 (500错误)
```
为什么有价值:
1. 500错误可能泄露信息
2. 栈追踪、路径、版本号
3. 可能暴露内部架构

立即行动:
- 分析错误消息
- 提取信息
- 触发不同错误
```

---

## 🚫 已排除资产

```
171.244.51.236 - Mobiwork DMS (TIENS)
171.244.51.239 - TIENS PHP
171.244.51.240 - TIENS官网
171.244.51.241 - VMC Checking (关系不明)
```

---

## 📈 进度总结

### 完成的工作
```
✅ 子域枚举 (21个)
✅ C段初步扫描
✅ 端口扫描
✅ API测试
✅ 认证绕过尝试
✅ 重新聚焦目标
```

### 新发现
```
🔥 27.71.229.73 - IIS应用 (最高优先级)
🔥 27.71.229.77 - Nginx服务
⚠️ 27.71.229.61 - 500错误
```

### 下一步
```
[ ] 深度分析.73的IIS应用
[ ] 深度分析.77的Nginx服务
[ ] 分析.61的错误信息
[ ] 完整扫描27.71.229.0-255
[ ] 继续攻击api.vn认证
```

