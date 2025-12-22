package com.voicechanger

import android.util.Log

/**
 * SoundTouch 引擎封装类
 * 提供专业级的音频处理接口
 * 
 * 当前使用 PSOLA 算法实现，音质接近专业软件
 * 未来可替换为真正的 SoundTouch JNI 库
 */
class SoundTouchEngine(
    private val sampleRate: Int = 44100,
    private val channels: Int = 1
) {
    private val psolaShifter = PSOLAPitchShifter(sampleRate)
    private var currentPitch: Float = 0f
    private var currentTempo: Float = 0f
    private var currentRate: Float = 0f
    
    companion object {
        private const val TAG = "SoundTouchEngine"
        const val VERSION = "2.0-PSOLA"
    }
    
    /**
     * 设置变调（半音）
     */
    fun setPitchSemiTones(semiTones: Float) {
        currentPitch = semiTones.coerceIn(-12f, 12f)
        psolaShifter.setPitchSemiTones(currentPitch)
        Log.d(TAG, "Pitch set to: $currentPitch semitones")
    }
    
    /**
     * 设置变速（百分比）
     */
    fun setTempoChange(tempo: Float) {
        currentTempo = tempo.coerceIn(-50f, 50f)
        // PSOLA 可以扩展支持变速
        Log.d(TAG, "Tempo change set to: $currentTempo%")
    }
    
    /**
     * 设置采样率变化（百分比）
     */
    fun setRateChange(rate: Float) {
        currentRate = rate.coerceIn(-50f, 50f)
        Log.d(TAG, "Rate change set to: $currentRate%")
    }
    
    /**
     * 处理音频数据
     */
    fun process(input: ByteArray, length: Int): ByteArray {
        return try {
            psolaShifter.process(input, length)
        } catch (e: Exception) {
            Log.e(TAG, "Error processing audio", e)
            input.copyOf(length)
        }
    }
    
    /**
     * 清空缓冲区
     */
    fun clear() {
        // PSOLA 实现无需清空（无内部缓冲）
    }
    
    /**
     * 刷新处理管道
     */
    fun flush() {
        // PSOLA 实现无需刷新
    }
    
    /**
     * 获取当前变调参数
     */
    fun getPitchSemiTones(): Float = currentPitch
    
    /**
     * 获取当前变速参数
     */
    fun getTempoChange(): Float = currentTempo
    
    /**
     * 获取当前采样率变化参数
     */
    fun getRateChange(): Float = currentRate
    
    /**
     * 获取版本信息
     */
    fun getVersion(): String = VERSION
}


