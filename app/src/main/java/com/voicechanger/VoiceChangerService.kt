package com.voicechanger

import android.app.*
import android.content.Context
import android.content.Intent
import android.os.Binder
import android.os.Build
import android.os.IBinder
import android.util.Log
import androidx.core.app.NotificationCompat
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob

/**
 * 变声器前台服务
 * 负责管理音频处理的生命周期
 */
class VoiceChangerService : Service() {
    
    private val binder = LocalBinder()
    private var audioProcessor: AudioProcessor? = null
    private var currentPitchShift: Float = 0f
    private val serviceScope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    
    companion object {
        private const val TAG = "VoiceChangerService"
        private const val NOTIFICATION_ID = 1
        private const val CHANNEL_ID = "voice_changer_channel"
        
        const val ACTION_START = "com.voicechanger.START"
        const val ACTION_STOP = "com.voicechanger.STOP"
        const val ACTION_UPDATE_PITCH = "com.voicechanger.UPDATE_PITCH"
        
        const val EXTRA_PITCH_SHIFT = "pitch_shift"
    }
    
    inner class LocalBinder : Binder() {
        fun getService(): VoiceChangerService = this@VoiceChangerService
    }
    
    override fun onCreate() {
        super.onCreate()
        createNotificationChannel()
        Log.d(TAG, "Service created")
    }
    
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_START -> {
                val pitchShift = intent.getFloatExtra(EXTRA_PITCH_SHIFT, 0f)
                startProcessing(pitchShift)
            }
            ACTION_STOP -> {
                stopProcessing()
            }
            ACTION_UPDATE_PITCH -> {
                val pitchShift = intent.getFloatExtra(EXTRA_PITCH_SHIFT, 0f)
                updatePitchShift(pitchShift)
            }
        }
        return START_STICKY
    }
    
    override fun onBind(intent: Intent?): IBinder {
        return binder
    }
    
    override fun onDestroy() {
        super.onDestroy()
        stopProcessing()
        Log.d(TAG, "Service destroyed")
    }
    
    /**
     * 启动音频处理
     */
    fun startProcessing(pitchShift: Float = 0f) {
        if (audioProcessor != null) {
            Log.w(TAG, "Audio processing already started")
            return
        }
        
        try {
            currentPitchShift = pitchShift
            audioProcessor = AudioProcessor(
                pitchShift = pitchShift,
                onError = { error ->
                    Log.e(TAG, "Audio processing error", error)
                    stopSelf()
                }
            )
            
            audioProcessor?.start()
            startForeground(NOTIFICATION_ID, createNotification())
            Log.d(TAG, "Audio processing started with pitch shift: $pitchShift")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start audio processing", e)
            stopSelf()
        }
    }
    
    /**
     * 停止音频处理
     */
    fun stopProcessing() {
        audioProcessor?.stop()
        audioProcessor?.release()
        audioProcessor = null
        stopForeground(true)
        Log.d(TAG, "Audio processing stopped")
    }
    
    /**
     * 更新变调参数
     */
    fun updatePitchShift(semiTones: Float) {
        currentPitchShift = semiTones
        
        // 如果服务正在运行，直接更新参数
        audioProcessor?.updatePitchShift(semiTones)
    }
    
    /**
     * 检查服务是否正在运行
     */
    fun isProcessing(): Boolean {
        return audioProcessor != null
    }
    
    /**
     * 获取当前变调参数
     */
    fun getCurrentPitchShift(): Float {
        return currentPitchShift
    }
    
    /**
     * 创建通知渠道（Android 8.0+）
     */
    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                "变声器服务",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "变声器前台服务通知"
                setShowBadge(false)
            }
            
            val notificationManager = getSystemService(NotificationManager::class.java)
            notificationManager.createNotificationChannel(channel)
        }
    }
    
    /**
     * 创建前台服务通知
     */
    private fun createNotification(): Notification {
        val intent = Intent(this, MainActivity::class.java)
        val pendingIntent = PendingIntent.getActivity(
            this,
            0,
            intent,
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        )
        
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("变声器运行中")
            .setContentText("点击返回应用")
            .setSmallIcon(android.R.drawable.ic_media_play)
            .setContentIntent(pendingIntent)
            .setOngoing(true)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
    }
}

