# SoundTouch 集成说明

## 方案选择

### 方案 A：自动下载（推荐）

运行提供的脚本自动下载 SoundTouch 源码：

```bash
cd VoiceChanger
./download_soundtouch.sh
```

### 方案 B：手动下载

1. 访问 Sound Touch 官方仓库：https://gitlab.com/soundtouch/soundtouch
2. 下载最新版本（推荐 2.3.2）
3. 解压并复制源文件到 `app/src/main/cpp/soundtouch/`

需要的文件：
- `AAFilter.cpp/h`
- `FIFOSampleBuffer.cpp/h`
- `FIRFilter.cpp/h`
- `RateTransposer.cpp/h`
- `SoundTouch.cpp/h`
- `TDStretch.cpp/h`
- `BPMDetect.cpp/h`
- `PeakFinder.cpp/h`
- `InterpolateCubic.cpp/h`
- `InterpolateLinear.cpp/h`
- `InterpolateShannon.cpp/h`
- `STTypes.h`
- 其他头文件

### 方案 C：使用预编译库

如果不想编译，可以使用预编译的 .so 文件：

1. 从 https://github.com/suhaibroomy/android-soundtouch-ndk 下载预编译库
2. 将 .so 文件放到 `app/src/main/jniLibs/` 对应架构目录

## 验证安装

运行以下命令检查文件是否正确：

```bash
ls -la app/src/main/cpp/soundtouch/
```

应该看到所有的 .cpp 和 .h 文件。

## 编译

配置完成后，使用 Android Studio 或命令行编译：

```bash
./gradlew assembleDebug
```

## 故障排除

### 编译错误：找不到 SoundTouch.h

**解决方案**：确保所有源文件都在 `app/src/main/cpp/soundtouch/` 目录

### 链接错误

**解决方案**：检查 CMakeLists.txt 中的文件列表是否完整

### NDK 版本问题

**解决方案**：在 Android Studio 中安装推荐的 NDK 版本（25.x）


