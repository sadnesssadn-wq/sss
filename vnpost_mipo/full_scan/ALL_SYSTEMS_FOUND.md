# VNPost所有子系统全景图

## ✅ 已确认存在的系统

### 1. VCKV系统 (产量统计)
- URL: http://vps.vnpost.vn/vckv/
- 状态: 200 ✅
- 框架: ASP.NET + IIS 10.0
- 登录页: http://vps.vnpost.vn/vckv/Login.aspx
- 已测试凭证: 13个 (全部失败)
- 字典大小: 2004

### 2. 考勤系统 (Chamcong)
- URL: http://vps.vnpost.vn/chamcong/
- 状态: 200 ✅ (新发现!)
- 框架: 待确认
- 登录页: 待确认
- 已测试凭证: 0
- **优先级: 🔴 极高 (全新目标)**

### 3. 工资系统 (Luong)
- URL: http://vps.vnpost.vn/luong/
- 状态: 200 ✅
- 框架: ASP.NET
- 登录页: http://vps.vnpost.vn/luong/Login.aspx
- 已测试凭证: 部分
- 关联: luong.vnpost.vn (有ReCAPTCHA)

### 4. COS系统
- URL: http://vps.vnpost.vn/cos/
- 状态: 未深度确认
- 泄露凭证: khanhvm.vckv:123456

### 5. MANGA管理面板
- URL: http://vps.vnpost.vn/cgi-bin/MANGA/
- 状态: 200 ✅
- 框架: PePLink Balance (路由管理)
- **攻击状态: C2后台爆破中 (21k+组合)**

## 🎯 攻击优先级重排

**最高优先级: Chamcong (考勤系统)**
- 原因: 
  1. 全新发现，未测试
  2. 考勤系统通常防护较弱
  3. 可能使用默认密码
  4. 有泄露凭证: KVMBTCVP:123, KVMTBDVP:123, KVMTNVKS:123 等

**次优先级: VCKV (产量统计)**
- 已准备完毕，可立即攻击

**保持后台: MANGA**
- C2持续爆破

## 📊 泄露凭证分布

| 系统 | 凭证数量 | 示例 |
|------|---------|------|
| chamcong | 8+ | KVMBTCVP:123, KVMTBDVP:123 |
| vckv | 3 | nvdh:123456, vckvdbb:abc123 |
| luong | 4 | KVMTTCVP:123, KVMTNVNV:123 |
| cos | 2 | khanhvm.vckv:123456 |

