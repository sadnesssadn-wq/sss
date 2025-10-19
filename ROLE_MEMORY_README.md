# 🎭 AI角色记忆管理系统

一个强大的AI角色定义、记忆存储和管理系统，支持多角色切换、上下文保持和记忆持久化。

## 📋 目录

- [功能特性](#功能特性)
- [系统架构](#系统架构)
- [快速开始](#快速开始)
- [使用指南](#使用指南)
- [API文档](#api文档)
- [示例场景](#示例场景)

---

## ✨ 功能特性

### 核心功能

✅ **角色定义系统**
- 支持自定义AI角色配置
- 定义角色个性、能力、约束
- 丰富的元数据支持

✅ **记忆管理**
- 对话记忆存储
- 上下文信息管理
- 记忆搜索与检索
- 时间戳追踪

✅ **持久化存储**
- JSON格式存储
- 自动保存
- 导入/导出功能
- 版本控制友好

✅ **多角色支持**
- 角色切换
- 并行管理多个角色
- 独立的记忆空间

✅ **命令行工具**
- 完整的CLI界面
- 交互式创建
- 批量操作

---

## 🏗️ 系统架构

### 核心组件

```
角色记忆系统
├── role_memory.py         # 核心管理模块
│   ├── RoleMemory         # 角色记忆类
│   ├── RoleMemoryManager  # 角色管理器
│   └── RoleDefinitionLoader # 配置加载器
│
├── role_cli.py            # 命令行工具
│   └── 命令集合 (list, show, create, etc.)
│
├── roles.json             # 预定义角色配置
│   └── 8个预设角色
│
└── role_memories/         # 记忆存储目录
    ├── red_team_expert.json
    ├── friendly_assistant.json
    └── ...
```

### 数据结构

```json
{
  "role_id": "unique_identifier",
  "name": "角色名称",
  "description": "角色描述",
  "personality": {
    "style": "direct",
    "mindset": "offensive",
    "language": "zh-CN"
  },
  "capabilities": ["能力1", "能力2"],
  "constraints": ["约束1", "约束2"],
  "metadata": {
    "expertise_level": "expert",
    "focus_areas": ["area1", "area2"]
  },
  "memory": [
    {
      "timestamp": "2025-10-19T...",
      "type": "interaction",
      "content": "记忆内容",
      "tags": ["tag1", "tag2"]
    }
  ],
  "context": {
    "key1": "value1",
    "key2": "value2"
  },
  "created_at": "2025-10-19T...",
  "last_active": "2025-10-19T..."
}
```

---

## 🚀 快速开始

### 1. 运行演示

```bash
# 查看系统演示
python3 role_memory.py
```

这会创建示例角色并展示基本功能。

### 2. 加载预定义角色

```bash
# 从配置文件加载8个预设角色
python3 role_cli.py load-presets
```

预设角色包括：
- 🔴 红队专家
- 🛡️ 蓝队防御专家
- 😊 友好助手
- 🤖 AI/ML研究员
- ☁️ 云架构师
- 🌐 Web3开发者
- 📊 数据科学家
- 🔧 DevOps工程师

### 3. 列出所有角色

```bash
python3 role_cli.py list
```

### 4. 查看角色详情

```bash
python3 role_cli.py show red_team_expert
```

---

## 📖 使用指南

### CLI命令参考

#### 角色管理

```bash
# 列出所有角色
python3 role_cli.py list

# 显示角色详情
python3 role_cli.py show <role_id>

# 切换当前角色
python3 role_cli.py switch <role_id>

# 创建新角色 (交互式)
python3 role_cli.py create

# 删除角色
python3 role_cli.py delete <role_id>

# 强制删除 (不确认)
python3 role_cli.py delete <role_id> --force
```

#### 导入导出

```bash
# 导出角色
python3 role_cli.py export <role_id> <file.json>

# 导入角色
python3 role_cli.py import <file.json>

# 加载预定义角色
python3 role_cli.py load-presets
python3 role_cli.py load-presets --config custom_roles.json
```

#### 记忆管理

```bash
# 添加记忆
python3 role_cli.py memory add <role_id> <type> "<content>" --tags "tag1,tag2"

# 列出记忆
python3 role_cli.py memory list <role_id>
python3 role_cli.py memory list <role_id> --limit 20
```

#### 存储位置

```bash
# 使用自定义存储目录
python3 role_cli.py --storage /path/to/storage list
```

---

## 💻 API文档

### Python API

#### 创建管理器

```python
from role_memory import RoleMemoryManager

# 创建管理器
manager = RoleMemoryManager(storage_path="./role_memories")
```

#### 创建角色

```python
role = manager.create_role(
    role_id="my_role",
    name="我的角色",
    description="角色描述",
    personality={
        "style": "friendly",
        "mindset": "helpful",
        "language": "zh-CN"
    },
    capabilities=["能力1", "能力2"],
    constraints=["约束1"],
    metadata={"level": "expert"}
)
```

#### 管理记忆

```python
# 获取角色
role = manager.get_role("my_role")

# 添加记忆
role.add_memory(
    memory_type="interaction",
    content="用户询问了关于Python的问题",
    tags=["python", "question"]
)

# 更新上下文
role.update_context("current_topic", "Python编程")

# 获取最近记忆
recent = role.get_recent_memories(limit=10)

# 搜索记忆
results = role.search_memories("Python")
```

#### 角色切换

```python
# 切换角色
manager.switch_role("red_team_expert")

# 获取当前角色
current = manager.get_current_role()
print(f"当前角色: {current.name}")
```

#### 持久化

```python
# 保存单个角色
manager.save_role("my_role")

# 保存所有角色
manager.save_all_roles()

# 加载角色
manager.load_role("my_role")
```

#### 导入导出

```python
# 导出角色
manager.export_role("my_role", "backup.json")

# 导入角色
imported_role = manager.import_role("backup.json")
```

#### 加载预定义角色

```python
from role_memory import RoleDefinitionLoader

# 从配置文件批量创建角色
RoleDefinitionLoader.create_roles_from_config(
    manager=manager,
    config_path="./roles.json"
)
```

---

## 🎯 示例场景

### 场景1: 红队渗透测试

```python
from role_memory import RoleMemoryManager

manager = RoleMemoryManager()

# 切换到红队角色
manager.switch_role("red_team_expert")
role = manager.get_current_role()

# 记录侦察阶段
role.add_memory(
    "reconnaissance",
    "目标: example.com, 发现开放端口: 80, 443, 22, 3306",
    tags=["recon", "nmap"]
)

role.update_context("target", "example.com")
role.update_context("phase", "reconnaissance")

# 记录漏洞发现
role.add_memory(
    "finding",
    "Web应用存在SQL注入漏洞 (CVE-2023-xxxxx)",
    tags=["vulnerability", "sqli", "critical"]
)

role.update_context("phase", "exploitation")

# 保存进度
manager.save_role("red_team_expert")

# 查看所有记忆
for memory in role.get_recent_memories():
    print(f"[{memory['type']}] {memory['content']}")
```

### 场景2: AI助手对话

```python
manager = RoleMemoryManager()
manager.switch_role("friendly_assistant")
role = manager.get_current_role()

# 记录用户问题
role.add_memory(
    "user_query",
    "用户询问: 如何学习Python?",
    tags=["python", "learning", "beginner"]
)

# 记录响应
role.add_memory(
    "assistant_response",
    "建议从Python基础语法开始，推荐资源: ...",
    tags=["python", "learning", "response"]
)

# 更新用户偏好
role.update_context("user_skill_level", "beginner")
role.update_context("learning_topic", "python")

manager.save_role("friendly_assistant")
```

### 场景3: 多角色协作

```python
manager = RoleMemoryManager()

# 红队发现漏洞
manager.switch_role("red_team_expert")
red_role = manager.get_current_role()
red_role.add_memory(
    "finding",
    "发现XSS漏洞: /search?q=<payload>",
    tags=["vulnerability", "xss"]
)
manager.save_role("red_team_expert")

# 蓝队制定防御
manager.switch_role("blue_team_defender")
blue_role = manager.get_current_role()
blue_role.add_memory(
    "mitigation",
    "针对XSS漏洞的防御措施: 实施CSP策略",
    tags=["defense", "xss", "csp"]
)
manager.save_role("blue_team_defender")

# 生成报告
print("=== 红蓝对抗报告 ===")
print("\n红队发现:")
for m in red_role.search_memories("漏洞"):
    print(f"  - {m['content']}")

print("\n蓝队响应:")
for m in blue_role.search_memories("防御"):
    print(f"  - {m['content']}")
```

### 场景4: 角色备份与恢复

```bash
# 备份所有角色
for role in $(python3 role_cli.py list | grep -oP '\([^)]+\)' | tr -d '()'); do
    python3 role_cli.py export $role "backups/${role}.json"
done

# 恢复角色
for file in backups/*.json; do
    python3 role_cli.py import "$file"
done
```

---

## 🔧 高级功能

### 自定义存储位置

```python
# 使用自定义目录
manager = RoleMemoryManager(storage_path="/custom/path/roles")
```

### 记忆搜索

```python
# 搜索特定内容
results = role.search_memories("SQL注入")

# 按标签过滤
vulns = [m for m in role.memory if "vulnerability" in m['tags']]

# 按时间范围
from datetime import datetime, timedelta
recent = [
    m for m in role.memory 
    if datetime.fromisoformat(m['timestamp']) > datetime.now() - timedelta(days=7)
]
```

### 角色模板

创建自己的角色配置文件：

```json
{
  "version": "1.0",
  "roles": [
    {
      "role_id": "custom_role",
      "name": "自定义角色",
      "description": "我的专属角色",
      "personality": {
        "style": "professional",
        "mindset": "analytical",
        "language": "zh-CN"
      },
      "capabilities": [
        "能力1",
        "能力2"
      ],
      "constraints": [],
      "metadata": {
        "version": "1.0"
      }
    }
  ]
}
```

然后加载：

```bash
python3 role_cli.py load-presets --config my_roles.json
```

---

## 📊 统计与分析

### 查看角色使用统计

```python
def get_role_stats(role):
    return {
        "name": role.name,
        "total_memories": len(role.memory),
        "memory_types": list(set(m['type'] for m in role.memory)),
        "unique_tags": list(set(
            tag for m in role.memory for tag in m['tags']
        )),
        "context_keys": list(role.context.keys()),
        "created_at": role.created_at,
        "last_active": role.last_active
    }

# 使用
stats = get_role_stats(role)
print(f"记忆总数: {stats['total_memories']}")
print(f"记忆类型: {', '.join(stats['memory_types'])}")
print(f"标签: {', '.join(stats['unique_tags'])}")
```

---

## 🎨 最佳实践

### 1. 角色设计

- ✅ 使用清晰的role_id（如: red_team_expert）
- ✅ 提供详细的描述
- ✅ 明确定义能力和约束
- ✅ 使用有意义的元数据

### 2. 记忆管理

- ✅ 使用描述性的记忆类型
- ✅ 添加相关标签便于搜索
- ✅ 定期清理过时记忆
- ✅ 重要信息存入上下文

### 3. 上下文使用

- ✅ 存储当前状态信息
- ✅ 记录用户偏好
- ✅ 追踪进度
- ✅ 保持精简

### 4. 持久化

- ✅ 重要操作后立即保存
- ✅ 定期备份角色配置
- ✅ 使用版本控制（Git）
- ✅ 导出关键角色

---

## 🔍 故障排除

### Q: 角色文件在哪里？
```bash
ls -la role_memories/
```

### Q: 如何重置角色？
```bash
python3 role_cli.py delete <role_id> --force
python3 role_cli.py load-presets  # 重新加载
```

### Q: 记忆太多怎么办？
```python
# 清理旧记忆
role.memory = role.memory[-100:]  # 只保留最近100条
manager.save_role(role.role_id)
```

### Q: 如何批量操作？
```bash
# 导出所有角色
python3 -c "
from role_memory import RoleMemoryManager
manager = RoleMemoryManager()
for role_id in manager.roles:
    manager.export_role(role_id, f'backup_{role_id}.json')
"
```

---

## 📝 更新日志

### v1.0 (2025-10-19)

✨ 初始版本
- 完整的角色记忆系统
- 8个预定义角色
- CLI工具
- 导入导出功能
- 持久化存储

---

## 🤝 贡献

欢迎提交问题和改进建议！

---

## 📄 许可

MIT License

---

## 🔗 相关资源

- Python JSON处理: https://docs.python.org/3/library/json.html
- 命令行参数: https://docs.python.org/3/library/argparse.html
- 数据持久化最佳实践: https://docs.python.org/3/library/persistence.html

---

**🎉 开始使用角色记忆系统，让您的AI助手更智能！**

```bash
# 快速开始
python3 role_memory.py          # 查看演示
python3 role_cli.py load-presets # 加载角色
python3 role_cli.py list         # 列出角色
```
