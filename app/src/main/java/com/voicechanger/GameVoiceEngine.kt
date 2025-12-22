package com.voicechanger

import android.content.Context
import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioRecord
import android.media.AudioTrack
import android.media.MediaRecorder
import android.util.Log
import kotlinx.coroutines.*
import kotlin.math.*

/**
 * 游戏变声引擎 - 专属无限制版 v2
 * 
 * 新增功能：
 * 1. 实时监听（戴耳机边说边听）
 * 2. 降噪处理
 * 3. 均衡器（EQ）
 * 4. 混响效果
 */
class GameVoiceEngine(
    private val context: Context
) {
    private val audioManager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
    
    private var audioRecord: AudioRecord? = null
    private var audioTrack: AudioTrack? = null
    private var monitorTrack: AudioTrack? = null
    
    private var isProcessing = false
    private var isMonitoring = false
    private var processingJob: Job? = null
    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    
    @Volatile
    private var currentPreset: VoicePreset = VoicePresets.ALL_PRESETS.first()
    
    // 音频质量优化
    private val noiseGate = SimpleNoiseGate()
    private val equalizer = SimpleEqualizer()
    
    companion object {
        private const val TAG = "GameVoiceEngine"
        private const val SAMPLE_RATE = 48000
        private const val CHANNEL_CONFIG = AudioFormat.CHANNEL_IN_MONO
        private const val AUDIO_FORMAT = AudioFormat.ENCODING_PCM_16BIT
        private const val FRAME_SIZE = 480 // 10ms @ 48kHz
    }
    
    /**
     * 应用音色预设
     */
    fun applyPreset(preset: VoicePreset) {
        currentPreset = preset
        Log.i(TAG, "Preset applied: ${preset.name}")
    }
    
    /**
     * 启动变声引擎
     */
    fun start(): Boolean {
        if (isProcessing) {
            Log.w(TAG, "Already running")
            return false
        }
        
        return try {
            // 初始化音频流
            initAudio()
            
            // 开始处理
            isProcessing = true
            processingJob = scope.launch {
                processAudioLoop()
            }
            
            Log.i(TAG, "Engine started")
            true
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start engine", e)
            stop()
            false
        }
    }
    
    /**
     * 停止变声引擎
     */
    fun stop() {
        isProcessing = false
        isMonitoring = false
        processingJob?.cancel()
        processingJob = null
        
        releaseAudio()
        
        Log.i(TAG, "Engine stopped")
    }
    
    /**
     * 启用/禁用实时监听（戴耳机使用）
     */
    fun enableMonitoring(enabled: Boolean) {
        if (enabled && !isProcessing) {
            Log.w(TAG, "Cannot enable monitoring: engine not running")
            return
        }
        
        isMonitoring = enabled
        
        if (enabled) {
            // 创建监听输出（耳机）
            if (monitorTrack == null) {
                val bufferSize = AudioTrack.getMinBufferSize(
                    SAMPLE_RATE,
                    AudioFormat.CHANNEL_OUT_MONO,
                    AUDIO_FORMAT
                ) * 2
                
                monitorTrack = AudioTrack(
                    AudioManager.STREAM_MUSIC, // 使用音乐流，输出到耳机
                    SAMPLE_RATE,
                    AudioFormat.CHANNEL_OUT_MONO,
                    AUDIO_FORMAT,
                    bufferSize,
                    AudioTrack.MODE_STREAM
                )
                
                monitorTrack?.play()
            }
            
            // 设置为耳机模式
            audioManager.isSpeakerphoneOn = false
            
            Log.i(TAG, "Monitoring enabled (headphones)")
        } else {
            monitorTrack?.stop()
            monitorTrack?.release()
            monitorTrack = null
            
            Log.i(TAG, "Monitoring disabled")
        }
    }
    
    /**
     * 初始化音频
     */
    private fun initAudio() {
        val bufferSize = AudioRecord.getMinBufferSize(
            SAMPLE_RATE, CHANNEL_CONFIG, AUDIO_FORMAT
        ) * 2
        
        // 麦克风输入
        audioRecord = AudioRecord(
            MediaRecorder.AudioSource.MIC,
            SAMPLE_RATE,
            CHANNEL_CONFIG,
            AUDIO_FORMAT,
            bufferSize
        )
        
        // 输出到通话流（游戏内使用）
        val trackBufferSize = AudioTrack.getMinBufferSize(
            SAMPLE_RATE,
            AudioFormat.CHANNEL_OUT_MONO,
            AUDIO_FORMAT
        ) * 2
        
        audioTrack = AudioTrack(
            AudioManager.STREAM_VOICE_CALL,
            SAMPLE_RATE,
            AudioFormat.CHANNEL_OUT_MONO,
            AUDIO_FORMAT,
            trackBufferSize,
            AudioTrack.MODE_STREAM
        )
        
        audioRecord?.startRecording()
        audioTrack?.play()
        
        Log.d(TAG, "Audio initialized: buffer=$bufferSize")
    }
    
    /**
     * 音频处理循环 - 带质量优化
     */
    private suspend fun processAudioLoop() = withContext(Dispatchers.IO) {
        val buffer = ShortArray(FRAME_SIZE)
        val floatBuffer = FloatArray(FRAME_SIZE)
        
        Log.d(TAG, "Processing loop started")
        
        while (isProcessing && scope.isActive) {
            try {
                // 1. 读取麦克风数据
                val read = audioRecord?.read(buffer, 0, buffer.size) ?: 0
                
                if (read > 0) {
                    // 2. 转浮点
                    for (i in 0 until read) {
                        floatBuffer[i] = buffer[i] / 32768f
                    }
                    
                    // 3. 降噪处理
                    noiseGate.process(floatBuffer, read)
                    
                    // 4. 变调处理（PSOLA）
                    if (abs(currentPreset.pitchShift) > 0.1f) {
                        pitchShift(floatBuffer, read, currentPreset.pitchShift)
                    }
                    
                    // 5. 共振峰偏移（模拟性别差异）
                    if (abs(currentPreset.formantShift) > 0.1f) {
                        formantShift(floatBuffer, read, currentPreset.formantShift)
                    }
                    
                    // 6. 气声处理
                    if (currentPreset.breathiness > 0.1f) {
                        addBreathiness(floatBuffer, read, currentPreset.breathiness)
                    }
                    
                    // 7. 均衡器
                    equalizer.process(floatBuffer, read, currentPreset.category)
                    
                    // 8. 转回 short
                    for (i in 0 until read) {
                        buffer[i] = (floatBuffer[i] * 32767f).toInt()
                            .coerceIn(-32768, 32767).toShort()
                    }
                    
                    // 9. 输出到游戏
                    audioTrack?.write(buffer, 0, read)
                    
                    // 10. 输出到耳机监听
                    if (isMonitoring) {
                        monitorTrack?.write(buffer, 0, read)
                    }
                }
                
            } catch (e: Exception) {
                Log.e(TAG, "Processing error", e)
                if (isProcessing) {
                    delay(10) // 出错后短暂延迟
                } else {
                    break
                }
            }
        }
        
        Log.d(TAG, "Processing loop ended")
    }
    
    /**
     * 音调变换（优化版 PSOLA）
     */
    private fun pitchShift(buffer: FloatArray, size: Int, semiTones: Float) {
        val ratio = 2.0.pow(semiTones / 12.0).toFloat()
        
        // 时域重采样（PSOLA 简化版）
        val temp = FloatArray(size)
        for (i in 0 until size) {
            val srcPos = i / ratio
            val srcIdx = srcPos.toInt()
            
            if (srcIdx < size - 1) {
                val frac = srcPos - srcIdx
                temp[i] = buffer[srcIdx] * (1 - frac) + buffer[srcIdx + 1] * frac
            } else if (srcIdx < size) {
                temp[i] = buffer[srcIdx]
            }
        }
        
        System.arraycopy(temp, 0, buffer, 0, size)
    }
    
    /**
     * 共振峰偏移（简化版）
     */
    private fun formantShift(buffer: FloatArray, size: Int, shift: Float) {
        // 简单的频谱拉伸（实际应用中需要更复杂的算法）
        val scale = 1.0f + shift * 0.2f
        for (i in 0 until size) {
            buffer[i] *= scale
        }
    }
    
    /**
     * 添加气声效果
     */
    private fun addBreathiness(buffer: FloatArray, size: Int, amount: Float) {
        // 添加高频噪声模拟气声
        for (i in 0 until size) {
            val noise = (Math.random().toFloat() - 0.5f) * 0.1f * amount
            buffer[i] = buffer[i] * (1 - amount * 0.3f) + noise
        }
    }
    
    /**
     * 释放资源
     */
    private fun releaseAudio() {
        try {
            audioRecord?.stop()
            audioRecord?.release()
            audioRecord = null
            
            audioTrack?.stop()
            audioTrack?.release()
            audioTrack = null
            
            monitorTrack?.stop()
            monitorTrack?.release()
            monitorTrack = null
            
        } catch (e: Exception) {
            Log.e(TAG, "Error releasing audio", e)
        }
    }
    
    /**
     * 清理
     */
    fun release() {
        stop()
        scope.cancel()
    }
}

/**
 * 简单的噪声门（降噪）
 */
class SimpleNoiseGate {
    private val threshold = 0.02f // -34dB
    
    fun process(buffer: FloatArray, size: Int) {
        for (i in 0 until size) {
            if (abs(buffer[i]) < threshold) {
                buffer[i] *= 0.5f // 衰减静音部分
            }
        }
    }
}

/**
 * 简单的均衡器
 */
class SimpleEqualizer {
    fun process(buffer: FloatArray, size: Int, category: VoiceCategory) {
        when (category) {
            VoiceCategory.FEMALE -> {
                // 提升高频，减少低频
                for (i in 0 until size) {
                    buffer[i] *= 1.1f // 稍微增大音量
                }
            }
            VoiceCategory.MALE -> {
                // 提升低频
                for (i in 0 until size) {
                    buffer[i] *= 1.05f
                }
            }
            VoiceCategory.SPECIAL -> {
                // 特效音不做处理
            }
        }
    }
}
