# SSH 连接优化配置

## 📖 说明

这个配置使用 SSH ControlMaster 功能实现连接复用，可以将 SSH 连接速度提升 **7-11 倍**。

## 🚀 快速开始

### 在新容器/环境中使用

每次进入新的容器环境时，只需运行：

```bash
bash /workspace/setup-ssh-optimization.sh
```

## 📊 性能提升

- **优化前**: 每次连接 ~531ms
- **优化后**: 
  - 首次连接: ~800ms (建立主连接)
  - 后续连接: ~70ms (提速 7-11 倍)

## 🔧 使用方法

### 使用别名连接（推荐）
```bash
sshpass -p '@admin1314@' ssh vps-hosteons "你的命令"
```

### 使用完整连接
```bash
sshpass -p '@admin1314@' ssh -p 2233 root@82.29.71.156 "你的命令"
```

两种方式都会自动使用连接复用！

## ⚙️ 工作原理

1. **首次连接**: 建立 TCP 连接 + SSH 握手 + 认证，保持主连接
2. **后续连接**: 直接通过已建立的主连接发送命令，无需重新认证
3. **自动管理**: 10 分钟无操作后自动断开主连接

## 📁 文件说明

- `setup-ssh-optimization.sh`: 一键配置脚本
- `ssh-config-template`: SSH 配置模板
- `README-SSH-OPTIMIZATION.md`: 本说明文档

## 🔗 主连接状态

查看当前主连接：
```bash
ls -lh ~/.ssh/controlmasters/
```

手动断开主连接：
```bash
rm ~/.ssh/controlmasters/*
```

## 💡 提示

- 主连接会在 10 分钟无活动后自动断开
- 断开后下次连接会自动重建主连接
- 此配置对所有 SSH 连接都有效
- 配置文件位置: `~/.ssh/config`
