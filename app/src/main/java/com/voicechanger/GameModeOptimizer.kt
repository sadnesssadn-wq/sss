package com.voicechanger

import android.content.Context
import android.media.AudioManager
import android.os.Process
import android.util.Log

/**
 * 游戏模式优化器
 * 专为王者荣耀等游戏场景设计，优化延迟和兼容性
 */
class GameModeOptimizer(private val context: Context) {
    
    private val audioManager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
    
    companion object {
        private const val TAG = "GameModeOptimizer"
        
        // 游戏模式配置
        const val GAME_SAMPLE_RATE = 44100      // 游戏标准采样率
        const val GAME_FRAME_SIZE = 512         // 超低延迟帧大小
        const val GAME_BUFFER_MULTIPLIER = 2    // 缓冲区倍数
    }
    
    /**
     * 启用游戏模式（超低延迟）
     */
    fun enableGameMode() {
        Log.d(TAG, "Enabling game mode...")
        
        // 1. 设置超低延迟音频配置
        enableLowLatencyMode()
        
        // 2. 优化线程优先级
        optimizeThreadPriority()
        
        // 3. 配置音频路由
        setupGameAudioRouting()
        
        Log.d(TAG, "Game mode enabled successfully")
    }
    
    /**
     * 禁用游戏模式（恢复标准配置）
     */
    fun disableGameMode() {
        Log.d(TAG, "Disabling game mode...")
        
        // 恢复标准配置
        AudioConfig.currentQuality = AudioConfig.QualityLevel.HIGH
        
        Log.d(TAG, "Game mode disabled")
    }
    
    /**
     * 启用超低延迟配置
     */
    private fun enableLowLatencyMode() {
        // 切换到低延迟音质级别
        AudioConfig.currentQuality = AudioConfig.QualityLevel.LOW
        
        Log.d(TAG, "Low latency mode enabled: frame=${GAME_FRAME_SIZE}, rate=${GAME_SAMPLE_RATE}")
    }
    
    /**
     * 优化线程优先级
     */
    private fun optimizeThreadPriority() {
        try {
            // 提升当前线程优先级到音频优先级
            Process.setThreadPriority(Process.THREAD_PRIORITY_URGENT_AUDIO)
            Log.d(TAG, "Thread priority optimized for audio processing")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to optimize thread priority", e)
        }
    }
    
    /**
     * 配置游戏音频路由
     */
    private fun setupGameAudioRouting() {
        try {
            // 设置音频模式为通信模式（游戏语音常用）
            audioManager.mode = AudioManager.MODE_IN_COMMUNICATION
            
            // 启用扬声器（如果需要）
            if (!audioManager.isSpeakerphoneOn) {
                // 游戏通常需要扬声器
                Log.d(TAG, "Audio routing configured for game mode")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to setup audio routing", e)
        }
    }
    
    /**
     * 检查设备是否支持低延迟音频
     */
    fun checkLowLatencySupport(): Boolean {
        return try {
            val pm = context.packageManager
            val hasLowLatency = pm.hasSystemFeature("android.hardware.audio.low_latency")
            Log.d(TAG, "Low latency support: $hasLowLatency")
            hasLowLatency
        } catch (e: Exception) {
            Log.e(TAG, "Failed to check low latency support", e)
            false
        }
    }
    
    /**
     * 获取推荐的缓冲区大小（游戏模式）
     */
    fun getRecommendedBufferSize(): Int {
        return GAME_FRAME_SIZE * AudioConfig.BYTES_PER_SAMPLE * GAME_BUFFER_MULTIPLIER
    }
    
    /**
     * 优化音频会话
     */
    fun optimizeAudioSession() {
        try {
            // 请求独占音频焦点
            val result = audioManager.requestAudioFocus(
                null,
                AudioManager.STREAM_VOICE_CALL,
                AudioManager.AUDIOFOCUS_GAIN
            )
            
            if (result == AudioManager.AUDIOFOCUS_REQUEST_GRANTED) {
                Log.d(TAG, "Audio focus granted")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to optimize audio session", e)
        }
    }
    
    /**
     * 获取当前延迟估计值（毫秒）
     */
    fun getEstimatedLatency(): Int {
        val frameSize = AudioConfig.getCurrentFrameSize()
        val sampleRate = AudioConfig.SAMPLE_RATE
        
        // 延迟 = (帧大小 / 采样率) * 1000 * 处理倍数
        val latencyMs = ((frameSize.toFloat() / sampleRate) * 1000 * 2).toInt()
        
        Log.d(TAG, "Estimated latency: ${latencyMs}ms")
        return latencyMs
    }
}

