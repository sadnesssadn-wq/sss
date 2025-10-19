# 🚀 角色记忆系统 - 快速开始

5分钟快速上手AI角色记忆管理系统！

---

## ⚡ 一键启动

### 步骤1: 查看演示

```bash
python3 role_memory.py
```

这会展示系统的核心功能。

### 步骤2: 加载预设角色

```bash
python3 role_cli.py load-presets
```

现在你拥有8个专业AI角色！

### 步骤3: 查看所有角色

```bash
python3 role_cli.py list
```

---

## 🎭 8个预设角色

1. **🔴 红队专家** (`red_team_expert`)
   - 渗透测试、漏洞利用、APT模拟

2. **🛡️ 蓝队防御专家** (`blue_team_defender`)
   - 威胁检测、事件响应、安全监控

3. **😊 友好助手** (`friendly_assistant`)
   - 编程帮助、问题解答、学习指导

4. **🤖 AI/ML研究员** (`ai_ml_researcher`)
   - 机器学习、深度学习、AI安全

5. **☁️ 云架构师** (`cloud_architect`)
   - 云原生、Kubernetes、DevOps

6. **🌐 Web3开发者** (`web3_developer`)
   - 智能合约、DeFi、区块链安全

7. **📊 数据科学家** (`data_scientist`)
   - 数据分析、统计建模、可视化

8. **🔧 DevOps工程师** (`devops_engineer`)
   - CI/CD、自动化、监控告警

---

## 📖 常用命令

### 查看角色

```bash
# 列出所有角色
python3 role_cli.py list

# 查看详细信息
python3 role_cli.py show red_team_expert
```

### 切换角色

```bash
python3 role_cli.py switch red_team_expert
```

### 管理记忆

```bash
# 添加记忆
python3 role_cli.py memory add red_team_expert finding \
  "发现SQL注入漏洞" --tags "vulnerability,sqli"

# 查看记忆
python3 role_cli.py memory list red_team_expert
```

### 导入导出

```bash
# 导出角色
python3 role_cli.py export red_team_expert backup.json

# 导入角色
python3 role_cli.py import backup.json
```

---

## 💻 Python示例

### 基础使用

```python
from role_memory import RoleMemoryManager

# 创建管理器
manager = RoleMemoryManager()

# 切换到红队角色
manager.switch_role("red_team_expert")
role = manager.get_current_role()

# 添加记忆
role.add_memory(
    "finding",
    "发现XSS漏洞: /search?q=<script>alert(1)</script>",
    tags=["xss", "vulnerability"]
)

# 更新上下文
role.update_context("target", "example.com")
role.update_context("phase", "exploitation")

# 保存
manager.save_role("red_team_expert")

# 查看记忆
for memory in role.get_recent_memories():
    print(f"{memory['type']}: {memory['content']}")
```

### 创建自定义角色

```python
custom_role = manager.create_role(
    role_id="my_expert",
    name="我的专家",
    description="专注于特定领域的专家",
    personality={
        "style": "professional",
        "mindset": "analytical",
        "language": "zh-CN"
    },
    capabilities=[
        "能力1",
        "能力2",
        "能力3"
    ]
)
```

---

## 🎯 实战场景

### 场景1: 红队渗透测试

```python
manager = RoleMemoryManager()
manager.switch_role("red_team_expert")
role = manager.get_current_role()

# 侦察阶段
role.add_memory("recon", "Nmap扫描: 80, 443, 22开放", tags=["recon", "nmap"])
role.update_context("target_ip", "192.168.1.100")

# 漏洞发现
role.add_memory("finding", "Web服务器SQL注入", tags=["vuln", "sqli"])

# 利用阶段
role.add_memory("exploit", "成功获取数据库访问", tags=["exploit", "success"])
role.update_context("access_level", "database")

manager.save_role("red_team_expert")
```

### 场景2: 编程学习

```python
manager.switch_role("friendly_assistant")
role = manager.get_current_role()

# 记录学习进度
role.add_memory("learning", "学习Python基础语法", tags=["python", "basics"])
role.update_context("skill_level", "beginner")
role.update_context("current_topic", "python")

# 记录问题
role.add_memory("question", "如何使用列表推导式?", tags=["python", "list"])

# 记录解答
role.add_memory("answer", "列表推导式: [x for x in range(10)]", tags=["python", "list"])

manager.save_role("friendly_assistant")
```

### 场景3: AI研究

```python
manager.switch_role("ai_ml_researcher")
role = manager.get_current_role()

# 实验记录
role.add_memory("experiment", "训练BERT模型，准确率: 92.5%", tags=["nlp", "bert"])
role.update_context("project", "文本分类")
role.update_context("dataset", "IMDB情感分析")

# 论文笔记
role.add_memory("paper", "读Attention is All You Need", tags=["transformer", "nlp"])

manager.save_role("ai_ml_researcher")
```

---

## 📊 查看统计

```bash
# 查看角色详情
python3 role_cli.py show red_team_expert

# 查看记忆数量
python3 role_cli.py memory list red_team_expert --limit 100
```

---

## 🔧 高级技巧

### 1. 批量导出

```bash
# 备份所有角色
mkdir backups
for role in red_team_expert blue_team_defender friendly_assistant; do
    python3 role_cli.py export $role "backups/${role}.json"
done
```

### 2. 记忆搜索

```python
# 搜索特定内容
results = role.search_memories("SQL")

# 按标签过滤
vulns = [m for m in role.memory if "vulnerability" in m['tags']]
```

### 3. 自定义存储位置

```bash
# 使用自定义目录
python3 role_cli.py --storage /path/to/roles list
```

---

## 🆘 常见问题

### Q: 角色保存在哪里?
A: 默认在 `./role_memories/` 目录，每个角色一个JSON文件。

### Q: 如何重置?
A: 删除 `role_memories` 目录，重新运行 `load-presets`。

### Q: 能创建多少角色?
A: 无限制！可以创建任意数量的角色。

### Q: 记忆会占用很多空间吗?
A: 不会，每条记忆只是文本，非常轻量。

---

## 🎓 学习资源

- **完整文档**: `ROLE_MEMORY_README.md`
- **角色配置**: `roles.json`
- **源代码**: `role_memory.py`
- **CLI工具**: `role_cli.py`

---

## 🎉 下一步

1. ✅ 尝试不同角色
2. ✅ 添加自己的记忆
3. ✅ 创建自定义角色
4. ✅ 探索高级功能

---

**现在开始使用吧！**

```bash
# 快速命令
python3 role_memory.py          # 演示
python3 role_cli.py load-presets # 加载角色
python3 role_cli.py list         # 列出角色
python3 role_cli.py show red_team_expert  # 查看详情
```

---

**🚀 享受你的AI角色记忆系统！**
