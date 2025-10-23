#!/usr/bin/env node
/**
 * Frida MCP Server - 示例
 * 这是一个自定义 MCP 服务器，用于集成 Frida Hook 功能
 */

import { McpServer } from "@modelcontextprotocol/sdk/server/mcp.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import { z } from "zod";
import { execSync } from "child_process";

// 创建 MCP 服务器
const server = new McpServer({
  name: "frida-mcp",
  version: "1.0.0",
  capabilities: {
    tools: {},
  },
});

// 工具 1: 列出正在运行的进程
server.tool(
  "frida_list_processes",
  "列出设备上正在运行的进程",
  {
    device: z.string().optional().describe("设备 ID，留空则使用 USB 设备"),
  },
  async ({ device }) => {
    try {
      const cmd = device
        ? `frida-ps -D ${device}`
        : `frida-ps -U`; // -U 表示 USB 设备
      
      const output = execSync(cmd, { encoding: "utf8" });
      
      return {
        content: [{ type: "text", text: `进程列表：\n${output}` }],
      };
    } catch (error: any) {
      return {
        content: [{ type: "text", text: `错误: ${error.message}` }],
        isError: true,
      };
    }
  }
);

// 工具 2: Hook 函数
server.tool(
  "frida_hook_function",
  "Hook 指定应用中的函数",
  {
    device: z.string().optional().describe("设备 ID"),
    target: z.string().describe("目标应用名称或进程 ID"),
    script: z.string().describe("Frida JavaScript 脚本"),
  },
  async ({ device, target, script }) => {
    try {
      // 创建临时脚本文件
      const fs = require("fs");
      const path = require("path");
      const tmpScript = path.join("/tmp", `frida_script_${Date.now()}.js`);
      fs.writeFileSync(tmpScript, script);

      const deviceArg = device ? `-D ${device}` : `-U`;
      const cmd = `frida ${deviceArg} -n "${target}" -l ${tmpScript} --no-pause`;
      
      const output = execSync(cmd, { 
        encoding: "utf8",
        timeout: 10000, // 10秒超时
      });
      
      // 清理临时文件
      fs.unlinkSync(tmpScript);
      
      return {
        content: [{ type: "text", text: `Hook 执行结果：\n${output}` }],
      };
    } catch (error: any) {
      return {
        content: [{ type: "text", text: `错误: ${error.message}` }],
        isError: true,
      };
    }
  }
);

// 工具 3: 追踪函数调用
server.tool(
  "frida_trace",
  "追踪应用中的函数调用",
  {
    device: z.string().optional().describe("设备 ID"),
    target: z.string().describe("目标应用名称"),
    pattern: z.string().describe("要追踪的函数模式，例如: '*!open*'"),
  },
  async ({ device, target, pattern }) => {
    try {
      const deviceArg = device ? `-D ${device}` : `-U`;
      const cmd = `frida-trace ${deviceArg} -n "${target}" -i "${pattern}"`;
      
      const output = execSync(cmd, { 
        encoding: "utf8",
        timeout: 10000,
      });
      
      return {
        content: [{ type: "text", text: `追踪结果：\n${output}` }],
      };
    } catch (error: any) {
      return {
        content: [{ type: "text", text: `错误: ${error.message}` }],
        isError: true,
      };
    }
  }
);

// 工具 4: 注入脚本到运行中的应用
server.tool(
  "frida_inject_script",
  "向运行中的应用注入 Frida 脚本",
  {
    device: z.string().optional().describe("设备 ID"),
    packageName: z.string().describe("应用包名（Android）或 Bundle ID（iOS）"),
    scriptCode: z.string().describe("要注入的 JavaScript 代码"),
  },
  async ({ device, packageName, scriptCode }) => {
    try {
      // 这里可以使用 frida-node 来实现更复杂的注入
      const fridaScript = `
Java.perform(function() {
  ${scriptCode}
});
      `;
      
      const fs = require("fs");
      const path = require("path");
      const tmpScript = path.join("/tmp", `inject_${Date.now()}.js`);
      fs.writeFileSync(tmpScript, fridaScript);

      const deviceArg = device ? `-D ${device}` : `-U`;
      const cmd = `frida ${deviceArg} -n "${packageName}" -l ${tmpScript} --no-pause`;
      
      const output = execSync(cmd, { 
        encoding: "utf8",
        timeout: 10000,
      });
      
      fs.unlinkSync(tmpScript);
      
      return {
        content: [{ type: "text", text: `脚本注入成功：\n${output}` }],
      };
    } catch (error: any) {
      return {
        content: [{ type: "text", text: `错误: ${error.message}` }],
        isError: true,
      };
    }
  }
);

// 工具 5: Hook 网络请求
server.tool(
  "frida_hook_network",
  "Hook 应用的网络请求",
  {
    device: z.string().optional().describe("设备 ID"),
    packageName: z.string().describe("应用包名"),
  },
  async ({ device, packageName }) => {
    try {
      const networkHookScript = `
Java.perform(function() {
  // Hook OkHttp3
  var OkHttpClient = Java.use("okhttp3.OkHttpClient");
  var Request = Java.use("okhttp3.Request");
  
  OkHttpClient.newCall.implementation = function(request) {
    console.log("\\n[+] HTTP Request:");
    console.log("    URL: " + request.url().toString());
    console.log("    Method: " + request.method());
    console.log("    Headers: " + request.headers().toString());
    
    var result = this.newCall(request);
    return result;
  };
  
  console.log("[*] Network hook installed");
});
      `;
      
      const fs = require("fs");
      const path = require("path");
      const tmpScript = path.join("/tmp", `network_hook_${Date.now()}.js`);
      fs.writeFileSync(tmpScript, networkHookScript);

      const deviceArg = device ? `-D ${device}` : `-U`;
      const cmd = `frida ${deviceArg} -n "${packageName}" -l ${tmpScript} --no-pause`;
      
      const output = execSync(cmd, { 
        encoding: "utf8",
        timeout: 10000,
      });
      
      fs.unlinkSync(tmpScript);
      
      return {
        content: [{ type: "text", text: `网络 Hook 已安装：\n${output}` }],
      };
    } catch (error: any) {
      return {
        content: [{ type: "text", text: `错误: ${error.message}` }],
        isError: true,
      };
    }
  }
);

// 启动服务器
async function main() {
  const transport = new StdioServerTransport();
  await server.connect(transport);
  console.error("Frida MCP Server running on stdio");
}

main().catch(console.error);
