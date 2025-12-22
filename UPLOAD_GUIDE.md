# 🚀 一键上传 GitHub 并自动编译

## 超简单！3分钟搞定

### 方法1：使用自动脚本（最简单）⭐

```bash
cd /root/VoiceChanger
./upload_to_github.sh
```

脚本会引导你：
1. 输入 GitHub 仓库地址
2. 自动上传所有文件
3. 触发自动编译

### 方法2：手动命令

```bash
cd /root/VoiceChanger

# 1. 初始化
git init
git add .
git commit -m "Initial commit"

# 2. 连接GitHub（替换成你的仓库地址）
git remote add origin https://github.com/你的用户名/VoiceChanger.git

# 3. 推送
git branch -M main
git push -u origin main
```

## 📋 完整流程（图文详解）

### 第1步：创建 GitHub 仓库

1. 访问 https://github.com
2. 点击右上角 **+** → **New repository**
3. 填写：
   ```
   Repository name: VoiceChanger
   Description: 王者荣耀陪玩变声器
   选择：Public（公开）
   不要勾选：Initialize with README
   ```
4. 点击 **Create repository**
5. 复制仓库地址（形如：https://github.com/用户名/VoiceChanger.git）

### 第2步：上传代码

**选项A：使用脚本（推荐）**
```bash
cd /root/VoiceChanger
./upload_to_github.sh
# 按提示输入仓库地址
```

**选项B：手动命令**
```bash
cd /root/VoiceChanger
git init
git add .
git commit -m "Initial commit: 变声器项目"
git remote add origin https://github.com/你的用户名/VoiceChanger.git
git push -u origin main
```

### 第3步：等待自动编译

上传后，GitHub Actions 会**自动开始编译**：

```
1. 访问仓库页面
2. 点击【Actions】标签
3. 看到 "Build Android APK" 正在运行 🟡
4. 等待3-5分钟
5. 变成绿色 ✅ 表示成功
```

### 第4步：下载 APK

**方法A：从 Actions 下载**
```
Actions → 点击最新构建 → Artifacts → 下载 app-debug.zip
```

**方法B：从 Releases 下载（推荐）**
```
仓库主页 → Releases → 点击最新版本 → 下载 APK
```

### 第5步：安装使用

```bash
# 传到手机
adb install app-debug.apk

# 或者用微信/QQ传输，手机上点击安装
```

## ⚡ 自动编译说明

### 触发条件
- ✅ 每次推送代码到 main 分支
- ✅ 创建 Pull Request
- ✅ 手动触发（Actions 页面）

### 编译内容
- 📱 Debug APK（调试版，8-12 MB）
- 📱 Release APK（发布版，6-10 MB）
- 📦 自动创建 Release（带版本号）

### 编译时间
- 首次：5-8 分钟（下载依赖）
- 后续：3-5 分钟（有缓存）

## 📊 文件说明

项目已包含这些配置文件：

```
✅ .github/workflows/build-apk.yml  # GitHub Actions配置
✅ .gitignore                       # Git忽略文件
✅ upload_to_github.sh              # 一键上传脚本
✅ GITHUB_DEPLOY.md                 # 详细部署文档
```

## 🎯 完整命令总结

### 首次上传
```bash
cd /root/VoiceChanger
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/你的用户名/VoiceChanger.git
git push -u origin main
```

### 后续更新
```bash
cd /root/VoiceChanger
git add .
git commit -m "更新说明"
git push
```

## ❓ 常见问题

### Q1：没有 GitHub 账号？
**A：** 访问 https://github.com 免费注册

### Q2：推送被拒绝？
**A：** 
```bash
# 如果是私有仓库，需要配置Personal Access Token
git remote set-url origin https://TOKEN@github.com/用户名/VoiceChanger.git
```

### Q3：编译失败？
**A：** 
- 查看 Actions 日志
- 检查 `app/build.gradle` 配置
- 重新触发工作流

### Q4：如何手动触发编译？
**A：**
```
Actions → Build Android APK → Run workflow → 选择分支 → Run
```

### Q5：如何查看编译日志？
**A：**
```
Actions → 点击构建 → 点击具体步骤 → 查看详细日志
```

## 🎉 完成！

现在你的变声器项目已经在 GitHub 上了，并且配置了自动编译！

**下次更新代码，只需要：**
```bash
git add .
git commit -m "更新功能"
git push
```

GitHub 会自动编译新版本的 APK！🚀


