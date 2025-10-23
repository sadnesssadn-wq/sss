# Frida MCP 服务器 - 实现 Hook 功能

## 🎯 方案概述

通过创建自定义的 MCP 服务器来集成 Frida，实现 Hook 功能。

## 📋 前置条件

### 1. 安装 Frida

**macOS/Linux:**
```bash
pip3 install frida-tools
```

**Windows:**
```cmd
pip install frida-tools
```

### 2. 验证 Frida 安装

```bash
frida --version
```

### 3. 在设备上安装 Frida Server

#### Android:
```bash
# 下载 frida-server
# 访问 https://github.com/frida/frida/releases
# 下载对应架构的 frida-server (例如: frida-server-16.0.0-android-arm64)

# 推送到设备
adb push frida-server-16.0.0-android-arm64 /data/local/tmp/frida-server
adb shell "chmod 755 /data/local/tmp/frida-server"

# 启动 frida-server (需要 root)
adb shell "su -c /data/local/tmp/frida-server &"
```

#### iOS (需要越狱):
```bash
# 通过 Cydia 安装 Frida
# 或者访问 https://frida.re/docs/ios/
```

## 🚀 方案选择

### 方案 1: 创建自定义 Frida MCP 服务器（推荐）

创建一个独立的 MCP 服务器，专门用于 Frida Hook 功能。

**优点:**
- ✅ 功能独立，易于维护
- ✅ 可以与 Mobile MCP 同时运行
- ✅ 完全控制 Hook 功能

**实现步骤:**

1. **创建项目:**

```bash
mkdir frida-mcp
cd frida-mcp
npm init -y
npm install @modelcontextprotocol/sdk zod frida
npm install -D typescript @types/node
```

2. **使用提供的 `frida-mcp-example.ts` 作为起点**

3. **编译并测试:**

```bash
npx tsc frida-mcp-example.ts
node frida-mcp-example.js
```

4. **在 Cursor 中配置:**

```json
{
  "mcpServers": {
    "mobile-mcp": {
      "command": "npx",
      "args": ["-y", "@mobilenext/mobile-mcp@latest"]
    },
    "frida-mcp": {
      "command": "node",
      "args": ["/path/to/frida-mcp/frida-mcp-example.js"]
    }
  }
}
```

### 方案 2: Fork Mobile MCP 并扩展

Fork Mobile MCP 项目，在 `Robot` 接口中添加 Hook 相关方法。

**优点:**
- ✅ 集成在一个服务器中
- ✅ 可以同时使用 UI 自动化和 Hook

**缺点:**
- ❌ 需要维护 fork 版本
- ❌ 难以跟上上游更新

**实现步骤:**

1. **Fork 项目:**
```bash
git clone https://github.com/mobile-next/mobile-mcp.git
cd mobile-mcp
```

2. **扩展 Robot 接口 (src/robot.ts):**

```typescript
export interface Robot {
  // ... 现有方法 ...
  
  /**
   * Hook 应用中的方法
   */
  hookMethod(className: string, methodName: string, script: string): Promise<void>;
  
  /**
   * 注入 Frida 脚本
   */
  injectScript(script: string): Promise<string>;
}
```

3. **在 AndroidRobot 和 IosRobot 中实现:**

```typescript
// src/android.ts
public async hookMethod(className: string, methodName: string, script: string): Promise<void> {
  // 使用 frida-node 实现
  const frida = require('frida');
  const device = await frida.getUsbDevice();
  const session = await device.attach(this.deviceId);
  
  const fridaScript = await session.createScript(script);
  await fridaScript.load();
}
```

### 方案 3: 同时运行 Mobile MCP + Frida CLI

最简单的方案：通过 AI Agent 协调使用 Mobile MCP 和 Frida 命令行。

**配置:**

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

**使用示例:**

让 AI Agent 执行：
1. 使用 Mobile MCP 进行 UI 操作
2. 使用 Shell 命令执行 Frida Hook
3. 再用 Mobile MCP 验证结果

```
# AI Agent 会自动协调：
1. 用 Mobile MCP 打开应用
2. 用 frida 命令 hook 网络请求
3. 用 Mobile MCP 触发操作
4. 收集 hook 结果
```

## 🎯 实际使用示例

### 示例 1: Hook Android 网络请求

**Frida 脚本 (hook-network.js):**

```javascript
Java.perform(function() {
  var OkHttpClient = Java.use("okhttp3.OkHttpClient");
  var Request = Java.use("okhttp3.Request");
  
  OkHttpClient.newCall.implementation = function(request) {
    console.log("\n[+] HTTP Request:");
    console.log("    URL: " + request.url().toString());
    console.log("    Method: " + request.method());
    
    var result = this.newCall(request);
    return result;
  };
  
  console.log("[*] OkHttp3 hook installed");
});
```

**使用:**
```bash
frida -U -n com.example.app -l hook-network.js
```

### 示例 2: Hook iOS 方法调用

**Frida 脚本 (hook-ios.js):**

```javascript
if (ObjC.available) {
  var NSURLSession = ObjC.classes.NSURLSession;
  
  Interceptor.attach(NSURLSession['- dataTaskWithRequest:'].implementation, {
    onEnter: function(args) {
      var request = new ObjC.Object(args[2]);
      console.log("\n[+] HTTP Request:");
      console.log("    URL: " + request.URL().absoluteString());
      console.log("    Method: " + request.HTTPMethod());
    }
  });
  
  console.log("[*] NSURLSession hook installed");
}
```

### 示例 3: 组合使用

**在 Cursor Agent 中:**

```
1. 使用 Mobile MCP 打开应用
2. 等待 5 秒让 Frida hook 生效
3. 使用 Mobile MCP 点击登录按钮
4. 查看 Frida 输出的网络请求信息
5. 使用捕获的数据进行下一步操作
```

## 📚 Frida Hook 常用场景

### 1. 网络请求拦截
- Hook OkHttp、Retrofit (Android)
- Hook NSURLSession (iOS)
- 修改请求/响应数据

### 2. 方法追踪
- 追踪特定类的所有方法调用
- 记录方法参数和返回值
- 性能分析

### 3. 绕过检测
- 绕过 SSL Pinning
- 绕过 Root/Jailbreak 检测
- 绕过反调试

### 4. 数据提取
- 提取加密密钥
- 提取用户凭证
- 提取应用内部数据

### 5. 行为修改
- 修改方法返回值
- 跳过特定逻辑
- 模拟特定场景

## 🔍 故障排查

### 问题 1: frida-server 无法启动

**解决方案:**
- 确保设备已 root (Android) 或越狱 (iOS)
- 检查 frida-server 版本与 frida-tools 版本匹配
- 使用 `adb shell ps | grep frida` 检查进程

### 问题 2: 无法附加到进程

**解决方案:**
- 确保应用正在运行
- 检查进程名称是否正确
- 尝试使用 PID 而不是进程名

### 问题 3: Hook 不生效

**解决方案:**
- 检查类名和方法名是否正确
- 使用 `Java.enumerateLoadedClasses()` 查看已加载的类
- 确认应用使用了目标库

## 🎉 总结

| 方案 | 难度 | 灵活性 | 推荐度 |
|------|------|--------|--------|
| 自定义 Frida MCP | 中等 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| Fork Mobile MCP | 较高 | ⭐⭐⭐⭐ | ⭐⭐⭐ |
| 同时运行两者 | 简单 | ⭐⭐⭐ | ⭐⭐⭐⭐ |

**推荐方案:** 创建自定义 Frida MCP 服务器，与 Mobile MCP 同时运行。这样既能使用 Mobile MCP 的 UI 自动化功能，又能通过 Frida MCP 实现 Hook 功能。

需要我帮你实现完整的 Frida MCP 服务器吗？
