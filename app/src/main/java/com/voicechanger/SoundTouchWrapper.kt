package com.voicechanger

/**
 * SoundTouch库封装类
 * 提供统一的变调处理接口
 * 
 * 当前实现使用基于重采样的变调算法
 * 未来可以替换为真正的SoundTouch JNI库
 */
class SoundTouchWrapper {
    private var pitchSemiTones: Float = 0f
    private var tempoChange: Float = 0f
    private var rateChange: Float = 0f
    private val pitchShifter = PitchShifter(0f)
    
    /**
     * 设置变调（半音）
     * @param semiTones 半音数，范围通常为-12到+12
     *                  -12: 降低一个八度
     *                  0: 不变调
     *                  +12: 升高一个八度
     */
    fun setPitchSemiTones(semiTones: Float) {
        pitchSemiTones = semiTones.coerceIn(-12f, 12f)
        pitchShifter.updatePitchShift(pitchSemiTones)
    }
    
    /**
     * 设置变速（百分比）
     * @param tempoChange 变速百分比，例如50表示减慢50%，-50表示加快50%
     */
    fun setTempoChange(tempoChange: Float) {
        this.tempoChange = tempoChange.coerceIn(-50f, 50f)
        // 当前实现暂不支持变速，可以扩展PitchShifter来支持
    }
    
    /**
     * 设置采样率变化（百分比）
     * @param rateChange 采样率变化百分比
     */
    fun setRateChange(rateChange: Float) {
        this.rateChange = rateChange.coerceIn(-50f, 50f)
        // 当前实现暂不支持采样率变化
    }
    
    /**
     * 设置采样率
     * @param sampleRate 采样率（Hz）
     */
    fun setSampleRate(sampleRate: Int) {
        // 当前实现使用固定采样率，可以扩展支持
    }
    
    /**
     * 设置声道数
     * @param channels 声道数（1=单声道，2=立体声）
     */
    fun setChannels(channels: Int) {
        // 当前实现仅支持单声道
    }
    
    /**
     * 输入音频样本
     * @param samples 音频样本数据
     * @param numSamples 样本数量
     */
    fun putSamples(samples: ShortArray, numSamples: Int) {
        // 当前实现中，处理在process方法中完成
        // 如果使用真正的SoundTouch，这里会缓存样本
    }
    
    /**
     * 接收处理后的音频样本
     * @param output 输出缓冲区
     * @param maxSamples 最大样本数
     * @return 实际输出的样本数
     */
    fun receiveSamples(output: ShortArray, maxSamples: Int): Int {
        // 当前实现中，处理在process方法中完成
        // 如果使用真正的SoundTouch，这里会返回处理后的样本
        return 0
    }
    
    /**
     * 处理音频数据（当前实现的接口）
     * @param input 输入音频数据
     * @param length 数据长度
     * @return 处理后的音频数据
     */
    fun process(input: ByteArray, length: Int): ByteArray {
        return pitchShifter.process(input, length)
    }
    
    /**
     * 清空内部缓冲区
     */
    fun clear() {
        // 清空任何缓存的音频数据
    }
    
    /**
     * 刷新处理管道，确保所有数据都被处理
     */
    fun flush() {
        // 处理剩余的音频数据
    }
    
    /**
     * 获取当前变调参数
     */
    fun getPitchSemiTones(): Float = pitchSemiTones
    
    /**
     * 获取当前变速参数
     */
    fun getTempoChange(): Float = tempoChange
    
    /**
     * 获取当前采样率变化参数
     */
    fun getRateChange(): Float = rateChange
}

