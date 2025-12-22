package com.voicechanger

import android.media.AudioFormat
import android.media.AudioRecord
import android.media.AudioTrack
import android.util.Log
import kotlinx.coroutines.*

/**
 * 音频处理核心类
 * 负责音频捕获、处理和输出
 */
class AudioProcessor(
    private var pitchShift: Float = 0f,
    private val onError: ((Exception) -> Unit)? = null
) {
    private var audioRecord: AudioRecord? = null
    private var audioTrack: AudioTrack? = null
    private var isProcessing = false
    private var processingJob: Job? = null
    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    @Volatile private var currentPitchShift: Float = pitchShift
    
    companion object {
        private const val TAG = "AudioProcessor"
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
            Log.d(TAG, "Audio processing started")
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
        Log.d(TAG, "Audio processing stopped")
    }
    
    /**
     * 更新变调参数
     */
    fun updatePitchShift(semiTones: Float) {
        currentPitchShift = semiTones.coerceIn(-12f, 12f)
        Log.d(TAG, "Pitch shift updated to: $currentPitchShift")
    }
    
    /**
     * 初始化音频设备
     */
    private fun initializeAudio() {
        val bufferSize = AudioConfig.getRecommendedBufferSize()
        
        // 初始化AudioRecord
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
        
        // 初始化AudioTrack
        val trackBufferSize = AudioTrack.getMinBufferSize(
            AudioConfig.SAMPLE_RATE,
            AudioFormat.CHANNEL_OUT_MONO,
            AudioConfig.AUDIO_FORMAT
        ) * 2
        
        audioTrack = AudioTrack(
            android.media.AudioManager.STREAM_VOICE_CALL,
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
    }
    
    /**
     * 音频处理循环
     */
    private suspend fun processAudio() {
        val bufferSize = AudioConfig.FRAME_SIZE * AudioConfig.BYTES_PER_SAMPLE
        val buffer = ByteArray(bufferSize)
        
        // 使用专业级 SoundTouch 引擎（基于 PSOLA 算法）
        val soundTouch = SoundTouchEngine(
            sampleRate = AudioConfig.SAMPLE_RATE,
            channels = 1
        )
        soundTouch.setPitchSemiTones(currentPitchShift)
        
        Log.d(TAG, "Audio processing started with SoundTouch engine v${soundTouch.getVersion()}")
        
        while (isProcessing && coroutineContext.isActive) {
            try {
                // 更新变调参数（如果发生变化）
                if (soundTouch.getPitchSemiTones() != currentPitchShift) {
                    soundTouch.setPitchSemiTones(currentPitchShift)
                }
                
                // 从麦克风读取音频数据
                val bytesRead = audioRecord?.read(buffer, 0, buffer.size) ?: 0
                
                if (bytesRead > 0) {
                    // 处理音频（使用专业级变调算法）
                    val processed = soundTouch.process(buffer, bytesRead)
                    
                    // 输出处理后的音频
                    audioTrack?.write(processed, 0, processed.size)
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
}

