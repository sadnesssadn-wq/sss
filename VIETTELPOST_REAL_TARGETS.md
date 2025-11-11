# ViettelPost 真实目标资产

## ✅ 确认的ViettelPost资产

### 27.71.229.0/24 段（ViettelPost核心）
```
27.71.229.68  - store.viettelpost.vn ✅
27.71.229.64  - 503 (可能是备份/LB)
27.71.229.65  - 503 (可能是备份/LB)
27.71.229.70  - 302→HTTPS但503
27.71.229.71  - 302→HTTPS但503
27.71.229.72  - 302→HTTPS但503
```

### 域名资产
```
✅ api.viettelpost.vn
✅ app.viettelpost.vn
✅ appv2.viettelpost.vn
✅ devicev2.viettelpost.vn
✅ store.viettelpost.vn (27.71.229.68)
✅ mapapi.viettelpost.vn
✅ location.viettelpost.vn
✅ tiles.viettelpost.vn
✅ dev-api.viettelpost.vn (171.244.51.242)
✅ partner.viettelpost.vn (125.212.138.115)
```

## ❌ 不是ViettelPost的资产

### 171.244.51 段（混合托管）
```
❌ 171.244.51.236 - Mobiwork DMS (SaoThaiDuong/TIENS)
❌ 171.244.51.239 - TIENS Vietnam PHP系统
❌ 171.244.51.240 - TIENS官网重定向
⚠️  171.244.51.241 - VMC Checking (不确定)
✅ 171.244.51.242 - dev-api.viettelpost.vn (ViettelPost!)
```

**结论**: 171.244.51段是共享IDC，只有.242是ViettelPost的

---

## 🎯 应该重点攻击的ViettelPost资产

### P0 - 27.71.229段
```
需要：
1. 完全枚举27.71.229.0-255
2. 找出所有ViettelPost的真实服务器
3. 测试503背后的真实应用
```

### P1 - 已知域名深入
```
重点：
- api.viettelpost.vn (突破"common.no_header")
- dev-api.viettelpost.vn (171.244.51.242)
- appv2/devicev2.viettelpost.vn
```

