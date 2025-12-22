cmake_minimum_required(VERSION 3.18.1)
project("voicechanger")

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# SoundTouch 源文件
set(SOUNDTOUCH_SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/soundtouch)

# SoundTouch 源文件列表
file(GLOB SOUNDTOUCH_SOURCES
    ${SOUNDTOUCH_SRC_DIR}/AAFilter.cpp
    ${SOUNDTOUCH_SRC_DIR}/FIFOSampleBuffer.cpp
    ${SOUNDTOUCH_SRC_DIR}/FIRFilter.cpp
    ${SOUNDTOUCH_SRC_DIR}/RateTransposer.cpp
    ${SOUNDTOUCH_SRC_DIR}/SoundTouch.cpp
    ${SOUNDTOUCH_SRC_DIR}/TDStretch.cpp
    ${SOUNDTOUCH_SRC_DIR}/BPMDetect.cpp
    ${SOUNDTOUCH_SRC_DIR}/PeakFinder.cpp
    ${SOUNDTOUCH_SRC_DIR}/InterpolateCubic.cpp
    ${SOUNDTOUCH_SRC_DIR}/InterpolateLinear.cpp
    ${SOUNDTOUCH_SRC_DIR}/InterpolateShannon.cpp
    ${SOUNDTOUCH_SRC_DIR}/cpu_detect_x86.cpp
    ${SOUNDTOUCH_SRC_DIR}/mmx_optimized.cpp
    ${SOUNDTOUCH_SRC_DIR}/sse_optimized.cpp
)

# 创建 SoundTouch 静态库
add_library(soundtouch STATIC ${SOUNDTOUCH_SOURCES})

# SoundTouch 编译选项
target_compile_definitions(soundtouch PRIVATE
    -DSOUNDTOUCH_PREVENT_CLICK_AT_RATE_CROSSOVER=1
    -DSOUNDTOUCH_INTEGER_SAMPLES
)

# 包含目录
target_include_directories(soundtouch PUBLIC ${SOUNDTOUCH_SRC_DIR})

# 创建 JNI 包装库
add_library(native-lib SHARED
    native-lib.cpp
)

# 链接库
target_link_libraries(native-lib
    soundtouch
    log
    android
)


