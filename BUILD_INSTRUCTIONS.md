# 构建说明

## 快速开始

### 使用Android Studio

1. 打开Android Studio
2. 选择 "Open an existing project"
3. 选择 `VoiceChanger` 目录
4. 等待Gradle同步完成
5. 连接Android设备或启动模拟器
6. 点击 "Run" 按钮

### 使用命令行

```bash
# 进入项目目录
cd VoiceChanger

# 清理构建
./gradlew clean

# 构建Debug版本
./gradlew assembleDebug

# 安装到设备
adb install app/build/outputs/apk/debug/app-debug.apk
```

## 项目文件结构

```
VoiceChanger/
├── app/
│   ├── build.gradle              # 应用级Gradle配置
│   ├── proguard-rules.pro        # ProGuard混淆规则
│   └── src/main/
│       ├── AndroidManifest.xml   # 应用清单文件
│       ├── java/com/voicechanger/
│       │   ├── MainActivity.kt           # 主界面
│       │   ├── VoiceChangerService.kt    # 前台服务
│       │   ├── AudioProcessor.kt         # 音频处理核心
│       │   ├── PitchShifter.kt           # 变调处理器
│       │   ├── SoundTouchWrapper.kt      # SoundTouch封装
│       │   ├── AudioConfig.kt            # 音频配置
│       │   └── VoicePreset.kt             # 音效预设
│       └── res/
│           ├── layout/
│           │   └── activity_main.xml     # 主界面布局
│           ├── values/
│           │   ├── strings.xml           # 字符串资源
│           │   ├── colors.xml            # 颜色资源
│           │   └── themes.xml            # 主题资源
│           └── mipmap-*/                 # 应用图标
├── build.gradle                  # 项目级Gradle配置
├── settings.gradle               # Gradle设置
├── gradle.properties             # Gradle属性
└── README.md                     # 项目说明

```

## 依赖说明

项目使用以下主要依赖：

- **AndroidX Core KTX**: Android核心扩展
- **AndroidX AppCompat**: 兼容性支持
- **Material Components**: Material Design组件
- **Kotlin Coroutines**: 协程支持

## 编译要求

- **JDK**: 1.8 或更高版本
- **Android SDK**: API 21 (Android 5.0) 或更高
- **Gradle**: 8.1.2 或更高版本
- **Kotlin**: 1.9.20 或更高版本

## 常见问题

### 1. Gradle同步失败

**解决方案**：
- 检查网络连接
- 确保Gradle版本正确
- 尝试清理项目：`./gradlew clean`

### 2. 权限被拒绝

**解决方案**：
- 在设备设置中手动授予录音权限
- 确保AndroidManifest.xml中已声明权限

### 3. 服务无法启动

**解决方案**：
- 检查是否授予了录音权限
- 检查设备是否支持音频录制
- 查看Logcat日志排查问题

### 4. 变声效果不明显

**说明**：
- 当前实现使用重采样算法，音质可能不如专业变声库
- 可以尝试调整变调范围
- 未来版本将集成SoundTouch库提升音质

## 调试技巧

### 查看日志

```bash
# 查看所有日志
adb logcat

# 查看应用特定日志
adb logcat | grep -E "VoiceChanger|AudioProcessor|PitchShifter"
```

### 测试变声效果

1. 启动应用并授予权限
2. 选择音效预设或调整滑块
3. 启动变声服务
4. 使用其他录音应用测试效果
5. 注意：需要在录音应用中手动选择虚拟音频输入源

## 下一步开发

如需进一步开发，建议：

1. **集成SoundTouch JNI库**：提升变调音质
2. **添加更多音效**：回音、混响、机器人等
3. **优化延迟**：使用更小的缓冲区
4. **添加录音功能**：支持保存变声后的音频
5. **UI优化**：添加波形可视化、动画效果等

