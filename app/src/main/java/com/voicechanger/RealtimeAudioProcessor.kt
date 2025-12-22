package com.voicechanger

import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioRecord
import android.media.AudioTrack
import android.util.Log
import kotlinx.coroutines.*

/**
 * 实时音频处理器 - 支持实时预览和监听
 * 用户可以通过耳机听到变声效果
 */
class RealtimeAudioProcessor(
    private var pitchShift: Float = 0f,
    private val previewMode: Boolean = true, // true: 预览模式（听到自己），false: 录制模式
    private val onError: ((Exception) -> Unit)? = null
) {
    private var audioRecord: AudioRecord? = null
    private var audioTrack: AudioTrack? = null
    private var isProcessing = false
    private var processingJob: Job? = null
    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    @Volatile private var currentPitchShift: Float = pitchShift
    @Volatile private var monitorVolume: Float = 1.0f // 监听音量
    @Volatile private var currentPreset: ProfessionalVoicePreset? = null
    private var advancedPSOLA: AdvancedPSOLA? = null
    
    companion object {
        private const val TAG = "RealtimeAudioProcessor"
    }
    
    /**
     * 启动音频处理
     */
    fun start() {
        if (isProcessing) {
            Log.w(TAG, "Audio processing already started")
            return
        }
        
        try {
            initializeAudio()
            isProcessing = true
            processingJob = scope.launch {
                processAudio()
            }
            Log.d(TAG, "Realtime audio processing started (preview mode: $previewMode)")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start audio processing", e)
            onError?.invoke(e)
            stop()
        }
    }
    
    /**
     * 停止音频处理
     */
    fun stop() {
        if (!isProcessing) return
        
        isProcessing = false
        processingJob?.cancel()
        processingJob = null
        
        releaseAudio()
        Log.d(TAG, "Realtime audio processing stopped")
    }
    
    /**
     * 更新变调参数
     */
    fun updatePitchShift(semiTones: Float) {
        currentPitchShift = semiTones.coerceIn(-12f, 12f)
        advancedPSOLA?.setPitchSemiTones(currentPitchShift)
        Log.d(TAG, "Pitch shift updated to: $currentPitchShift")
    }
    
    /**
     * 应用专业声音预设
     */
    fun applyPreset(preset: ProfessionalVoicePreset) {
        currentPreset = preset
        advancedPSOLA?.applyPreset(preset)
        Log.i(TAG, "Applied preset: ${preset.displayName}")
    }
    
    /**
     * 设置监听音量 (0.0 - 1.0)
     */
    fun setMonitorVolume(volume: Float) {
        monitorVolume = volume.coerceIn(0f, 1f)
    }
    
    /**
     * 初始化音频设备
     */
    private fun initializeAudio() {
        val bufferSize = AudioConfig.getRecommendedBufferSize()
        
        // 初始化AudioRecord（麦克风）
        audioRecord = AudioRecord(
            AudioConfig.AUDIO_SOURCE,
            AudioConfig.SAMPLE_RATE,
            AudioConfig.CHANNEL_CONFIG,
            AudioConfig.AUDIO_FORMAT,
            bufferSize
        )
        
        if (audioRecord?.state != AudioRecord.STATE_INITIALIZED) {
            throw IllegalStateException("AudioRecord initialization failed")
        }
        
        // 初始化AudioTrack（输出到耳机/扬声器）
        val trackBufferSize = AudioTrack.getMinBufferSize(
            AudioConfig.SAMPLE_RATE,
            AudioFormat.CHANNEL_OUT_MONO,
            AudioConfig.AUDIO_FORMAT
        ) * 2
        
        // 根据模式选择不同的流类型
        val streamType = if (previewMode) {
            // 预览模式：输出到音乐流（耳机/扬声器）
            AudioManager.STREAM_MUSIC
        } else {
            // 录制模式：输出到通话流（尝试被其他应用捕获）
            AudioManager.STREAM_VOICE_CALL
        }
        
        audioTrack = AudioTrack(
            streamType,
            AudioConfig.SAMPLE_RATE,
            AudioFormat.CHANNEL_OUT_MONO,
            AudioConfig.AUDIO_FORMAT,
            trackBufferSize,
            AudioTrack.MODE_STREAM
        )
        
        if (audioTrack?.state != AudioTrack.STATE_INITIALIZED) {
            throw IllegalStateException("AudioTrack initialization failed")
        }
        
        audioRecord?.startRecording()
        audioTrack?.play()
        
        Log.i(TAG, "Audio initialized - Mode: ${if (previewMode) "PREVIEW" else "RECORD"}, Stream: $streamType")
    }
    
    /**
     * 音频处理循环
     */
    private suspend fun processAudio() = withContext(Dispatchers.IO) {
        val bufferSize = AudioConfig.FRAME_SIZE * AudioConfig.BYTES_PER_SAMPLE
        val buffer = ByteArray(bufferSize)
        
        // 使用高级 PSOLA 引擎（支持共振峰、气声等专业参数）
        val advancedPSOLA = AdvancedPSOLA(
            sampleRate = AudioConfig.SAMPLE_RATE,
            channels = 1
        )
        advancedPSOLA.setPitchSemiTones(currentPitchShift)
        
        Log.d(TAG, "Audio processing started with ${advancedPSOLA.getVersion()}")
        
        var processedFrames = 0
        
        while (isProcessing && scope.isActive) {
            try {
                // 从麦克风读取音频数据
                val bytesRead = audioRecord?.read(buffer, 0, buffer.size) ?: 0
                
                if (bytesRead > 0) {
                    // 处理音频（使用高级 PSOLA 算法）
                    val processed = advancedPSOLA.process(buffer, bytesRead)
                    
                    // 应用监听音量
                    if (monitorVolume < 1.0f && processed.isNotEmpty()) {
                        applyVolume(processed, monitorVolume)
                    }
                    
                    // 输出处理后的音频（用户通过耳机听到）
                    audioTrack?.write(processed, 0, processed.size)
                    
                    processedFrames++
                    
                    // 每1000帧输出一次统计
                    if (processedFrames % 1000 == 0) {
                        Log.v(TAG, "Processed $processedFrames frames, pitch: $currentPitchShift")
                    }
                    
                } else if (bytesRead == AudioRecord.ERROR_INVALID_OPERATION) {
                    Log.e(TAG, "AudioRecord read error: INVALID_OPERATION")
                    break
                } else if (bytesRead == AudioRecord.ERROR_BAD_VALUE) {
                    Log.e(TAG, "AudioRecord read error: BAD_VALUE")
                    break
                }
            } catch (e: Exception) {
                Log.e(TAG, "Error in audio processing loop", e)
                onError?.invoke(e)
                break
            }
        }
        
        Log.i(TAG, "Audio processing loop ended. Total frames: $processedFrames")
    }
    
    /**
     * 应用音量调整
     */
    private fun applyVolume(buffer: ByteArray, volume: Float) {
        for (i in 0 until buffer.size step 2) {
            // 将字节转为 16 位整数
            val sample = ((buffer[i + 1].toInt() shl 8) or (buffer[i].toInt() and 0xFF)).toShort()
            
            // 应用音量
            val adjusted = (sample * volume).toInt().coerceIn(Short.MIN_VALUE.toInt(), Short.MAX_VALUE.toInt())
            
            // 转回字节
            buffer[i] = adjusted.toByte()
            buffer[i + 1] = (adjusted shr 8).toByte()
        }
    }
    
    /**
     * 释放音频资源
     */
    private fun releaseAudio() {
        try {
            audioRecord?.stop()
            audioRecord?.release()
            audioRecord = null
            
            audioTrack?.stop()
            audioTrack?.release()
            audioTrack = null
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
     * 获取当前是否正在处理
     */
    fun isProcessing(): Boolean = isProcessing
}


import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioRecord
import android.media.AudioTrack
import android.util.Log
import kotlinx.coroutines.*

/**
 * 实时音频处理器 - 支持实时预览和监听
 * 用户可以通过耳机听到变声效果
 */
class RealtimeAudioProcessor(
    private var pitchShift: Float = 0f,
    private val previewMode: Boolean = true, // true: 预览模式（听到自己），false: 录制模式
    private val onError: ((Exception) -> Unit)? = null
) {
    private var audioRecord: AudioRecord? = null
    private var audioTrack: AudioTrack? = null
    private var isProcessing = false
    private var processingJob: Job? = null
    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    @Volatile private var currentPitchShift: Float = pitchShift
    @Volatile private var monitorVolume: Float = 1.0f // 监听音量
    @Volatile private var currentPreset: ProfessionalVoicePreset? = null
    private var advancedPSOLA: AdvancedPSOLA? = null
    
    companion object {
        private const val TAG = "RealtimeAudioProcessor"
    }
    
    /**
     * 启动音频处理
     */
    fun start() {
        if (isProcessing) {
            Log.w(TAG, "Audio processing already started")
            return
        }
        
        try {
            initializeAudio()
            isProcessing = true
            processingJob = scope.launch {
                processAudio()
            }
            Log.d(TAG, "Realtime audio processing started (preview mode: $previewMode)")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start audio processing", e)
            onError?.invoke(e)
            stop()
        }
    }
    
    /**
     * 停止音频处理
     */
    fun stop() {
        if (!isProcessing) return
        
        isProcessing = false
        processingJob?.cancel()
        processingJob = null
        
        releaseAudio()
        Log.d(TAG, "Realtime audio processing stopped")
    }
    
    /**
     * 更新变调参数
     */
    fun updatePitchShift(semiTones: Float) {
        currentPitchShift = semiTones.coerceIn(-12f, 12f)
        advancedPSOLA?.setPitchSemiTones(currentPitchShift)
        Log.d(TAG, "Pitch shift updated to: $currentPitchShift")
    }
    
    /**
     * 应用专业声音预设
     */
    fun applyPreset(preset: ProfessionalVoicePreset) {
        currentPreset = preset
        advancedPSOLA?.applyPreset(preset)
        Log.i(TAG, "Applied preset: ${preset.displayName}")
    }
    
    /**
     * 设置监听音量 (0.0 - 1.0)
     */
    fun setMonitorVolume(volume: Float) {
        monitorVolume = volume.coerceIn(0f, 1f)
    }
    
    /**
     * 初始化音频设备
     */
    private fun initializeAudio() {
        val bufferSize = AudioConfig.getRecommendedBufferSize()
        
        // 初始化AudioRecord（麦克风）
        audioRecord = AudioRecord(
            AudioConfig.AUDIO_SOURCE,
            AudioConfig.SAMPLE_RATE,
            AudioConfig.CHANNEL_CONFIG,
            AudioConfig.AUDIO_FORMAT,
            bufferSize
        )
        
        if (audioRecord?.state != AudioRecord.STATE_INITIALIZED) {
            throw IllegalStateException("AudioRecord initialization failed")
        }
        
        // 初始化AudioTrack（输出到耳机/扬声器）
        val trackBufferSize = AudioTrack.getMinBufferSize(
            AudioConfig.SAMPLE_RATE,
            AudioFormat.CHANNEL_OUT_MONO,
            AudioConfig.AUDIO_FORMAT
        ) * 2
        
        // 根据模式选择不同的流类型
        val streamType = if (previewMode) {
            // 预览模式：输出到音乐流（耳机/扬声器）
            AudioManager.STREAM_MUSIC
        } else {
            // 录制模式：输出到通话流（尝试被其他应用捕获）
            AudioManager.STREAM_VOICE_CALL
        }
        
        audioTrack = AudioTrack(
            streamType,
            AudioConfig.SAMPLE_RATE,
            AudioFormat.CHANNEL_OUT_MONO,
            AudioConfig.AUDIO_FORMAT,
            trackBufferSize,
            AudioTrack.MODE_STREAM
        )
        
        if (audioTrack?.state != AudioTrack.STATE_INITIALIZED) {
            throw IllegalStateException("AudioTrack initialization failed")
        }
        
        audioRecord?.startRecording()
        audioTrack?.play()
        
        Log.i(TAG, "Audio initialized - Mode: ${if (previewMode) "PREVIEW" else "RECORD"}, Stream: $streamType")
    }
    
    /**
     * 音频处理循环
     */
    private suspend fun processAudio() = withContext(Dispatchers.IO) {
        val bufferSize = AudioConfig.FRAME_SIZE * AudioConfig.BYTES_PER_SAMPLE
        val buffer = ByteArray(bufferSize)
        
        // 使用高级 PSOLA 引擎（支持共振峰、气声等专业参数）
        val advancedPSOLA = AdvancedPSOLA(
            sampleRate = AudioConfig.SAMPLE_RATE,
            channels = 1
        )
        advancedPSOLA.setPitchSemiTones(currentPitchShift)
        
        Log.d(TAG, "Audio processing started with ${advancedPSOLA.getVersion()}")
        
        var processedFrames = 0
        
        while (isProcessing && scope.isActive) {
            try {
                // 从麦克风读取音频数据
                val bytesRead = audioRecord?.read(buffer, 0, buffer.size) ?: 0
                
                if (bytesRead > 0) {
                    // 处理音频（使用高级 PSOLA 算法）
                    val processed = advancedPSOLA.process(buffer, bytesRead)
                    
                    // 应用监听音量
                    if (monitorVolume < 1.0f && processed.isNotEmpty()) {
                        applyVolume(processed, monitorVolume)
                    }
                    
                    // 输出处理后的音频（用户通过耳机听到）
                    audioTrack?.write(processed, 0, processed.size)
                    
                    processedFrames++
                    
                    // 每1000帧输出一次统计
                    if (processedFrames % 1000 == 0) {
                        Log.v(TAG, "Processed $processedFrames frames, pitch: $currentPitchShift")
                    }
                    
                } else if (bytesRead == AudioRecord.ERROR_INVALID_OPERATION) {
                    Log.e(TAG, "AudioRecord read error: INVALID_OPERATION")
                    break
                } else if (bytesRead == AudioRecord.ERROR_BAD_VALUE) {
                    Log.e(TAG, "AudioRecord read error: BAD_VALUE")
                    break
                }
            } catch (e: Exception) {
                Log.e(TAG, "Error in audio processing loop", e)
                onError?.invoke(e)
                break
            }
        }
        
        Log.i(TAG, "Audio processing loop ended. Total frames: $processedFrames")
    }
    
    /**
     * 应用音量调整
     */
    private fun applyVolume(buffer: ByteArray, volume: Float) {
        for (i in 0 until buffer.size step 2) {
            // 将字节转为 16 位整数
            val sample = ((buffer[i + 1].toInt() shl 8) or (buffer[i].toInt() and 0xFF)).toShort()
            
            // 应用音量
            val adjusted = (sample * volume).toInt().coerceIn(Short.MIN_VALUE.toInt(), Short.MAX_VALUE.toInt())
            
            // 转回字节
            buffer[i] = adjusted.toByte()
            buffer[i + 1] = (adjusted shr 8).toByte()
        }
    }
    
    /**
     * 释放音频资源
     */
    private fun releaseAudio() {
        try {
            audioRecord?.stop()
            audioRecord?.release()
            audioRecord = null
            
            audioTrack?.stop()
            audioTrack?.release()
            audioTrack = null
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
     * 获取当前是否正在处理
     */
    fun isProcessing(): Boolean = isProcessing
}

