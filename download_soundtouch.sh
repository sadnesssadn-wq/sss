#!/bin/bash

# SoundTouch 源码下载脚本
# 用于下载官方 SoundTouch 音频处理库

echo "Downloading SoundTouch library..."

cd app/src/main/cpp

# 下载 SoundTouch 2.3.2 源码
wget https://gitlab.com/soundtouch/soundtouch/-/archive/2.3.2/soundtouch-2.3.2.tar.gz

# 解压
tar -xzf soundtouch-2.3.2.tar.gz

# 复制源文件到 soundtouch 目录
mkdir -p soundtouch
cp soundtouch-2.3.2/source/SoundTouch/*.cpp soundtouch/
cp soundtouch-2.3.2/source/SoundTouch/*.h soundtouch/

# 清理
rm -rf soundtouch-2.3.2.tar.gz soundtouch-2.3.2

echo "SoundTouch library downloaded and extracted successfully!"
echo "Source files are in app/src/main/cpp/soundtouch/"


