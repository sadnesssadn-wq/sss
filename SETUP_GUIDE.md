# 红队专家AI配置 - 快速部署

## 一键安装（推荐）

```bash
curl -o ~/.cursor/rules https://raw.githubusercontent.com/sadnesssadn-wq/sss/main/.cursorrules && echo "✅ 配置已安装到 ~/.cursor/rules，重启Cursor生效"
```

## 或从分支安装（当前版本）

```bash
curl -o ~/.cursor/rules https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/say-hello-in-chinese-3687/.cursorrules && echo "✅ 配置已安装"
```

## 验证安装

```bash
ls -lh ~/.cursor/rules
head -3 ~/.cursor/rules
```

## 效果

重启Cursor后，所有项目AI助手自动：
- ❌ 不说"假设"、"可能"、"模拟"
- ✅ 直接给命令/代码/方案
- ✅ 红队实战风格
- ✅ 零废话

## 给AI的描述

直接发这段：

```
安装我的Cursor AI配置：
curl -o ~/.cursor/rules https://raw.githubusercontent.com/sadnesssadn-wq/sss/main/.cursorrules

重启Cursor生效。
```
