package com.voicechanger

import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * 变调处理器
 * 使用重采样技术实现变调效果
 */
class PitchShifter(private var pitchShiftSemiTones: Float) {
    
    companion object {
        private const val TAG = "PitchShifter"
    }
    
    /**
     * 处理音频数据，实现变调
     * @param input 输入音频数据
     * @param length 数据长度
     * @return 处理后的音频数据
     */
    fun process(input: ByteArray, length: Int): ByteArray {
        if (pitchShiftSemiTones == 0f) {
            // 无变调，直接返回
            return input.copyOf(length)
        }
        
        // 将字节数组转换为short数组（16-bit PCM）
        val samples = bytesToShorts(input, length)
        
        // 计算变调比例
        // 每12个半音为一个八度，变调比例 = 2^(semiTones/12)
        val pitchRatio = Math.pow(2.0, pitchShiftSemiTones / 12.0).toFloat()
        
        // 重采样实现变调
        val outputSamples = resample(samples, pitchRatio)
        
        // 将short数组转换回字节数组
        return shortsToBytes(outputSamples)
    }
    
    /**
     * 更新变调参数
     */
    fun updatePitchShift(semiTones: Float) {
        pitchShiftSemiTones = semiTones
    }
    
    /**
     * 将字节数组转换为short数组
     */
    private fun bytesToShorts(bytes: ByteArray, length: Int): ShortArray {
        val shortBuffer = ByteBuffer.wrap(bytes, 0, length)
            .order(ByteOrder.LITTLE_ENDIAN)
            .asShortBuffer()
        
        val shorts = ShortArray(shortBuffer.remaining())
        shortBuffer.get(shorts)
        return shorts
    }
    
    /**
     * 将short数组转换为字节数组
     */
    private fun shortsToBytes(shorts: ShortArray): ByteArray {
        val byteBuffer = ByteBuffer.allocate(shorts.size * 2)
            .order(ByteOrder.LITTLE_ENDIAN)
        
        for (sample in shorts) {
            byteBuffer.putShort(sample)
        }
        
        return byteBuffer.array()
    }
    
    /**
     * 重采样实现变调
     * 使用线性插值进行重采样
     */
    private fun resample(input: ShortArray, ratio: Float): ShortArray {
        if (ratio == 1.0f) {
            return input
        }
        
        val outputLength = (input.size / ratio).toInt()
        val output = ShortArray(outputLength)
        
        for (i in output.indices) {
            val srcIndex = i * ratio
            val index1 = srcIndex.toInt()
            val index2 = (index1 + 1).coerceAtMost(input.size - 1)
            val fraction = srcIndex - index1
            
            // 线性插值
            val sample1 = input[index1].toFloat()
            val sample2 = input[index2].toFloat()
            val interpolated = sample1 + (sample2 - sample1) * fraction
            
            output[i] = interpolated.toInt().coerceIn(-32768, 32767).toShort()
        }
        
        return output
    }
}

