# 🚀 快速开始指南

## 3分钟上手

### 步骤1：编译 APK（2分钟）

```bash
cd /root/VoiceChanger

# 如果系统有 Android SDK
./gradlew assembleDebug

# APK 位置
app/build/outputs/apk/debug/app-debug.apk
```

### 步骤2：安装（30秒）

```bash
# USB 连接手机
adb install app/build/outputs/apk/debug/app-debug.apk

# 或者直接复制 APK 到手机安装
```

### 步骤3：使用（30秒）

1. 打开 APP → 授予录音权限
2. 点击 **🎀 甜美女声**
3. 点击 **▶ 开始变声**
4. 打开王者荣耀 → 开启语音 → 开始说话

✅ 完成！你已经可以用甜美的声音陪玩了！

## 常见问题

### Q1：没有 Android SDK 怎么办？

**A1：使用 Android Studio**
1. 下载：https://developer.android.com/studio
2. 打开项目：File → Open → 选择 VoiceChanger 文件夹
3. 点击 ▶️ Run 按钮

### Q2：队友听不到变声？

**A2：检查这些**
- ✅ APP 显示"● 变声中"
- ✅ 游戏内麦克风已开启
- ✅ 已授予录音权限
- 🔄 重启 APP 和游戏

### Q3：有延迟怎么办？

**A3：优化设置**
- ✅ 确保"游戏模式"已开启
- ✅ 使用有线耳机
- ✅ 关闭其他后台应用

## 音效选择建议

| 你的性别 | 推荐音效 | 效果 |
|---------|---------|------|
| 男生 | 🎀 甜美女声 | 最受欢迎 |
| 女生 | 💪 磁性男声 | 低沉有力 |
| 任意 | 👶 可爱萝莉 | 超萌 |

## 联系方式

- 遇到问题？查看 `GAME_VOICE_CHANGER_GUIDE.md`
- 技术细节？查看 `PROJECT_CHECKLIST.md`

