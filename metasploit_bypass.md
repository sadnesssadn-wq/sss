# Metasploit绕过AV

## 🎯 问题
PowerShell payload被Windows Defender阻止

## 💡 解决方案

### 方案1: 使用编码器
- x64/xor编码器
- shikata_ga_nai编码器（多次迭代）
- 降低检测率

### 方案2: 使用DLL格式
- DLL可能检测率较低
- 可以通过rundll32执行

### 方案3: 直接使用exploit模块
- 通过RCE直接执行exploit
- 不需要先建立session
- 但需要处理字符串转义

## 🎯 执行中...
