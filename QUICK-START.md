# 🚀 快速开始 - SSH 优化配置

## 📋 在新容器中的使用步骤

### 方法 1️⃣：直接运行脚本（推荐）

当你进入新的 Cursor 容器环境时，只需要在终端执行：

```bash
bash /workspace/setup-ssh-optimization.sh
```

就这么简单！一行命令搞定。

---

### 方法 2️⃣：让我（AI 助手）帮你运行

直接对我说：

- "配置 SSH 优化"
- "运行 SSH 配置脚本"
- "初始化 SSH 连接复用"

我会自动执行脚本。

---

### 方法 3️⃣：创建别名（可选，更方便）

如果你经常需要运行，可以创建别名：

```bash
echo "alias setup-ssh='bash /workspace/setup-ssh-optimization.sh'" >> ~/.bashrc
source ~/.bashrc
```

以后只需输入：
```bash
setup-ssh
```

---

## ✅ 验证是否生效

运行脚本后，测试连接速度：

```bash
# 第一次（建立主连接）
time sshpass -p '@admin1314@' ssh vps-hosteons "echo test"

# 第二次（应该很快）
time sshpass -p '@admin1314@' ssh vps-hosteons "echo test"
```

如果第二次在 70-100ms 左右，说明配置成功！

---

## 📍 文件位置

- 脚本位置：`/workspace/setup-ssh-optimization.sh`
- 说明文档：`/workspace/README-SSH-OPTIMIZATION.md`
- 配置模板：`/workspace/ssh-config-template`

---

## 🤔 常见问题

### Q: 为什么新容器需要重新运行？
A: 因为 SSH 配置文件在 `~/.ssh/config`（用户目录），每个新容器是新的文件系统，需要重新创建。

### Q: 文件会丢失吗？
A: 不会！文件已保存到 Git 仓库，在 `/workspace` 下，新容器会自动 clone。

### Q: 需要手动提交到 Git 吗？
A: Cursor 会自动处理 Git 提交，文件已在仓库中。

---

## 💡 最佳实践

1. **每次进入新容器**：第一件事就运行 `bash /workspace/setup-ssh-optimization.sh`
2. **或者**：直接对 AI 助手说"配置 SSH"
3. **然后**：享受飞快的 SSH 连接速度！

