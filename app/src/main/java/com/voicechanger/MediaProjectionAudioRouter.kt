package com.voicechanger

import android.content.Context
import android.content.Intent
import android.media.AudioAttributes
import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioRecord
import android.media.AudioTrack
import android.media.projection.MediaProjection
import android.media.projection.MediaProjectionManager
import android.os.Build
import android.util.Log
import androidx.annotation.RequiresApi
import kotlinx.coroutines.*

/**
 * MediaProjection 音频路由器
 * 实现系统级音频重定向，让其他应用能使用变声后的音频
 * 
 * 工作原理：
 * 1. 请求 MediaProjection 权限（用户授权）
 * 2. 捕获麦克风音频
 * 3. 实时变声处理
 * 4. 输出到 COMMUNICATION 流（通话流）
 * 5. 其他应用通过系统音频路由获取变声音频
 */
@RequiresApi(Build.VERSION_CODES.Q)
class MediaProjectionAudioRouter(
    private val context: Context,
    private val audioManager: AudioManager,
    private val onError: ((Exception) -> Unit)? = null
) {
    private var mediaProjection: MediaProjection? = null
    private var audioRecord: AudioRecord? = null
    private var audioTrack: AudioTrack? = null
    private var audioProcessor: AdvancedPSOLA? = null
    
    private var isProcessing = false
    private var processingJob: Job? = null
    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    
    @Volatile private var currentPreset: ProfessionalVoicePreset = ProfessionalVoicePreset.ORIGINAL
    
    companion object {
        private const val TAG = "MediaProjectionRouter"
        const val REQUEST_CODE_MEDIA_PROJECTION = 1002
    }
    
    /**
     * 创建授权 Intent
     */
    fun createProjectionIntent(): Intent {
        val projectionManager = context.getSystemService(Context.MEDIA_PROJECTION_SERVICE) as MediaProjectionManager
        return projectionManager.createScreenCaptureIntent()
    }
    
    /**
     * 处理授权结果
     */
    fun onProjectionResult(resultCode: Int, data: Intent?) {
        if (resultCode == android.app.Activity.RESULT_OK && data != null) {
            val projectionManager = context.getSystemService(Context.MEDIA_PROJECTION_SERVICE) as MediaProjectionManager
            mediaProjection = projectionManager.getMediaProjection(resultCode, data)
            Log.i(TAG, "MediaProjection authorization granted")
        } else {
            Log.w(TAG, "MediaProjection authorization denied")
            onError?.invoke(SecurityException("MediaProjection permission denied"))
        }
    }
    
    /**
     * 启动音频路由
     */
    fun start(preset: ProfessionalVoicePreset) {
        if (isProcessing) {
            Log.w(TAG, "Audio routing already started")
            return
        }
        
        if (mediaProjection == null) {
            Log.e(TAG, "MediaProjection not initialized. Call createProjectionIntent() first.")
            onError?.invoke(IllegalStateException("MediaProjection not authorized"))
            return
        }
        
        try {
            currentPreset = preset
            initializeAudioRouting()
            isProcessing = true
            
            processingJob = scope.launch {
                processAndRouteAudio()
            }
            
            Log.i(TAG, "Audio routing started with preset: ${preset.displayName}")
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start audio routing", e)
            onError?.invoke(e)
            stop()
        }
    }
    
    /**
     * 停止音频路由
     */
    fun stop() {
        if (!isProcessing) return
        
        isProcessing = false
        processingJob?.cancel()
        processingJob = null
        
        releaseAudioResources()
        mediaProjection?.stop()
        mediaProjection = null
        
        Log.i(TAG, "Audio routing stopped")
    }
    
    /**
     * 更新声音预设
     */
    fun updatePreset(preset: ProfessionalVoicePreset) {
        currentPreset = preset
        audioProcessor?.applyPreset(preset)
        Log.i(TAG, "Preset updated to: ${preset.displayName}")
    }
    
    /**
     * 初始化音频路由
     */
    private fun initializeAudioRouting() {
        val sampleRate = AudioConfig.SAMPLE_RATE
        val bufferSize = AudioConfig.getRecommendedBufferSize()
        
        // 初始化音频处理器
        audioProcessor = AdvancedPSOLA(sampleRate, 1)
        audioProcessor?.applyPreset(currentPreset)
        
        // 初始化 AudioRecord（麦克风输入）
        audioRecord = AudioRecord(
            AudioConfig.AUDIO_SOURCE,
            sampleRate,
            AudioConfig.CHANNEL_CONFIG,
            AudioConfig.AUDIO_FORMAT,
            bufferSize
        )
        
        if (audioRecord?.state != AudioRecord.STATE_INITIALIZED) {
            throw IllegalStateException("AudioRecord initialization failed")
        }
        
        // 初始化 AudioTrack（输出到通话流）
        val trackBufferSize = AudioTrack.getMinBufferSize(
            sampleRate,
            AudioFormat.CHANNEL_OUT_MONO,
            AudioConfig.AUDIO_FORMAT
        ) * 2
        
        // 使用 COMMUNICATION 流类型（用于通话）
        val audioAttributes = AudioAttributes.Builder()
            .setUsage(AudioAttributes.USAGE_VOICE_COMMUNICATION)
            .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
            .build()
        
        val audioFormat = AudioFormat.Builder()
            .setSampleRate(sampleRate)
            .setEncoding(AudioConfig.AUDIO_FORMAT)
            .setChannelMask(AudioFormat.CHANNEL_OUT_MONO)
            .build()
        
        audioTrack = AudioTrack.Builder()
            .setAudioAttributes(audioAttributes)
            .setAudioFormat(audioFormat)
            .setBufferSizeInBytes(trackBufferSize)
            .setTransferMode(AudioTrack.MODE_STREAM)
            .build()
        
        if (audioTrack?.state != AudioTrack.STATE_INITIALIZED) {
            throw IllegalStateException("AudioTrack initialization failed")
        }
        
        // 配置音频管理器
        configureAudioManager()
        
        audioRecord?.startRecording()
        audioTrack?.play()
        
        Log.i(TAG, "Audio routing initialized - Sample rate: $sampleRate, Buffer: $bufferSize")
    }
    
    /**
     * 配置音频管理器（优化路由）
     */
    private fun configureAudioManager() {
        try {
            // 设置为通话模式
            audioManager.mode = AudioManager.MODE_IN_COMMUNICATION
            
            // 启用扬声器（如果需要）
            // audioManager.isSpeakerphoneOn = false
            
            Log.d(TAG, "AudioManager configured for communication mode")
        } catch (e: Exception) {
            Log.w(TAG, "Failed to configure AudioManager", e)
        }
    }
    
    /**
     * 音频处理和路由循环
     */
    private suspend fun processAndRouteAudio() = withContext(Dispatchers.IO) {
        val bufferSize = AudioConfig.FRAME_SIZE * AudioConfig.BYTES_PER_SAMPLE
        val buffer = ByteArray(bufferSize)
        
        var processedFrames = 0
        var totalLatency = 0L
        
        Log.d(TAG, "Audio routing loop started")
        
        while (isProcessing && scope.isActive) {
            try {
                val startTime = System.currentTimeMillis()
                
                // 从麦克风读取音频
                val bytesRead = audioRecord?.read(buffer, 0, buffer.size) ?: 0
                
                if (bytesRead > 0) {
                    // 变声处理
                    val processed = audioProcessor?.process(buffer, bytesRead) ?: buffer
                    
                    // 输出到通话流（其他应用可以捕获）
                    audioTrack?.write(processed, 0, processed.size)
                    
                    processedFrames++
                    
                    // 计算延迟
                    val latency = System.currentTimeMillis() - startTime
                    totalLatency += latency
                    
                    // 每 1000 帧输出统计
                    if (processedFrames % 1000 == 0) {
                        val avgLatency = totalLatency / processedFrames
                        Log.v(TAG, "Processed $processedFrames frames, Avg latency: ${avgLatency}ms, Preset: ${currentPreset.displayName}")
                        
                        // 重置统计
                        if (processedFrames >= 10000) {
                            processedFrames = 0
                            totalLatency = 0
                        }
                    }
                    
                } else if (bytesRead == AudioRecord.ERROR_INVALID_OPERATION) {
                    Log.e(TAG, "AudioRecord read error: INVALID_OPERATION")
                    break
                } else if (bytesRead == AudioRecord.ERROR_BAD_VALUE) {
                    Log.e(TAG, "AudioRecord read error: BAD_VALUE")
                    break
                }
                
            } catch (e: Exception) {
                Log.e(TAG, "Error in audio routing loop", e)
                onError?.invoke(e)
                break
            }
        }
        
        Log.i(TAG, "Audio routing loop ended. Total frames: $processedFrames")
    }
    
    /**
     * 释放音频资源
     */
    private fun releaseAudioResources() {
        try {
            audioRecord?.stop()
            audioRecord?.release()
            audioRecord = null
            
            audioTrack?.stop()
            audioTrack?.release()
            audioTrack = null
            
            audioProcessor = null
            
            // 恢复音频模式
            audioManager.mode = AudioManager.MODE_NORMAL
            
        } catch (e: Exception) {
            Log.e(TAG, "Error releasing audio resources", e)
        }
    }
    
    /**
     * 清理资源
     */
    fun release() {
        stop()
        scope.cancel()
    }
    
    /**
     * 检查是否正在运行
     */
    fun isRunning(): Boolean = isProcessing
    
    /**
     * 获取当前预设
     */
    fun getCurrentPreset(): ProfessionalVoicePreset = currentPreset
}

