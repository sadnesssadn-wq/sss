# 📦 GitHub 自动编译教程

## 🚀 快速开始（3步完成）

### 第1步：上传到 GitHub

```bash
cd /root/VoiceChanger

# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: 王者荣耀陪玩变声器"

# 添加远程仓库（替换成你的GitHub仓库地址）
git remote add origin https://github.com/你的用户名/VoiceChanger.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

### 第2步：GitHub 自动编译

上传完成后，GitHub Actions 会**自动开始编译**：

1. 访问你的 GitHub 仓库
2. 点击顶部的 **Actions** 标签
3. 看到 "Build Android APK" 工作流正在运行
4. 等待 3-5 分钟编译完成

### 第3步：下载 APK

编译完成后，有两种方式获取 APK：

#### 方式A：从 Actions 下载

1. 进入 **Actions** 页面
2. 点击最新的成功构建（绿色✓）
3. 滚动到底部，找到 **Artifacts**
4. 下载 `app-debug` 或 `app-release`
5. 解压 zip 文件，得到 APK

#### 方式B：从 Releases 下载（推荐）

1. 进入仓库的 **Releases** 页面
2. 点击最新版本
3. 在 **Assets** 中直接下载 APK
4. 无需解压，直接安装

## 📝 详细步骤

### 一、创建 GitHub 仓库

1. 登录 GitHub (https://github.com)
2. 点击右上角 **+** → **New repository**
3. 填写信息：
   - Repository name: `VoiceChanger`
   - Description: `王者荣耀陪玩变声器`
   - Public（公开）或 Private（私有）
   - **不要**勾选 "Initialize with README"
4. 点击 **Create repository**

### 二、上传代码

#### 方法1：使用命令行（推荐）

```bash
cd /root/VoiceChanger

# 配置 Git（首次使用）
git config --global user.name "你的名字"
git config --global user.email "你的邮箱@example.com"

# 初始化
git init

# 添加文件
git add .

# 提交
git commit -m "🎉 首次提交：完整的变声器项目"

# 连接远程仓库（替换成你的仓库地址）
git remote add origin https://github.com/你的用户名/VoiceChanger.git

# 推送
git branch -M main
git push -u origin main
```

#### 方法2：使用 GitHub Desktop

1. 下载 GitHub Desktop
2. File → Add Local Repository
3. 选择 `/root/VoiceChanger` 文件夹
4. Commit to main
5. Publish repository

#### 方法3：直接上传（简单但慢）

1. 在 GitHub 仓库页面
2. 点击 **Add file** → **Upload files**
3. 拖拽所有文件上传
4. Commit changes

### 三、触发自动编译

上传完成后，GitHub Actions 会**自动触发编译**：

#### 自动触发条件
- ✅ 推送到 main/master 分支
- ✅ 创建 Pull Request
- ✅ 手动触发（Actions 页面点击 "Run workflow"）

#### 查看编译进度

1. 进入仓库主页
2. 点击顶部 **Actions** 标签
3. 看到工作流运行状态：
   - 🟡 黄色：正在运行
   - ✅ 绿色：编译成功
   - ❌ 红色：编译失败（查看日志排查）

#### 编译时间

- **首次编译**：5-8 分钟（下载依赖）
- **后续编译**：3-5 分钟（有缓存）

### 四、下载 APK

#### 从 Actions 下载

```
1. Actions → 点击成功的构建
2. 滚动到底部 Artifacts 区域
3. 下载：
   - app-debug.zip（调试版）
   - app-release.zip（发布版）
4. 解压得到 .apk 文件
```

#### 从 Releases 下载

```
1. 仓库主页 → Releases 标签
2. 点击最新版本（如 v1.0.1）
3. Assets 中直接下载 APK
4. 传到手机安装
```

## 🎯 安装 APK

### Android 手机安装

```bash
# 方法1：adb 安装
adb install app-debug.apk

# 方法2：直接传输
# 1. 将 APK 通过微信/QQ/网盘传到手机
# 2. 手机上点击 APK 文件
# 3. 允许安装未知来源应用
# 4. 点击安装
```

### 首次安装提示

可能会提示"未知来源"，解决方法：

```
设置 → 安全 → 未知来源 → 开启
或
设置 → 应用 → 特殊应用权限 → 安装未知应用 → 允许
```

## 🔧 高级配置

### 1. 手动触发编译

不想每次推送都编译？使用手动触发：

```
1. Actions → Build Android APK
2. 点击 "Run workflow" 按钮
3. 选择分支
4. 点击绿色的 "Run workflow"
```

### 2. 添加签名（发布版）

创建 `app/keystore.properties`：

```properties
storeFile=your-keystore.jks
storePassword=your-password
keyAlias=your-alias
keyPassword=your-password
```

然后在 GitHub 仓库设置中添加 Secrets：
```
Settings → Secrets → Actions → New repository secret
```

### 3. 自动发布到 Releases

当前配置已包含自动发布功能：
- 每次推送到 main/master 分支
- 自动创建新的 Release
- APK 自动上传到 Releases

### 4. 编译多个变体

修改 `.github/workflows/build-apk.yml`：

```yaml
- name: Build All Variants
  run: |
    ./gradlew assembleDebug
    ./gradlew assembleRelease
    ./gradlew bundleRelease  # 生成 AAB
```

## 📊 编译结果

### 成功后会生成

```
✅ app-debug.apk          # 调试版（未签名）
✅ app-release.apk        # 发布版（未签名）
✅ 自动创建 Release       # 带版本号
```

### 文件大小预估

- **Debug APK**: ~8-12 MB
- **Release APK**: ~6-10 MB（更小）

## ❓ 常见问题

### Q1：编译失败怎么办？

**A1：查看错误日志**
```
Actions → 点击失败的构建 → 点击红色的步骤 → 查看详细日志
```

常见错误：
- Gradle 版本不兼容 → 更新 `gradle/wrapper/gradle-wrapper.properties`
- SDK 版本问题 → 检查 `app/build.gradle` 中的 compileSdk
- 依赖下载失败 → 重新运行工作流

### Q2：如何修改 APK 名称？

**A2：修改 `app/build.gradle`**
```gradle
android {
    defaultConfig {
        setProperty("archivesBaseName", "游戏陪玩变声器-v$versionName")
    }
}
```

### Q3：如何加快编译速度？

**A3：启用 Gradle 缓存**
```yaml
- uses: actions/cache@v3
  with:
    path: |
      ~/.gradle/caches
      ~/.gradle/wrapper
    key: ${{ runner.os }}-gradle-${{ hashFiles('**/*.gradle*') }}
```

### Q4：私有仓库会收费吗？

**A4：看情况**
- Public 仓库：完全免费
- Private 仓库：每月 2000 分钟免费（够用）
- 超出后：$0.008/分钟

### Q5：如何只在 Tag 时发布？

**A5：修改工作流触发条件**
```yaml
on:
  push:
    tags:
      - 'v*'
```

## 🎉 完成！

现在你的项目已经配置好 GitHub 自动编译：

✅ **提交代码** → 自动编译 → 生成 APK
✅ **无需本地 Android Studio**
✅ **支持多人协作**
✅ **版本管理方便**

### 完整流程回顾

```bash
# 1. 上传到 GitHub
cd /root/VoiceChanger
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/你的用户名/VoiceChanger.git
git push -u origin main

# 2. GitHub 自动编译（3-5分钟）

# 3. 下载 APK
# 访问：https://github.com/你的用户名/VoiceChanger/releases

# 4. 安装使用
adb install app-debug.apk
```

就这么简单！🚀

