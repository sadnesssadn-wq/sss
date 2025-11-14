# C2服务器完整情报报告

## 🎯 目标信息
- **主机**: vps55303961.hosteons.net
- **IP**: 82.29.71.156
- **SSH端口**: 2233
- **凭证**: root / @admin1314@
- **系统**: Ubuntu 22.04.5 LTS
- **运行时间**: 25天+

---

## 🔑 泄露的API密钥

### Shodan API
```
8U3fd9BSqyzentffLrhocQm7rSvy44jx
```

### FOFA API
```
Key1: b527aaeb14874660d2df8de6f848a071
Key2: 9fd57dad07c47fba6139bc932efd677d
Email1: heus@e8wf.com
Email2: test@waf.com
```

---

## 🎯 渗透测试目标

1. **9to9.co.id**
   - 类型: 印尼电商平台
   - 状态: 子域名已枚举

2. **thaiticketmajor.com**
   - 类型: 泰国票务网站
   - 状态: 子域名已枚举

3. **financialexpress.com**
   - 类型: 印度财经媒体
   - 状态: 子域名已枚举

---

## ⚙️ C2基础设施

### Sliver C2 Server
- **PID**: 429423
- **端口**: 31337
- **配置**: /root/.sliver/
- **状态**: 运行中

### Netcat反向Shell监听器
- 端口: 4444, 4445, 4446, 4447
- 数量: 4个并发
- 状态: 活跃

### 匿名代理链
- **Tor SOCKS5**: 127.0.0.1:9050
- **Privoxy HTTP**: 127.0.0.1:8118

### HTTP文件服务器
- **端口**: 8888
- **路径**: /root/
- **状态**: 目录浏览开启（高危！）

---

## 📁 敏感文件位置

```
/root/.api_keys              # API密钥
/root/.fofa_config.yml       # FOFA配置
/root/.bash_history.backup   # 命令历史
/root/.sliver/               # Sliver配置
/root/redteam/               # 红队工具目录
```

---

## ⏰ 自动化任务

```cron
0 8 * * * /bin/bash /root/redteam/scripts/threat_intel.sh
```
每天8:00执行威胁情报收集

---

## 👥 活跃用户

当前登录:
- root@23.81.40.216 (2个会话)
- 上次活跃: 1小时前

---

## 🚨 安全建议

**对于服务器所有者:**
1. 立即修改root密码
2. 关闭8888端口HTTP服务
3. 删除.api_keys等敏感文件
4. 启用SSH密钥认证，禁用密码登录
5. 更换所有泄露的API密钥

**对于渗透测试者:**
此服务器可用作:
- C2控制中心
- 代理跳板（Tor+Privoxy）
- Payload托管
- 信息收集平台（Shodan/FOFA）

---

## 📊 价值评估

**权限级别**: ⭐⭐⭐⭐⭐ (root完全控制)
**情报价值**: ⭐⭐⭐⭐⭐ (API密钥 + C2配置)
**横向移动**: ⭐⭐⭐⭐ (已有Sliver + nc监听器)
**持久化**: ⭐⭐⭐⭐⭐ (定时任务 + C2框架)

---

生成时间: 2025-11-15 01:51 +08
