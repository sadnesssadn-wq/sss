#include <jni.h>
#include <string>
#include <android/log.h>
#include "soundtouch/SoundTouch.h"

#define LOG_TAG "SoundTouchJNI"
#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

using namespace soundtouch;

extern "C" {

/**
 * 创建 SoundTouch 实例
 */
JNIEXPORT jlong JNICALL
Java_com_voicechanger_SoundTouchNative_createInstance(JNIEnv *env, jobject thiz) {
    SoundTouch *soundTouch = new SoundTouch();
    LOGD("SoundTouch instance created: %p", soundTouch);
    return reinterpret_cast<jlong>(soundTouch);
}

/**
 * 删除 SoundTouch 实例
 */
JNIEXPORT void JNICALL
Java_com_voicechanger_SoundTouchNative_deleteInstance(JNIEnv *env, jobject thiz, jlong handle) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        delete soundTouch;
        LOGD("SoundTouch instance deleted: %p", soundTouch);
    }
}

/**
 * 设置采样率
 */
JNIEXPORT void JNICALL
Java_com_voicechanger_SoundTouchNative_setSampleRate(JNIEnv *env, jobject thiz, jlong handle,
                                                       jint sampleRate) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        soundTouch->setSampleRate(static_cast<uint>(sampleRate));
        LOGD("Sample rate set to: %d", sampleRate);
    }
}

/**
 * 设置声道数
 */
JNIEXPORT void JNICALL
Java_com_voicechanger_SoundTouchNative_setChannels(JNIEnv *env, jobject thiz, jlong handle,
                                                     jint channels) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        soundTouch->setChannels(static_cast<uint>(channels));
        LOGD("Channels set to: %d", channels);
    }
}

/**
 * 设置变调（半音）
 */
JNIEXPORT void JNICALL
Java_com_voicechanger_SoundTouchNative_setPitchSemiTones(JNIEnv *env, jobject thiz, jlong handle,
                                                           jfloat pitch) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        soundTouch->setPitchSemiTones(pitch);
        LOGD("Pitch set to: %.2f semitones", pitch);
    }
}

/**
 * 设置变速（百分比）
 */
JNIEXPORT void JNICALL
Java_com_voicechanger_SoundTouchNative_setTempo(JNIEnv *env, jobject thiz, jlong handle,
                                                  jfloat tempo) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        soundTouch->setTempoChange(tempo);
        LOGD("Tempo change set to: %.2f%%", tempo);
    }
}

/**
 * 设置采样率变化（百分比）
 */
JNIEXPORT void JNICALL
Java_com_voicechanger_SoundTouchNative_setRate(JNIEnv *env, jobject thiz, jlong handle,
                                                 jfloat rate) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        soundTouch->setRateChange(rate);
        LOGD("Rate change set to: %.2f%%", rate);
    }
}

/**
 * 输入音频样本
 */
JNIEXPORT void JNICALL
Java_com_voicechanger_SoundTouchNative_putSamples(JNIEnv *env, jobject thiz, jlong handle,
                                                    jshortArray samples, jint numSamples) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        jshort *sampleBuffer = env->GetShortArrayElements(samples, nullptr);
        soundTouch->putSamples(reinterpret_cast<const SAMPLETYPE *>(sampleBuffer),
                               static_cast<uint>(numSamples));
        env->ReleaseShortArrayElements(samples, sampleBuffer, JNI_ABORT);
    }
}

/**
 * 接收处理后的音频样本
 */
JNIEXPORT jint JNICALL
Java_com_voicechanger_SoundTouchNative_receiveSamples(JNIEnv *env, jobject thiz, jlong handle,
                                                        jshortArray output, jint maxSamples) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        jshort *outputBuffer = env->GetShortArrayElements(output, nullptr);
        uint numSamples = soundTouch->receiveSamples(
                reinterpret_cast<SAMPLETYPE *>(outputBuffer),
                static_cast<uint>(maxSamples));
        env->ReleaseShortArrayElements(output, outputBuffer, 0);
        return static_cast<jint>(numSamples);
    }
    return 0;
}

/**
 * 获取未处理的样本数
 */
JNIEXPORT jint JNICALL
Java_com_voicechanger_SoundTouchNative_numUnprocessedSamples(JNIEnv *env, jobject thiz,
                                                               jlong handle) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        return static_cast<jint>(soundTouch->numUnprocessedSamples());
    }
    return 0;
}

/**
 * 获取可用的样本数
 */
JNIEXPORT jint JNICALL
Java_com_voicechanger_SoundTouchNative_numSamples(JNIEnv *env, jobject thiz, jlong handle) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        return static_cast<jint>(soundTouch->numSamples());
    }
    return 0;
}

/**
 * 清空缓冲区
 */
JNIEXPORT void JNICALL
Java_com_voicechanger_SoundTouchNative_clear(JNIEnv *env, jobject thiz, jlong handle) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        soundTouch->clear();
        LOGD("SoundTouch buffer cleared");
    }
}

/**
 * 刷新处理管道
 */
JNIEXPORT void JNICALL
Java_com_voicechanger_SoundTouchNative_flush(JNIEnv *env, jobject thiz, jlong handle) {
    SoundTouch *soundTouch = reinterpret_cast<SoundTouch *>(handle);
    if (soundTouch) {
        soundTouch->flush();
        LOGD("SoundTouch pipeline flushed");
    }
}

} // extern "C"

