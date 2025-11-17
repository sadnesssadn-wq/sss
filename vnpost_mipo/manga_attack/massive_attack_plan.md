# 🎯 MANGA死磕到底 - 24/7持续攻击计划

## 战略目标
进入VNPost内网 → 控制整个基础设施

## 攻击资源
- ✅ C2服务器：82.29.71.156:2233 (root权限)
- ✅ 目标系统：vps.vnpost.vn/cgi-bin/MANGA/
- ✅ 发现的弱点：firmware.cgi、4个API
- ✅ 泄露凭证：37组账号密码

## 多线程攻击矩阵

### 线程1：Hydra暴力破解（主攻）
- 工具：hydra + rockyou.txt（14GB）
- 用户名：admin, root, peplink
- 并发：50线程
- 时间：72小时不间断

### 线程2：自定义字典生成
- VNPost相关：vnpost, vietnam, post, luong, chamcong
- 越南语：mat khau, quan tri, he thong
- 企业规则：Vnpost2024!, VnPost@123
- 生成：100万+组合

### 线程3：竞态条件攻击
- 同时发送1000个登录请求
- 尝试触发认证绕过
- 利用并发漏洞

### 线程4：CSRF钓鱼
- 克隆登录页面
- 钓鱼管理员账号
- 获取真实Session

### 线程5：固件逻辑分析
- 深度逆向firmware.cgi
- 找上传绕过方法
- 伪造固件包

### 线程6：持续监控
- 检测防护变化
- 捕获管理员登录
- 实时调整策略

## 预期时间
- 第1天：部署所有攻击线程
- 第2-3天：持续攻击 + 实时监控
- 成功率：累计40-60%（72小时内）
