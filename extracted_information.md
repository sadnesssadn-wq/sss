# 提取的信息汇总

## 🎯 数据库信息

### 发现的表
- **TrnQuestionMain** - 培训问题主表
- **PerPassport** - 人员护照表（可能包含敏感信息）
- **LogPassChange** - 密码变更日志

### 需要查询的表
- PerPassport (可能包含密码或敏感数据)
- LogPassChange (密码变更历史)

## 🌐 内网主机发现

### ARP表发现的主机
- **172.16.22.1** - 网关
- **172.16.22.50**
- **172.16.22.201-212** - 多个内网主机
- **172.16.22.206** - Web服务器（当前入口）
- **172.16.22.207** - SMB连接目标（可能是域控或文件服务器）
- **172.16.22.208** - 数据库服务器（当前控制）

### 网络连接
- **172.16.22.207:3260** - LDAP/Global Catalog (可能是域控)
- **172.16.22.207:445** - SMB文件共享
- **外部IP:3389** - RDP连接

## 🔍 系统信息

### 数据库服务器 (172.16.22.208)
- 系统: Windows Server 2019 Standard
- 主机名: WIN-S26R8R6H2P4
- 用户: Administrator, thanatorn (管理员)
- 权限: nt service\mssqlserver
- 特权: SeImpersonatePrivilege (Enabled)
- Spooler服务: LocalSystem运行

### 网络配置
- NullSessionPipes: 已配置
- restrictnullsessaccess: 启用

## 📊 服务信息
- 多个自动启动服务
- LanmanServer (SMB服务)运行中

## 🎯 下一步行动

### 优先级1: 数据库查询
1. 查询PerPassport表结构
2. 提取PerPassport表中的敏感数据
3. 查询LogPassChange日志

### 优先级2: 内网横向移动
1. 测试172.16.22.207的SMB访问
2. 检查172.16.22.207是否为域控
3. 尝试凭证重用

### 优先级3: 更多信息收集
1. 查询其他数据库表
2. 检查系统配置文件
3. 收集更多网络信息
