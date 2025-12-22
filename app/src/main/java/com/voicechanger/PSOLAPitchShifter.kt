package com.voicechanger

import android.util.Log
import kotlin.math.*

/**
 * 基于 PSOLA 算法的高质量变调处理器
 * PSOLA = Pitch Synchronous Overlap-Add
 * 
 * 相比简单的重采样，PSOLA 算法：
 * - 保持音质和音色
 * - 减少机械感
 * - 更自然的变调效果
 */
class PSOLAPitchShifter(
    private val sampleRate: Int = 44100
) {
    private var pitchScale: Float = 1.0f
    private val windowSize = 2048
    private val hopSize = windowSize / 4
    
    companion object {
        private const val TAG = "PSOLAPitchShifter"
    }
    
    /**
     * 设置变调参数（半音）
     */
    fun setPitchSemiTones(semiTones: Float) {
        // 将半音转换为频率比例
        // 公式：ratio = 2^(semiTones/12)
        pitchScale = 2.0f.pow(semiTones / 12.0f)
        Log.d(TAG, "Pitch scale set to: $pitchScale (${semiTones} semitones)")
    }
    
    /**
     * 处理音频数据
     */
    fun process(input: ByteArray, length: Int): ByteArray {
        if (pitchScale == 1.0f) {
            // 无变调，直接返回
            return input.copyOf(length)
        }
        
        // 转换为 short 数组
        val samples = bytesToShorts(input, length)
        
        // 应用 PSOLA 变调
        val processed = processPSOLA(samples)
        
        // 转换回字节数组
        return shortsToBytes(processed)
    }
    
    /**
     * PSOLA 变调核心算法
     */
    private fun processPSOLA(samples: ShortArray): ShortArray {
        if (samples.isEmpty()) return samples
        
        // 1. 检测音高周期
        val periods = detectPitchPeriods(samples)
        
        if (periods.isEmpty()) {
            // 如果无法检测到音高，使用窗口重叠法
            return processWithOverlapAdd(samples)
        }
        
        // 2. 使用 PSOLA 进行变调
        return applyPSOLA(samples, periods, pitchScale)
    }
    
    /**
     * 检测音高周期（基频）
     * 使用自相关法
     */
    private fun detectPitchPeriods(samples: ShortArray): List<Int> {
        val periods = mutableListOf<Int>()
        val minPeriod = sampleRate / 500  // 最高500Hz
        val maxPeriod = sampleRate / 80   // 最低80Hz
        
        var pos = 0
        while (pos < samples.size - maxPeriod) {
            val window = samples.copyOfRange(pos, min(pos + maxPeriod * 2, samples.size))
            val period = findPeriodByAutocorrelation(window, minPeriod, maxPeriod)
            
            if (period > 0) {
                periods.add(pos)
                pos += period
            } else {
                pos += hopSize
            }
        }
        
        return periods
    }
    
    /**
     * 使用自相关法查找周期
     */
    private fun findPeriodByAutocorrelation(
        samples: ShortArray,
        minPeriod: Int,
        maxPeriod: Int
    ): Int {
        var maxCorr = 0.0
        var bestPeriod = 0
        
        for (period in minPeriod..min(maxPeriod, samples.size / 2)) {
            var corr = 0.0
            val numSamples = min(period, samples.size - period)
            
            for (i in 0 until numSamples) {
                corr += samples[i] * samples[i + period]
            }
            
            // 归一化
            corr /= numSamples
            
            if (corr > maxCorr) {
                maxCorr = corr
                bestPeriod = period
            }
        }
        
        return if (maxCorr > 0.3) bestPeriod else 0
    }
    
    /**
     * 应用 PSOLA 变调
     */
    private fun applyPSOLA(
        samples: ShortArray,
        periods: List<Int>,
        pitchScale: Float
    ): ShortArray {
        if (periods.isEmpty()) return samples
        
        val outputSize = (samples.size / pitchScale).toInt()
        val output = FloatArray(outputSize)
        
        // 计算新的周期位置
        val newPeriods = mutableListOf<Int>()
        for (period in periods) {
            val newPos = (period / pitchScale).toInt()
            if (newPos < outputSize) {
                newPeriods.add(newPos)
            }
        }
        
        // 对每个周期进行处理
        for (i in newPeriods.indices) {
            val srcPos = periods.getOrNull(i) ?: break
            val dstPos = newPeriods[i]
            val nextSrcPos = periods.getOrNull(i + 1) ?: samples.size
            val windowLen = min(nextSrcPos - srcPos, windowSize)
            
            if (srcPos + windowLen <= samples.size && dstPos + windowLen <= outputSize) {
                // 提取窗口并应用汉宁窗
                val window = extractWindow(samples, srcPos, windowLen)
                
                // 叠加到输出
                for (j in window.indices) {
                    if (dstPos + j < outputSize) {
                        output[dstPos + j] += window[j]
                    }
                }
            }
        }
        
        // 转换为 short 并归一化
        return output.map { it.coerceIn(-32768f, 32767f).toInt().toShort() }.toShortArray()
    }
    
    /**
     * 提取窗口并应用汉宁窗函数
     */
    private fun extractWindow(samples: ShortArray, start: Int, length: Int): FloatArray {
        val window = FloatArray(length)
        
        for (i in 0 until length) {
            if (start + i < samples.size) {
                // 汉宁窗函数
                val hannWindow = 0.5 * (1 - cos(2 * PI * i / (length - 1)))
                window[i] = samples[start + i] * hannWindow.toFloat()
            }
        }
        
        return window
    }
    
    /**
     * 窗口重叠添加法（当无法检测到音高时的备用方案）
     */
    private fun processWithOverlapAdd(samples: ShortArray): ShortArray {
        val outputSize = (samples.size / pitchScale).toInt()
        val output = FloatArray(outputSize)
        val analysisHop = hopSize
        val synthesisHop = (analysisHop / pitchScale).toInt()
        
        var inputPos = 0
        var outputPos = 0
        
        while (inputPos + windowSize <= samples.size && outputPos + windowSize <= outputSize) {
            // 提取分析窗口
            val window = extractWindow(samples, inputPos, windowSize)
            
            // 叠加到输出
            for (i in window.indices) {
                if (outputPos + i < outputSize) {
                    output[outputPos + i] += window[i]
                }
            }
            
            inputPos += analysisHop
            outputPos += synthesisHop
        }
        
        // 归一化并转换
        val maxVal = output.maxOrNull() ?: 1f
        val normFactor = if (maxVal > 32767) 32767 / maxVal else 1f
        
        return output.map { 
            (it * normFactor).coerceIn(-32768f, 32767f).toInt().toShort()
        }.toShortArray()
    }
    
    /**
     * 字节数组转 Short 数组
     */
    private fun bytesToShorts(bytes: ByteArray, length: Int): ShortArray {
        val shorts = ShortArray(length / 2)
        for (i in shorts.indices) {
            val index = i * 2
            if (index + 1 < length) {
                shorts[i] = ((bytes[index].toInt() and 0xFF) or 
                            (bytes[index + 1].toInt() shl 8)).toShort()
            }
        }
        return shorts
    }
    
    /**
     * Short 数组转字节数组
     */
    private fun shortsToBytes(shorts: ShortArray): ByteArray {
        val bytes = ByteArray(shorts.size * 2)
        for (i in shorts.indices) {
            bytes[i * 2] = (shorts[i].toInt() and 0xFF).toByte()
            bytes[i * 2 + 1] = (shorts[i].toInt() shr 8).toByte()
        }
        return bytes
    }
}


