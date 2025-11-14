# GHTK渗透测试关键发现

## 🎯 核心目标架构

### 1. 统一认证系统（GHTK ID）
- **URL**: https://admin.giaohangtietkiem.vn/admin
- **技术栈**: Vue.js SPA
- **描述**: "Hệ thống xác thực tập trung của Giao hàng tiết kiệm"
- **攻击价值**: ⭐⭐⭐⭐⭐（认证中心，一旦突破可横向所有系统）

### 2. 管理后台（Admin Panel）
- **URL**: https://admin.giaohangtietkiem.vn/adm/
- **技术栈**: Vue.js + Nginx
- **Tracking**: Goku Tracking系统
- **攻击价值**: ⭐⭐⭐⭐⭐

### 3. API网关
- **发现**: https://inter.ghtk.vn/api/
- **来源**: JS中硬编码
- **攻击价值**: ⭐⭐⭐⭐（可能未授权访问）

### 4. WordPress遗留
- **robots.txt**: 泄露/wp-admin路径
- **状态**: 返回404，但可能有其他WP路径
- **攻击价值**: ⭐⭐⭐

## 🔥 下一步攻击方向

### 优先级A（立即执行）
1. ✅ 测试inter.ghtk.vn API端点（未授权/认证绕过）
2. ⏳ JS文件深度分析（提取完整API列表）
3. ⏳ GHTK ID登录爆破（弱密码/默认凭据）

### 优先级B（并行执行）
4. ⏳ 子域名深度扫描（发现更多入口）
5. ⏳ WordPress路径爆破（/wp-json等）
6. ⏳ healthcheck参数Fuzz

### 优先级C（深度利用）
7. ⏳ Goku Tracking系统分析
8. ⏳ 前端localStorage劫持
9. ⏳ CORS/JSONP利用
