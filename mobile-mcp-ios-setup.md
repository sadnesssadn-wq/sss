# Mobile MCP - iOS 真实设备配置指南

## ⚠️ 重要前提

**iOS 真实设备必须在 macOS 系统上配置和使用**

## 📋 前置条件

### 1. 安装 Xcode Command Line Tools

在 macOS 上打开终端，运行：

```bash
# 安装 Xcode Command Line Tools
xcode-select --install

# 验证安装
xcode-select -p
# 应该输出：/Applications/Xcode.app/Contents/Developer 或类似路径
```

### 2. 安装 Node.js

```bash
# 检查 Node.js 版本（需要 v18 或更高）
node --version

# 如果未安装，可以从 https://nodejs.org/ 下载
# 或使用 Homebrew 安装：
brew install node
```

### 3. 连接 iOS 设备

1. 使用 USB 线将 iPhone/iPad 连接到 Mac
2. 在 iOS 设备上点击"信任此电脑"
3. 验证设备连接：

```bash
# 列出所有连接的 iOS 设备
xcrun xctrace list devices

# 或使用
instruments -s devices
```

你应该能看到类似这样的输出：
```
== Devices ==
Your iPhone's Name (15.0) (identifier)
```

## 🔧 在 Cursor 中配置 Mobile MCP

### 方法 1：一键安装（推荐）

点击这个按钮直接安装：
[Install in Cursor](https://cursor.com/en/install-mcp?name=Mobile%20MCP&config=eyJjb21tYW5kIjoibnB4IiwiYXJncyI6WyIteSIsIkBtb2JpbGVuZXh0L21vYmlsZS1tY3BAbGF0ZXN0Il19)

### 方法 2：手动配置

1. 打开 Cursor 设置
2. 进入 `Settings` -> `MCP` -> `Add new MCP Server`
3. 填写以下信息：
   - **Name**: `Mobile MCP` (或任何你喜欢的名字)
   - **Type**: 选择 `command`
   - **Command**: `npx -y @mobilenext/mobile-mcp@latest`

### 方法 3：直接编辑配置文件

在 macOS 上，Cursor 的 MCP 配置文件通常位于：
```
~/Library/Application Support/Cursor/User/globalStorage/saoudrizwan.claude-dev/settings/cline_mcp_settings.json
```

添加以下配置：

```json
{
  "mcpServers": {
    "mobile-mcp": {
      "command": "npx",
      "args": ["-y", "@mobilenext/mobile-mcp@latest"]
    }
  }
}
```

## ✅ 验证配置

### 1. 重启 Cursor

配置完成后，重启 Cursor 以加载 MCP 服务器。

### 2. 测试连接

在 Cursor 的 Agent/Chat 中，可以尝试以下命令来测试：

```
请帮我检查当前连接的移动设备
```

或者：

```
截图当前 iOS 设备的屏幕
```

## 🚀 使用示例

配置完成后，你可以通过自然语言指令来控制 iOS 设备：

### 基础操作
```
打开设置应用
```

```
点击"通用"选项
```

```
截取当前屏幕并显示
```

### 复杂工作流
```
打开 Safari，搜索"天气预报"，打开第一个结果，截图保存
```

```
打开 App Store，搜索"Twitter"，查看评分和评论
```

```
打开照片应用，选择最新的照片，分享到微信
```

## 🔍 故障排查

### 问题 1：找不到设备

**解决方案：**
```bash
# 检查设备连接
xcrun xctrace list devices

# 如果设备未显示，尝试：
# 1. 重新插拔 USB 线
# 2. 在 iOS 设备上重新信任电脑
# 3. 重启 iOS 设备
```

### 问题 2：权限错误

**解决方案：**
- 确保 iOS 设备已解锁
- 确保点击了"信任此电脑"
- 检查 Mac 的安全设置

### 问题 3：MCP 服务器无法启动

**解决方案：**
```bash
# 清除 npm 缓存
npm cache clean --force

# 手动安装
npm install -g @mobilenext/mobile-mcp@latest

# 测试运行
npx @mobilenext/mobile-mcp@latest --help
```

### 问题 4：iOS 设备需要开发者模式

在 iOS 16+ 上，可能需要启用开发者模式：
1. 在 iOS 设备上：`设置` -> `隐私与安全` -> `开发者模式`
2. 打开开发者模式
3. 重启设备

## 📚 更多资源

- [Mobile MCP Wiki](https://github.com/mobile-next/mobile-mcp/wiki)
- [示例提示词](https://github.com/mobile-next/mobile-mcp/wiki/Prompt-Example-repo-list)
- [Slack 社区](http://mobilenexthq.com/join-slack)

## 💡 提示

1. **保持设备解锁**：在自动化过程中，确保 iOS 设备保持解锁状态
2. **USB 连接**：使用可靠的 USB 线，避免连接中断
3. **电池充足**：确保设备有足够的电量
4. **关闭自动锁定**：建议在测试时关闭自动锁定功能

## 🎯 开始使用

配置完成后，你就可以使用 Cursor 的 AI Agent 来自动化你的 iOS 设备了！尝试用自然语言描述你想要执行的操作，让 AI 帮你完成。

祝使用愉快！🎉
