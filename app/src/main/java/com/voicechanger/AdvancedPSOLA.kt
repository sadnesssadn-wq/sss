package com.voicechanger

import kotlin.math.*

/**
 * 高级 PSOLA 引擎 - 支持共振峰、气声、共鸣等专业参数
 * 实现真正的专业级变声效果
 */
class AdvancedPSOLA(
    private val sampleRate: Int,
    private val channels: Int = 1
) {
    private var pitchScale = 1.0f
    private var formantShift = 0.0f      // 共振峰偏移
    private var breathiness = 0.0f       // 气声程度
    private var resonance = 0.5f         // 共鸣度
    
    companion object {
        private const val TAG = "AdvancedPSOLA"
        private const val FRAME_SIZE = 2048
        private const val HOP_SIZE = 512
        private const val MIN_PERIOD = 50    // 最小音高周期（样本数）
        private const val MAX_PERIOD = 500   // 最大音高周期（样本数）
    }
    
    /**
     * 设置音调偏移（半音）
     */
    fun setPitchSemiTones(semiTones: Float) {
        pitchScale = 2.0f.pow(semiTones / 12.0f)
    }
    
    /**
     * 设置共振峰偏移（改变音色）
     * 正值：更女性化，负值：更男性化
     */
    fun setFormantShift(shift: Float) {
        formantShift = shift.coerceIn(-2.0f, 2.0f)
    }
    
    /**
     * 设置气声程度（0-1）
     */
    fun setBreathiness(value: Float) {
        breathiness = value.coerceIn(0f, 1f)
    }
    
    /**
     * 设置共鸣度（0-1）
     */
    fun setResonance(value: Float) {
        resonance = value.coerceIn(0f, 1f)
    }
    
    /**
     * 应用预设
     */
    fun applyPreset(preset: ProfessionalVoicePreset) {
        setPitchSemiTones(preset.pitchSemiTones)
        setFormantShift(preset.formantShift)
        setBreathiness(preset.breathiness)
        setResonance(preset.resonance)
    }
    
    /**
     * 处理音频数据
     */
    fun process(inputBytes: ByteArray, length: Int): ByteArray {
        // 转换为浮点数组
        val samples = bytesToFloats(inputBytes, length)
        
        // 1. 音调变换（PSOLA）
        val pitchShifted = if (abs(pitchScale - 1.0f) > 0.01f) {
            psolaTimeStretch(samples, 1.0f / pitchScale)
        } else {
            samples
        }
        
        // 2. 共振峰偏移（改变音色）
        val formantShifted = if (abs(formantShift) > 0.01f) {
            applyFormantShift(pitchShifted, formantShift)
        } else {
            pitchShifted
        }
        
        // 3. 添加气声效果
        val withBreath = if (breathiness > 0.01f) {
            addBreathiness(formantShifted, breathiness)
        } else {
            formantShifted
        }
        
        // 4. 应用共鸣效果
        val withResonance = applyResonance(withBreath, resonance)
        
        // 转换回字节数组
        return floatsToBytes(withResonance)
    }
    
    /**
     * PSOLA 时间拉伸/压缩
     */
    private fun psolaTimeStretch(input: FloatArray, timeStretch: Float): FloatArray {
        val outputLength = (input.size * timeStretch).toInt()
        val output = FloatArray(outputLength)
        
        // 检测音高周期
        val periods = detectPitchPeriods(input)
        
        if (periods.isEmpty()) {
            // 无法检测到音高，直接重采样
            return resample(input, timeStretch)
        }
        
        var inputPos = 0
        var outputPos = 0
        var periodIndex = 0
        
        while (outputPos < outputLength && periodIndex < periods.size) {
            val period = periods[periodIndex]
            val windowSize = (period * 2).coerceIn(MIN_PERIOD, MAX_PERIOD)
            
            // 提取并窗化一个周期
            val grain = extractGrain(input, inputPos, windowSize)
            
            // 叠加到输出
            overlapAdd(output, grain, outputPos)
            
            // 更新位置
            inputPos += (period * timeStretch).toInt()
            outputPos += period
            periodIndex++
            
            // 防止越界
            if (inputPos >= input.size) break
        }
        
        return output
    }
    
    /**
     * 检测音高周期
     */
    private fun detectPitchPeriods(signal: FloatArray): IntArray {
        val periods = mutableListOf<Int>()
        var pos = 0
        
        while (pos < signal.size - MAX_PERIOD) {
            val period = detectPeriodAtPosition(signal, pos)
            if (period > 0) {
                periods.add(period)
                pos += period
            } else {
                pos += HOP_SIZE
            }
        }
        
        return periods.toIntArray()
    }
    
    /**
     * 在特定位置检测音高周期（使用自相关）
     */
    private fun detectPeriodAtPosition(signal: FloatArray, startPos: Int): Int {
        val frameSize = min(FRAME_SIZE, signal.size - startPos)
        if (frameSize < MIN_PERIOD * 2) return -1
        
        var maxCorr = 0.0
        var bestPeriod = -1
        
        // 自相关检测音高
        for (period in MIN_PERIOD..min(MAX_PERIOD, frameSize / 2)) {
            var corr = 0.0
            for (i in 0 until frameSize - period) {
                if (startPos + i + period < signal.size) {
                    corr += signal[startPos + i] * signal[startPos + i + period]
                }
            }
            
            if (corr > maxCorr) {
                maxCorr = corr
                bestPeriod = period
            }
        }
        
        return if (maxCorr > 0.1) bestPeriod else -1
    }
    
    /**
     * 提取音频片段并应用窗函数
     */
    private fun extractGrain(signal: FloatArray, center: Int, size: Int): FloatArray {
        val grain = FloatArray(size)
        val start = max(0, center - size / 2)
        
        for (i in 0 until size) {
            val pos = start + i
            if (pos >= 0 && pos < signal.size) {
                // 汉宁窗
                val window = 0.5f * (1.0f - cos(2.0f * PI.toFloat() * i / size))
                grain[i] = signal[pos] * window
            }
        }
        
        return grain
    }
    
    /**
     * 叠加添加
     */
    private fun overlapAdd(output: FloatArray, grain: FloatArray, startPos: Int) {
        for (i in grain.indices) {
            val pos = startPos + i
            if (pos >= 0 && pos < output.size) {
                output[pos] += grain[i]
            }
        }
    }
    
    /**
     * 共振峰偏移（改变音色）
     */
    private fun applyFormantShift(input: FloatArray, shift: Float): FloatArray {
        // 使用重采样改变共振峰
        val resampleRatio = 2.0f.pow(-shift / 4.0f)  // 共振峰与采样率相关
        val resampled = resample(input, resampleRatio)
        
        // 恢复长度（通过时间拉伸）
        return resample(resampled, 1.0f / resampleRatio)
    }
    
    /**
     * 添加气声效果
     */
    private fun addBreathiness(input: FloatArray, amount: Float): FloatArray {
        val output = input.copyOf()
        val noiseAmplitude = amount * 0.1f
        
        for (i in output.indices) {
            // 添加高频噪声模拟气声
            val noise = (Math.random().toFloat() - 0.5f) * 2.0f * noiseAmplitude
            
            // 根据信号强度调整噪声（有声音时噪声更明显）
            val signalStrength = abs(output[i])
            output[i] = output[i] * (1 - amount * 0.3f) + noise * signalStrength
        }
        
        return output
    }
    
    /**
     * 应用共鸣效果
     */
    private fun applyResonance(input: FloatArray, amount: Float): FloatArray {
        val output = FloatArray(input.size)
        val filterStrength = amount * 0.7f
        
        // 简单的低通滤波器增强共鸣
        for (i in input.indices) {
            if (i == 0) {
                output[i] = input[i]
            } else {
                output[i] = input[i] * (1 - filterStrength) + output[i - 1] * filterStrength
            }
        }
        
        // 混合原始信号
        for (i in output.indices) {
            output[i] = output[i] * 0.7f + input[i] * 0.3f
        }
        
        return output
    }
    
    /**
     * 重采样
     */
    private fun resample(input: FloatArray, ratio: Float): FloatArray {
        val outputLength = (input.size * ratio).toInt()
        val output = FloatArray(outputLength)
        
        for (i in 0 until outputLength) {
            val srcPos = i / ratio
            val srcIndex = srcPos.toInt()
            val frac = srcPos - srcIndex
            
            if (srcIndex < input.size - 1) {
                // 线性插值
                output[i] = input[srcIndex] * (1 - frac) + input[srcIndex + 1] * frac
            } else if (srcIndex < input.size) {
                output[i] = input[srcIndex]
            }
        }
        
        return output
    }
    
    /**
     * 字节数组转浮点数组
     */
    private fun bytesToFloats(bytes: ByteArray, length: Int): FloatArray {
        val samples = FloatArray(length / 2)
        for (i in samples.indices) {
            val index = i * 2
            if (index + 1 < length) {
                val sample = ((bytes[index + 1].toInt() shl 8) or (bytes[index].toInt() and 0xFF)).toShort()
                samples[i] = sample / 32768.0f
            }
        }
        return samples
    }
    
    /**
     * 浮点数组转字节数组
     */
    private fun floatsToBytes(samples: FloatArray): ByteArray {
        val bytes = ByteArray(samples.size * 2)
        for (i in samples.indices) {
            val sample = (samples[i] * 32767.0f).toInt().coerceIn(-32768, 32767).toShort()
            bytes[i * 2] = sample.toByte()
            bytes[i * 2 + 1] = (sample.toInt() shr 8).toByte()
        }
        return bytes
    }
    
    /**
     * 获取版本信息
     */
    fun getVersion(): String = "AdvancedPSOLA v2.0"
}

