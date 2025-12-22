package com.voicechanger

import android.media.AudioManager
import android.media.audiofx.AudioEffect
import android.media.audiofx.PresetReverb
import android.util.Log
import java.lang.reflect.Method

/**
 * 系统级音频效果管理器
 * 尝试通过 AudioEffect API 实现全局变声
 */
class AudioEffectManager {
    
    private var audioSessionId: Int = 0
    private var presetReverb: PresetReverb? = null
    
    companion object {
        private const val TAG = "AudioEffectManager"
        
        // 尝试获取系统音频会话 ID
        private const val AUDIO_SESSION_ID_GENERATE = 0
    }
    
    /**
     * 检查是否支持系统级音频效果
     */
    fun isSystemAudioEffectSupported(): Boolean {
        return try {
            // 检查是否有可用的音频效果
            val descriptors = AudioEffect.queryEffects()
            val hasPitchShift = descriptors.any { 
                it.type.toString().contains("pitch", ignoreCase = true) ||
                it.name.contains("pitch", ignoreCase = true)
            }
            
            Log.d(TAG, "Available audio effects: ${descriptors.size}")
            descriptors.forEach {
                Log.d(TAG, "Effect: ${it.name}, Type: ${it.type}")
            }
            
            hasPitchShift || descriptors.isNotEmpty()
        } catch (e: Exception) {
            Log.e(TAG, "Failed to query audio effects", e)
            false
        }
    }
    
    /**
     * 尝试应用系统级变调
     * 返回是否成功
     */
    fun applySystemPitchShift(pitchSemiTones: Float): Boolean {
        return try {
            // 方案1：尝试使用反射调用隐藏的系统 API
            tryReflectionMethod(pitchSemiTones)
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to apply system pitch shift", e)
            false
        }
    }
    
    /**
     * 使用反射尝试访问系统音频 API
     */
    private fun tryReflectionMethod(pitchSemiTones: Float): Boolean {
        return try {
            // 尝试获取 AudioSystem 类（系统内部类）
            val audioSystemClass = Class.forName("android.media.AudioSystem")
            
            // 尝试设置音频参数
            val setParametersMethod: Method = audioSystemClass.getMethod(
                "setParameters",
                String::class.java
            )
            
            // 构造变调参数（不同厂商格式可能不同）
            val pitchParam = "audio_pitch_shift=$pitchSemiTones"
            setParametersMethod.invoke(null, pitchParam)
            
            Log.i(TAG, "Successfully applied system pitch shift via reflection: $pitchSemiTones")
            true
            
        } catch (e: Exception) {
            Log.w(TAG, "Reflection method failed (expected on most devices)", e)
            false
        }
    }
    
    /**
     * 获取系统音频会话 ID
     */
    fun getSystemAudioSessionId(audioManager: AudioManager): Int {
        return try {
            // 尝试通过反射获取系统音频会话
            val generateSessionIdMethod = audioManager.javaClass.getMethod("generateAudioSessionId")
            generateSessionIdMethod.invoke(audioManager) as? Int ?: AUDIO_SESSION_ID_GENERATE
        } catch (e: Exception) {
            Log.w(TAG, "Could not generate audio session ID", e)
            AUDIO_SESSION_ID_GENERATE
        }
    }
    
    /**
     * 清理资源
     */
    fun release() {
        try {
            presetReverb?.release()
            presetReverb = null
        } catch (e: Exception) {
            Log.e(TAG, "Error releasing audio effects", e)
        }
    }
}

