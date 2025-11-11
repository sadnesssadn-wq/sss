# SSH配置说明

## 目标信息
- **IP**: 82.29.71.156
- **端口**: 2233
- **用户**: root
- **密码**: @admin1314@
- **主机**: vps55303961.hosteons.net
- **系统**: Ubuntu 5.15.0-46 x86_64

## 连接方式

### 方式1：快捷命令（推荐）
```bash
~/vssh 'command'              # 执行单条命令
~/vssh                        # 交互式登录
```

### 方式2：sshpass命令
```bash
sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 2233 root@82.29.71.156
```

### 方式3：SSH别名
```bash
# 已配置在 ~/.ssh/config
ssh vps                       # 需要手动输入密码
sshpass -p '@admin1314@' ssh vps  # 自动登录
```

## 重要文件

### SSH配置
- **Config**: ~/.ssh/config
- **私钥**: ~/.ssh/vps_ed25519
- **快捷脚本**: ~/vssh

### Sliver C2配置
- **路径**: /root/.sliver/
- **数据库**: /root/.sliver/sliver.db
- **配置**: /root/.sliver/configs/
- **证书**: /root/.sliver/certs/
- **端口**: 31337

## 监听端口

```
2233  - SSH
4444  - nc (2个进程)
5555  - nc
8118  - privoxy (127.0.0.1)
8888  - python3
9050  - tor (127.0.0.1)
31337 - sliver-server
```

## 网络信息

```
eth0: 82.29.71.156/24
virbr0: 192.168.122.1/24 (虚拟网桥，未激活)
DNS: 8.8.8.8, 4.2.2.1
```

## 运行时间
```
启动时间: 2022-10-19
运行天数: 23+ days
```

## 凭证信息

### SSH私钥
```
/root/.ssh/id_ed25519
已保存到本地: ~/.ssh/vps_ed25519
```

### 密码
```
root: @admin1314@
```

## 使用示例

```bash
# 查看进程
~/vssh 'ps auxf'

# 查看端口
~/vssh 'netstat -antup | grep LISTEN'

# 查看网络
~/vssh 'ip addr'

# 内网扫描
~/vssh 'ls -la /root/.sliver/'

# 交互式登录
~/vssh
```

## 注意事项

1. 目标是一台红队VPS，运行Sliver C2框架
2. 已配置Tor代理（9050）和Privoxy（8118）
3. 有3个nc监听端口（4444, 5555）
4. 运行Python服务（8888）
5. 虚拟化环境（virbr0网桥）
