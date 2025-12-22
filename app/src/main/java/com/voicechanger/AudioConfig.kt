package com.voicechanger

import android.media.AudioFormat
import android.media.AudioRecord
import android.media.MediaRecorder

/**
 * 音频配置管理类
 * 定义音频采样参数
 * 
 * 优化后的配置，专为高质量变声设计
 */
object AudioConfig {
    // 采样率（提高到 44100Hz 以保证音质）
    const val SAMPLE_RATE = 44100
    
    // 声道配置（单声道，处理更快）
    const val CHANNEL_CONFIG = AudioFormat.CHANNEL_IN_MONO
    
    // 音频格式（16位 PCM，标准高质量格式）
    const val AUDIO_FORMAT = AudioFormat.ENCODING_PCM_16BIT
    
    // 音频源（使用麦克风）
    const val AUDIO_SOURCE = MediaRecorder.AudioSource.MIC
    
    // 缓冲区大小（字节）- 动态计算
    val BUFFER_SIZE = AudioRecord.getMinBufferSize(
        SAMPLE_RATE,
        CHANNEL_CONFIG,
        AUDIO_FORMAT
    ) * 2  // 双倍缓冲以提升稳定性
    
    // 帧大小（样本数）- 增大以提升音质
    // PSOLA 算法使用更大的帧效果更好
    const val FRAME_SIZE = 2048  // 从 1024 提升到 2048
    
    // 每个样本的字节数（16位 = 2字节）
    const val BYTES_PER_SAMPLE = 2
    
    // 重叠系数（用于 PSOLA 算法）
    const val OVERLAP_FACTOR = 4
    
    // 计算跳跃大小（hop size）
    const val HOP_SIZE = FRAME_SIZE / OVERLAP_FACTOR
    
    /**
     * 获取推荐的缓冲区大小
     * 确保缓冲区足够大以容纳一帧数据
     */
    fun getRecommendedBufferSize(): Int {
        return maxOf(BUFFER_SIZE, FRAME_SIZE * BYTES_PER_SAMPLE * 2)
    }
    
    /**
     * 音质级别配置
     */
    enum class QualityLevel(
        val frameSize: Int,
        val overlapFactor: Int,
        val description: String
    ) {
        LOW(512, 2, "低音质（低延迟）"),
        MEDIUM(1024, 4, "中等音质（平衡）"),
        HIGH(2048, 4, "高音质（推荐）"),
        ULTRA(4096, 8, "超高音质（高延迟）");
        
        val hopSize: Int
            get() = frameSize / overlapFactor
    }
    
    // 当前音质级别
    var currentQuality: QualityLevel = QualityLevel.HIGH
    
    /**
     * 获取当前音质级别的帧大小
     */
    fun getCurrentFrameSize(): Int {
        return currentQuality.frameSize
    }
    
    /**
     * 获取当前音质级别的跳跃大小
     */
    fun getCurrentHopSize(): Int {
        return currentQuality.hopSize
    }
}

