# Mobile MCP - Windows 配置指南（Android）

## ✅ Windows 支持说明

Mobile MCP **可以在 Windows 上运行**，但仅支持 Android 设备：
- ✅ Android 模拟器
- ✅ Android 真实设备
- ❌ iOS 设备（需要 macOS + Xcode）

## 📋 前置条件

### 1. 安装 Node.js

下载并安装 Node.js v18 或更高版本：
- 访问：https://nodejs.org/
- 下载 LTS 版本
- 安装后验证：

```cmd
node --version
```

应该显示 v18 或更高版本。

### 2. 安装 Android SDK Platform Tools

#### 方法 A：通过 Android Studio（推荐）

1. 下载并安装 [Android Studio](https://developer.android.com/studio)
2. 打开 Android Studio
3. 进入 `Settings` → `Appearance & Behavior` → `System Settings` → `Android SDK`
4. 在 `SDK Tools` 标签页，勾选 `Android SDK Platform-Tools`
5. 点击 `Apply` 安装

#### 方法 B：独立下载

1. 访问 https://developer.android.com/tools/releases/platform-tools
2. 下载 Windows 版本
3. 解压到任意目录（例如：`C:\platform-tools`）
4. 添加到系统环境变量 PATH：
   - 右键 `此电脑` → `属性` → `高级系统设置` → `环境变量`
   - 在 `系统变量` 中找到 `Path`，点击 `编辑`
   - 添加：`C:\platform-tools`
   - 点击 `确定`

### 3. 验证 ADB 安装

打开命令提示符（CMD）或 PowerShell，运行：

```cmd
adb version
```

应该显示类似：
```
Android Debug Bridge version 1.0.41
...
```

## 🔧 在 Cursor 中配置 Mobile MCP

### 方法 1：一键安装（推荐）

点击这个按钮直接安装：
[Install in Cursor](https://cursor.com/en/install-mcp?name=Mobile%20MCP&config=eyJjb21tYW5kIjoibnB4IiwiYXJncyI6WyIteSIsIkBtb2JpbGVuZXh0L21vYmlsZS1tY3BAbGF0ZXN0Il19)

### 方法 2：手动配置

1. 打开 Cursor 设置
2. 进入 `Settings` → `MCP` → `Add new MCP Server`
3. 填写以下信息：
   - **Name**: `Mobile MCP`
   - **Type**: 选择 `command`
   - **Command**: `npx -y @mobilenext/mobile-mcp@latest`

### 方法 3：编辑配置文件

Windows 上，Cursor 的 MCP 配置文件位于：
```
%APPDATA%\Cursor\User\globalStorage\saoudrizwan.claude-dev\settings\cline_mcp_settings.json
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

## 📱 连接 Android 设备

### 选项 1：Android 模拟器

1. 打开 Android Studio
2. 点击 `Device Manager`（设备管理器图标）
3. 创建或启动一个模拟器
4. 验证连接：

```cmd
adb devices
```

应该显示：
```
List of devices attached
emulator-5554   device
```

### 选项 2：Android 真实设备

1. **在手机上启用开发者选项：**
   - 进入 `设置` → `关于手机`
   - 连续点击 `版本号` 7 次
   - 返回设置，找到 `开发者选项`

2. **启用 USB 调试：**
   - 在 `开发者选项` 中，打开 `USB 调试`

3. **连接手机到电脑：**
   - 使用 USB 线连接手机
   - 在手机上点击 `允许 USB 调试`

4. **验证连接：**

```cmd
adb devices
```

应该显示你的设备：
```
List of devices attached
XXXXXXXXXXXXX   device
```

## ✅ 验证配置

### 1. 重启 Cursor

配置完成后，重启 Cursor 以加载 MCP 服务器。

### 2. 测试连接

在 Cursor 的 Agent/Chat 中，尝试：

```
请帮我检查当前连接的 Android 设备
```

或者：

```
截图当前 Android 设备的屏幕
```

## 🚀 使用示例

### 基础操作

```
打开设置应用
```

```
点击"关于手机"
```

```
截取当前屏幕
```

### 复杂工作流

```
打开 Chrome 浏览器，搜索"天气预报"，截图保存
```

```
打开 Google Play，搜索"Twitter"，查看评分
```

```
打开相机，拍照，分享到微信
```

## 🔍 故障排查

### 问题 1：找不到 adb 命令

**解决方案：**
1. 确认已安装 Android SDK Platform Tools
2. 检查环境变量 PATH 是否正确设置
3. 重启命令提示符或 PowerShell
4. 如果使用 Android Studio，确保 SDK 已正确安装

### 问题 2：adb devices 显示 unauthorized

**解决方案：**
1. 在手机上点击 `允许 USB 调试`
2. 如果未弹出提示，运行：
   ```cmd
   adb kill-server
   adb start-server
   adb devices
   ```
3. 重新连接手机

### 问题 3：设备显示 offline

**解决方案：**
1. 重启 adb 服务：
   ```cmd
   adb kill-server
   adb start-server
   ```
2. 重新插拔 USB 线
3. 在手机上重新授权 USB 调试

### 问题 4：模拟器无法启动

**解决方案：**
1. 确保已启用 BIOS 中的虚拟化（Intel VT-x 或 AMD-V）
2. 在 Android Studio 中检查模拟器设置
3. 尝试创建新的模拟器实例

### 问题 5：MCP 服务器无法启动

**解决方案：**
```cmd
# 清除 npm 缓存
npm cache clean --force

# 手动安装
npm install -g @mobilenext/mobile-mcp@latest

# 测试运行
npx @mobilenext/mobile-mcp@latest --help
```

## 🎯 Windows 特定提示

1. **使用 PowerShell 而不是 CMD**：PowerShell 提供更好的命令行体验

2. **防火墙设置**：如果遇到连接问题，检查 Windows 防火墙是否阻止了 adb 或 Node.js

3. **USB 驱动**：
   - 大多数 Android 设备会自动安装驱动
   - 如果无法识别设备，访问手机厂商官网下载 USB 驱动

4. **使用质量好的 USB 线**：劣质 USB 线可能导致连接不稳定

## 🆚 iOS 设备怎么办？

如果你需要使用 iOS 真实设备：

- **唯一方案**：必须在 macOS 电脑上配置
- **原因**：iOS 设备自动化需要 Xcode 和 WebDriverAgent，仅在 macOS 上可用
- **替代方案**：可以考虑远程连接到 macOS 云服务（如 MacStadium、AWS Mac instances）

## 📚 更多资源

- [Mobile MCP Wiki](https://github.com/mobile-next/mobile-mcp/wiki)
- [Android ADB 文档](https://developer.android.com/tools/adb)
- [示例提示词](https://github.com/mobile-next/mobile-mcp/wiki/Prompt-Example-repo-list)
- [Slack 社区](http://mobilenexthq.com/join-slack)

## 🎉 开始使用

配置完成后，你就可以使用 Cursor 的 AI Agent 来自动化你的 Android 设备了！

尝试用自然语言描述你想要执行的操作，让 AI 帮你完成。

祝使用愉快！🚀
