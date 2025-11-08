# 🔥 重大突破！Laravel日志文件泄露

## 发现时间
2025-11-07 15:20

## 漏洞详情

### Laravel日志文件完全可访问！
```
https://angiang.vnpost.vn/storage/logs/laravel.log
```

## 🔥 泄露的敏感信息

### 1. 服务器绝对路径
```
/home/u847595013/domains/kiengiang.vnpost.vn/public_html/
```

### 2. 内部API端点
```
https://ipostal.vnpost.vn/api/v1/tra-cuu-buu-gui
```
**这是一个内网API！** 可能用于包裹追踪

### 3. 代码结构
```php
app/Http/Controllers/ApiController.php (line 153)
vendor/guzzlehttp/guzzle/... (Guzzle HTTP client)
vendor/laravel/framework/...
```

### 4. Hosting信息
- **Hosting**: hostinger.com (u847595013)
- **Domain**: kiengiang.vnpost.vn
- **Server Path**: /home/u847595013/domains/

---

## 💥 攻击可能性

### 1. 路径遍历攻击 ⭐⭐⭐⭐⭐
既然logs可以访问，可能其他文件也可以：
```
/storage/app/
/storage/framework/sessions/
/.env
/config/database.php
```

### 2. ipostal.vnpost.vn内网API ⭐⭐⭐⭐⭐
```
https://ipostal.vnpost.vn/api/v1/tra-cuu-buu-gui
```
- 可能无认证
- 可能有其他API端点
- 可能是内网切入点

### 3. Session劫持 ⭐⭐⭐⭐
```
/storage/framework/sessions/
```
可能包含用户session

### 4. 源代码泄露 ⭐⭐⭐⭐
```
app/Http/Controllers/ApiController.php
```
可能通过路径遍历访问

---

## 🚀 立即行动

1. 读取完整laravel.log
2. 测试ipostal.vnpost.vn
3. 尝试访问/.env
4. 路径遍历攻击
5. Session文件访问

**这可能是突破内网的关键！**

