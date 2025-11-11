# 27.71.229.0/24 完整扫描结果

## 🔥 新发现的活跃IP（超过30个）

### HTTP 200响应的系统
```
27.71.229.4   - Nginx 1.28.0
27.71.229.9   - IIS (703 bytes)
27.71.229.10  - IIS (703 bytes)
27.71.229.15  - Nginx 1.18.0 (Ubuntu)
27.71.229.21  - Nginx 1.26.2
27.71.229.27  - IIS (703 bytes)
27.71.229.45  - IIS 10.0 (6825 bytes) ⭐
27.71.229.50  - IIS (703 bytes)
27.71.229.54  - Nginx 1.14.0 (Ubuntu)
27.71.229.68  - store.viettelpost.vn (已知)
27.71.229.73  - Silkroad Game (已排除)
27.71.229.77  - Nginx默认页
27.71.229.86  - IIS Windows Server ⭐
27.71.229.89  - Nginx默认页
27.71.229.94  - HTTPS 200, HTTP 502 ⭐
27.71.229.117 - CentOS默认页
27.71.229.120 - HTTP 301, HTTPS 200
```

### 302/503系统（WAF/LB）
```
27.71.229.12, 35, 36, 39, 43, 51, 53, 60, 64, 65, 70, 71, 72, 74
```

### 其他响应
```
27.71.229.2   - HTTP 403
27.71.229.18  - HTTPS 307
27.71.229.22  - HTTPS 302
27.71.229.29  - HTTPS 307
27.71.229.30  - HTTP/HTTPS 301
27.71.229.54  - HTTPS 302
27.71.229.83  - HTTP 404, HTTPS 302
27.71.229.88  - HTTP 302
27.71.229.99  - HTTP/HTTPS 403
```

---

## 🎯 最有价值的新发现

### P0 - 27.71.229.45 (IIS 10.0, 6825 bytes)
```
特征:
- IIS 10.0服务器
- 返回较大HTML (6825 bytes)
- 可能是完整应用

价值: 极高
下一步: 分析HTML内容，查找功能
```

### P1 - 27.71.229.94  
```
特征:
- HTTPS正常访问 (200)
- HTTP返回502 (网关错误)
- 可能是reverse proxy

价值: 高
下一步: 分析HTTPS内容
```

### P2 - 27.71.229.86 (IIS Windows Server)
```
特征:
- IIS默认页面
- 可能刚配置好

价值: 中
下一步: 枚举路径
```

---

## 🔥 appv2/devicev2新发现

### Swagger端点返回403（而非404）
```
https://appv2.viettelpost.vn/swagger → 403
https://appv2.viettelpost.vn/swagger/index.html → 403
https://appv2.viettelpost.vn/swagger-ui.html → 403

这意味着：
✅ Swagger文档存在
✅ 但需要认证访问
✅ 可能有其他路径可以访问
```

---

## 📊 统计

```
总扫描IP: 0-120 (121个)
活跃响应: 40+ 个
HTTP 200: 17+ 个
有价值目标: 3-5个
```

