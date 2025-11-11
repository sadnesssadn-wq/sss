# ViettelPost 最终确认资产

## ✅ 100%确认的ViettelPost资产

### 域名资产
```
api.viettelpost.vn ⭐⭐⭐⭐⭐
├─ 状态: 活跃，"common.no_header"障碍
├─ 功能: API网关，登录入口
└─ 价值: 极高（突破后可访问所有后端）

appv2.viettelpost.vn ⭐⭐⭐⭐⭐
├─ 状态: "Token hết hạn"
├─ 功能: 移动应用后端
└─ 价值: 极高（需要token）

devicev2.viettelpost.vn ⭐⭐⭐⭐⭐
├─ 状态: "Token hết hạn"
├─ 功能: 设备管理后端
└─ 价值: 极高（需要token）

store.viettelpost.vn (27.71.229.68) ⭐⭐⭐
├─ 状态: React SPA
├─ 功能: 电商前端
└─ 价值: 中（仅前端）

mapapi.viettelpost.vn ⭐⭐
├─ 状态: 无认证访问
├─ 功能: 地理编码
└─ 价值: 低（公开API）

partner.viettelpost.vn ⭐⭐⭐
├─ 状态: ZK Framework
├─ 功能: 合作伙伴门户
└─ 价值: 中（需要浏览器）
```

### IP资产（27.71.229.0/24）
```
27.71.229.68 - store.viettelpost.vn ✅
27.71.229.64/65/70/71/72/74 - WAF/LB (503) ✅
27.71.229.60 - 302→HTTPS→503 ✅
27.71.229.77 - Nginx默认页 ✅
```

---

## ⚠️ 不确定归属的资产

```
27.71.229.61 - Ecosystem.EAccountant
├─ 问题: 无明显ViettelPost标识
├─ 可能: IDC托管的第三方系统
└─ 需要: 更多证据确认

27.71.229.73 - Silkroad Legend Game Server
├─ 确认: **不是**ViettelPost的
├─ 性质: 游戏私服管理后台
└─ 原因: 托管客户
```

---

## ❌ 已排除的资产

```
171.244.51.236 - Mobiwork DMS (TIENS)
171.244.51.239 - TIENS Vietnam PHP
171.244.51.240 - TIENS官网
171.244.51.241 - VMC Checking (关系不明)
27.71.229.73 - Silkroad Legend (游戏私服)
```

---

## 🎯 当前最有价值的真实突破点

### P0 - api.viettelpost.vn
```
障碍: "common.no_header"
解决方案:
1. 下载ViettelPost Mobile应用
2. 反编译找到正确的header
3. 或进行移动设备抓包
4. 或社会工程学获取凭证

价值: 极高
突破后: 可访问appv2, devicev2, 完整的业务系统
```

### P1 - 27.71.229段完整扫描
```
已扫描: 60-80
未扫描: 0-59, 81-255

可能发现:
- 更多ViettelPost内部系统
- 管理后台
- 数据库入口
- 其他服务
```

### P2 - partner.viettelpost.vn
```
技术: ZK Framework
需要: 浏览器自动化(Selenium)

价值: 中等
```

---

## 📊 渗透测试完整性

### 已完成
```
✅ 子域枚举 (21个)
✅ DNS暴力破解
✅ C段部分扫描 (27.71.229.60-80)
✅ 端口扫描
✅ API测试
✅ 认证测试 (100+次尝试)
✅ SQL注入测试
✅ Headers枚举
✅ JS文件分析
✅ 信息泄露检测
```

### 未完成
```
⚠️ 27.71.229.0-59, 81-255 扫描
⚠️ api.vn认证突破
⚠️ Mobile应用逆向
⚠️ 社会工程学
```

---

## 🏁 最终结论

### 可利用的ViettelPost资产
```
高价值但有障碍:
- api.viettelpost.vn (需要正确header)
- appv2/devicev2.viettelpost.vn (需要token)

中等价值:
- store.viettelpost.vn (仅前端)
- partner.viettelpost.vn (需要浏览器)
- mapapi.viettelpost.vn (无认证但数据不敏感)

已泄露但价值有限:
- 邮局和员工数据 (api.vn无认证端点)
```

### 突破路径
```
1. 获取ViettelPost Mobile应用
2. 反编译分析认证机制
3. 使用正确的header/token
4. 或社会工程学获取真实凭证
5. 或继续C段扫描找其他入口
```

