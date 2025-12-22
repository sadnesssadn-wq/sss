package com.voicechanger

import android.content.Context
import android.media.AudioManager
import android.provider.Settings
import android.util.Log

/**
 * 系统音频路由器
 * 基于对"声吾控"APK 的技术分析实现
 * 
 * 核心原理：
 * 1. 使用 WRITE_SETTINGS 权限修改系统音频路由
 * 2. 通过 AudioManager 强制音频流方向
 * 3. 让游戏"认为"处理后的音频是麦克风输入
 */
class SystemAudioRouter(
    private val context: Context,
    private val audioManager: AudioManager
) {
    companion object {
        private const val TAG = "SystemAudioRouter"
    }
    
    /**
     * 启用游戏变声模式
     * 模仿"声吾控"的音频路由方案
     */
    fun enableGameVoiceMode(): Boolean {
        return try {
            // 1. 设置为通话模式（关键！）
            audioManager.mode = AudioManager.MODE_IN_COMMUNICATION
            
            // 2. 强制使用扬声器输出（让游戏能录到）
            @Suppress("DEPRECATION")
            audioManager.isSpeakerphoneOn = false
            
            // 3. 启用蓝牙 SCO（如果有蓝牙耳机）
            if (audioManager.isBluetoothScoAvailableOffCall) {
                audioManager.startBluetoothSco()
                audioManager.isBluetoothScoOn = true
            }
            
            // 4. 修改系统设置（需要 WRITE_SETTINGS 权限）
            if (Settings.System.canWrite(context)) {
                // 强制音频路由
                Settings.System.putInt(
                    context.contentResolver,
                    "bluetooth_sco_on",
                    1
                )
            }
            
            Log.i(TAG, "Game voice mode enabled")
            true
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to enable game voice mode", e)
            false
        }
    }
    
    /**
     * 禁用游戏变声模式，恢复正常
     */
    fun disableGameVoiceMode() {
        try {
            audioManager.mode = AudioManager.MODE_NORMAL
            
            @Suppress("DEPRECATION")
            audioManager.isSpeakerphoneOn = false
            
            if (audioManager.isBluetoothScoOn) {
                audioManager.stopBluetoothSco()
                audioManager.isBluetoothScoOn = false
            }
            
            Log.i(TAG, "Game voice mode disabled")
            
        } catch (e: Exception) {
            Log.e(TAG, "Error disabling game voice mode", e)
        }
    }
    
    /**
     * 检查是否有必要权限
     */
    fun hasRequiredPermissions(): Boolean {
        return Settings.System.canWrite(context)
    }
    
    /**
     * 请求 WRITE_SETTINGS 权限
     */
    fun requestWriteSettingsPermission(): android.content.Intent {
        return android.content.Intent(Settings.ACTION_MANAGE_WRITE_SETTINGS).apply {
            data = android.net.Uri.parse("package:${context.packageName}")
        }
    }
}

