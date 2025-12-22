package com.voicechanger

import android.app.*
import android.content.Intent
import android.os.Binder
import android.os.Build
import android.os.IBinder
import android.util.Log
import androidx.core.app.NotificationCompat

/**
 * 变声服务 - 前台服务，确保持续运行
 * 支持实时预览和录制模式
 */
class VoiceChangerService : Service() {
    
    private val binder = LocalBinder()
    private var audioProcessor: RealtimeAudioProcessor? = null
    private var audioEffectManager: AudioEffectManager? = null
    private var isProcessing = false
    private var isPreviewMode = true // 默认预览模式
    
    companion object {
        private const val TAG = "VoiceChangerService"
        private const val NOTIFICATION_ID = 1001
        private const val CHANNEL_ID = "voice_changer_channel"
        
        const val ACTION_START = "com.voicechanger.START"
        const val ACTION_STOP = "com.voicechanger.STOP"
        const val ACTION_UPDATE_PITCH = "com.voicechanger.UPDATE_PITCH"
        const val ACTION_START_PREVIEW = "com.voicechanger.START_PREVIEW"
        const val ACTION_TOGGLE_MODE = "com.voicechanger.TOGGLE_MODE"
        
        const val EXTRA_PITCH_SHIFT = "pitch_shift"
        const val EXTRA_PREVIEW_MODE = "preview_mode"
    }
    
    inner class LocalBinder : Binder() {
        fun getService(): VoiceChangerService = this@VoiceChangerService
    }
    
    override fun onBind(intent: Intent?): IBinder = binder
    
    override fun onCreate() {
        super.onCreate()
        createNotificationChannel()
        audioEffectManager = AudioEffectManager()
        
        // 检查系统是否支持音频效果
        if (audioEffectManager?.isSystemAudioEffectSupported() == true) {
            Log.i(TAG, "System audio effects are supported")
        } else {
            Log.w(TAG, "System audio effects are NOT supported on this device")
        }
        
        Log.d(TAG, "Service created")
    }
    
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_START -> {
                val pitchShift = intent.getFloatExtra(EXTRA_PITCH_SHIFT, 0f)
                val previewMode = intent.getBooleanExtra(EXTRA_PREVIEW_MODE, true)
                startProcessing(pitchShift, previewMode)
            }
            ACTION_START_PREVIEW -> {
                val pitchShift = intent.getFloatExtra(EXTRA_PITCH_SHIFT, 0f)
                startProcessing(pitchShift, previewMode = true)
            }
            ACTION_UPDATE_PITCH -> {
                val pitchShift = intent.getFloatExtra(EXTRA_PITCH_SHIFT, 0f)
                updatePitchShift(pitchShift)
            }
            ACTION_TOGGLE_MODE -> {
                toggleMode()
            }
            ACTION_STOP -> {
                stopProcessing()
                stopSelf()
            }
        }
        return START_STICKY
    }
    
    /**
     * 开始音频处理
     */
    private fun startProcessing(pitchShift: Float, previewMode: Boolean) {
        if (isProcessing) {
            Log.w(TAG, "Already processing")
            return
        }
        
        try {
            isPreviewMode = previewMode
            
            // 尝试系统级音频效果（如果支持）
            if (!previewMode) {
                val systemSuccess = audioEffectManager?.applySystemPitchShift(pitchShift) ?: false
                if (systemSuccess) {
                    Log.i(TAG, "Using system-level audio effect")
                    isProcessing = true
                    startForeground(NOTIFICATION_ID, createNotification("系统级变声已启用"))
                    return
                }
            }
            
            // 回退到实时处理器
            val modeText = if (previewMode) "预览模式" else "录制模式"
            startForeground(NOTIFICATION_ID, createNotification("正在变声中... ($modeText)"))
            
            // 创建并启动音频处理器
            audioProcessor = RealtimeAudioProcessor(
                pitchShift = pitchShift,
                previewMode = previewMode,
                onError = { exception ->
                    Log.e(TAG, "Audio processing error", exception)
                    stopProcessing()
                }
            )
            audioProcessor?.start()
            isProcessing = true
            
            Log.i(TAG, "Processing started - Pitch: $pitchShift, Mode: $modeText")
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start processing", e)
            stopProcessing()
        }
    }
    
    /**
     * 停止音频处理
     */
    private fun stopProcessing() {
        if (!isProcessing) return
        
        try {
            audioProcessor?.stop()
            audioProcessor?.release()
            audioProcessor = null
            isProcessing = false
            
            Log.i(TAG, "Processing stopped")
            
        } catch (e: Exception) {
            Log.e(TAG, "Error stopping processing", e)
        }
    }
    
    /**
     * 切换模式
     */
    private fun toggleMode() {
        if (isProcessing) {
            val currentPitch = audioProcessor?.let { 0f } ?: 0f
            stopProcessing()
            startProcessing(currentPitch, !isPreviewMode)
        }
    }
    
    /**
     * 更新变调参数
     */
    fun updatePitchShift(semiTones: Float) {
        audioProcessor?.updatePitchShift(semiTones)
        
        // 更新通知
        val modeText = if (isPreviewMode) "预览" else "录制"
        val notification = createNotification("正在变声中... ($modeText, ${semiTones.toInt()}半音)")
        val notificationManager = getSystemService(NOTIFICATION_SERVICE) as NotificationManager
        notificationManager.notify(NOTIFICATION_ID, notification)
        
        Log.d(TAG, "Pitch updated to: $semiTones")
    }
    
    /**
     * 设置监听音量
     */
    fun setMonitorVolume(volume: Float) {
        audioProcessor?.setMonitorVolume(volume)
    }
    
    /**
     * 检查是否正在处理
     */
    fun isProcessing(): Boolean = isProcessing
    
    /**
     * 检查当前模式
     */
    fun isPreviewMode(): Boolean = isPreviewMode
    
    /**
     * 创建通知渠道
     */
    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                "变声服务",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "保持变声功能运行"
                setShowBadge(false)
            }
            
            val notificationManager = getSystemService(NotificationManager::class.java)
            notificationManager.createNotificationChannel(channel)
        }
    }
    
    /**
     * 创建通知
     */
    private fun createNotification(text: String): Notification {
        val intent = Intent(this, MainActivity::class.java)
        val pendingIntent = PendingIntent.getActivity(
            this,
            0,
            intent,
            PendingIntent.FLAG_IMMUTABLE
        )
        
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("王者陪玩变声器")
            .setContentText(text)
            .setSmallIcon(android.R.drawable.ic_btn_speak_now)
            .setContentIntent(pendingIntent)
            .setOngoing(true)
            .build()
    }
    
    override fun onDestroy() {
        super.onDestroy()
        stopProcessing()
        audioEffectManager?.release()
        audioEffectManager = null
        Log.d(TAG, "Service destroyed")
    }
}

import android.app.*
import android.content.Intent
import android.os.Binder
import android.os.Build
import android.os.IBinder
import android.util.Log
import androidx.core.app.NotificationCompat

/**
 * 变声服务 - 前台服务，确保持续运行
 * 支持实时预览和录制模式
 */
class VoiceChangerService : Service() {
    
    private val binder = LocalBinder()
    private var audioProcessor: RealtimeAudioProcessor? = null
    private var audioEffectManager: AudioEffectManager? = null
    private var isProcessing = false
    private var isPreviewMode = true // 默认预览模式
    
    companion object {
        private const val TAG = "VoiceChangerService"
        private const val NOTIFICATION_ID = 1001
        private const val CHANNEL_ID = "voice_changer_channel"
        
        const val ACTION_START = "com.voicechanger.START"
        const val ACTION_STOP = "com.voicechanger.STOP"
        const val ACTION_UPDATE_PITCH = "com.voicechanger.UPDATE_PITCH"
        const val ACTION_START_PREVIEW = "com.voicechanger.START_PREVIEW"
        const val ACTION_TOGGLE_MODE = "com.voicechanger.TOGGLE_MODE"
        
        const val EXTRA_PITCH_SHIFT = "pitch_shift"
        const val EXTRA_PREVIEW_MODE = "preview_mode"
    }
    
    inner class LocalBinder : Binder() {
        fun getService(): VoiceChangerService = this@VoiceChangerService
    }
    
    override fun onBind(intent: Intent?): IBinder = binder
    
    override fun onCreate() {
        super.onCreate()
        createNotificationChannel()
        audioEffectManager = AudioEffectManager()
        
        // 检查系统是否支持音频效果
        if (audioEffectManager?.isSystemAudioEffectSupported() == true) {
            Log.i(TAG, "System audio effects are supported")
        } else {
            Log.w(TAG, "System audio effects are NOT supported on this device")
        }
        
        Log.d(TAG, "Service created")
    }
    
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_START -> {
                val pitchShift = intent.getFloatExtra(EXTRA_PITCH_SHIFT, 0f)
                val previewMode = intent.getBooleanExtra(EXTRA_PREVIEW_MODE, true)
                startProcessing(pitchShift, previewMode)
            }
            ACTION_START_PREVIEW -> {
                val pitchShift = intent.getFloatExtra(EXTRA_PITCH_SHIFT, 0f)
                startProcessing(pitchShift, previewMode = true)
            }
            ACTION_UPDATE_PITCH -> {
                val pitchShift = intent.getFloatExtra(EXTRA_PITCH_SHIFT, 0f)
                updatePitchShift(pitchShift)
            }
            ACTION_TOGGLE_MODE -> {
                toggleMode()
            }
            ACTION_STOP -> {
                stopProcessing()
                stopSelf()
            }
        }
        return START_STICKY
    }
    
    /**
     * 开始音频处理
     */
    private fun startProcessing(pitchShift: Float, previewMode: Boolean) {
        if (isProcessing) {
            Log.w(TAG, "Already processing")
            return
        }
        
        try {
            isPreviewMode = previewMode
            
            // 尝试系统级音频效果（如果支持）
            if (!previewMode) {
                val systemSuccess = audioEffectManager?.applySystemPitchShift(pitchShift) ?: false
                if (systemSuccess) {
                    Log.i(TAG, "Using system-level audio effect")
                    isProcessing = true
                    startForeground(NOTIFICATION_ID, createNotification("系统级变声已启用"))
                    return
                }
            }
            
            // 回退到实时处理器
            val modeText = if (previewMode) "预览模式" else "录制模式"
            startForeground(NOTIFICATION_ID, createNotification("正在变声中... ($modeText)"))
            
            // 创建并启动音频处理器
            audioProcessor = RealtimeAudioProcessor(
                pitchShift = pitchShift,
                previewMode = previewMode,
                onError = { exception ->
                    Log.e(TAG, "Audio processing error", exception)
                    stopProcessing()
                }
            )
            audioProcessor?.start()
            isProcessing = true
            
            Log.i(TAG, "Processing started - Pitch: $pitchShift, Mode: $modeText")
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start processing", e)
            stopProcessing()
        }
    }
    
    /**
     * 停止音频处理
     */
    private fun stopProcessing() {
        if (!isProcessing) return
        
        try {
            audioProcessor?.stop()
            audioProcessor?.release()
            audioProcessor = null
            isProcessing = false
            
            Log.i(TAG, "Processing stopped")
            
        } catch (e: Exception) {
            Log.e(TAG, "Error stopping processing", e)
        }
    }
    
    /**
     * 切换模式
     */
    private fun toggleMode() {
        if (isProcessing) {
            val currentPitch = audioProcessor?.let { 0f } ?: 0f
            stopProcessing()
            startProcessing(currentPitch, !isPreviewMode)
        }
    }
    
    /**
     * 更新变调参数
     */
    fun updatePitchShift(semiTones: Float) {
        audioProcessor?.updatePitchShift(semiTones)
        
        // 更新通知
        val modeText = if (isPreviewMode) "预览" else "录制"
        val notification = createNotification("正在变声中... ($modeText, ${semiTones.toInt()}半音)")
        val notificationManager = getSystemService(NOTIFICATION_SERVICE) as NotificationManager
        notificationManager.notify(NOTIFICATION_ID, notification)
        
        Log.d(TAG, "Pitch updated to: $semiTones")
    }
    
    /**
     * 设置监听音量
     */
    fun setMonitorVolume(volume: Float) {
        audioProcessor?.setMonitorVolume(volume)
    }
    
    /**
     * 检查是否正在处理
     */
    fun isProcessing(): Boolean = isProcessing
    
    /**
     * 检查当前模式
     */
    fun isPreviewMode(): Boolean = isPreviewMode
    
    /**
     * 创建通知渠道
     */
    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                "变声服务",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "保持变声功能运行"
                setShowBadge(false)
            }
            
            val notificationManager = getSystemService(NotificationManager::class.java)
            notificationManager.createNotificationChannel(channel)
        }
    }
    
    /**
     * 创建通知
     */
    private fun createNotification(text: String): Notification {
        val intent = Intent(this, MainActivity::class.java)
        val pendingIntent = PendingIntent.getActivity(
            this,
            0,
            intent,
            PendingIntent.FLAG_IMMUTABLE
        )
        
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("王者陪玩变声器")
            .setContentText(text)
            .setSmallIcon(android.R.drawable.ic_btn_speak_now)
            .setContentIntent(pendingIntent)
            .setOngoing(true)
            .build()
    }
    
    override fun onDestroy() {
        super.onDestroy()
        stopProcessing()
        audioEffectManager?.release()
        audioEffectManager = null
        Log.d(TAG, "Service destroyed")
    }
}
