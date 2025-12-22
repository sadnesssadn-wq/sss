package com.voicechanger

import android.app.Service
import android.content.Intent
import android.graphics.PixelFormat
import android.os.Build
import android.os.IBinder
import android.util.Log
import android.view.Gravity
import android.view.LayoutInflater
import android.view.MotionEvent
import android.view.View
import android.view.WindowManager
import android.widget.Button
import android.widget.LinearLayout
import android.widget.TextView

/**
 * 悬浮窗控制服务
 * 在游戏中显示快捷控制面板
 */
class FloatingControlService : Service() {
    
    private var windowManager: WindowManager? = null
    private var floatingView: View? = null
    private var isExpanded = false
    
    private var currentPreset: GameVoicePreset = GameVoicePreset.SWEET_FEMALE
    
    companion object {
        private const val TAG = "FloatingControlService"
        const val ACTION_SHOW = "com.voicechanger.SHOW_FLOATING"
        const val ACTION_HIDE = "com.voicechanger.HIDE_FLOATING"
        const val ACTION_UPDATE_PRESET = "com.voicechanger.UPDATE_PRESET"
        const val EXTRA_PRESET = "preset"
    }
    
    override fun onBind(intent: Intent?): IBinder? = null
    
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_SHOW -> showFloatingWindow()
            ACTION_HIDE -> hideFloatingWindow()
            ACTION_UPDATE_PRESET -> {
                val presetName = intent.getStringExtra(EXTRA_PRESET)
                presetName?.let { updatePresetDisplay(it) }
            }
        }
        return START_STICKY
    }
    
    /**
     * 显示悬浮窗
     */
    private fun showFloatingWindow() {
        if (floatingView != null) {
            Log.w(TAG, "Floating window already shown")
            return
        }
        
        try {
            windowManager = getSystemService(WINDOW_SERVICE) as WindowManager
            
            // 创建悬浮窗视图
            floatingView = createFloatingView()
            
            // 设置悬浮窗参数
            val params = WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                    WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
                } else {
                    @Suppress("DEPRECATION")
                    WindowManager.LayoutParams.TYPE_PHONE
                },
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT
            )
            
            params.gravity = Gravity.TOP or Gravity.END
            params.x = 0
            params.y = 100
            
            // 添加到窗口
            windowManager?.addView(floatingView, params)
            
            Log.i(TAG, "Floating window shown")
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to show floating window", e)
        }
    }
    
    /**
     * 创建悬浮窗视图
     */
    private fun createFloatingView(): View {
        // 创建简单的悬浮按钮（因为没有 XML 布局）
        val layout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(16, 16, 16, 16)
            setBackgroundColor(0xCC000000.toInt())
        }
        
        // 标题
        val tvTitle = TextView(this).apply {
            text = "🎤 变声器"
            textSize = 14f
            setTextColor(0xFFFFFFFF.toInt())
        }
        layout.addView(tvTitle)
        
        // 当前预设
        val tvPreset = TextView(this).apply {
            id = View.generateViewId()
            text = currentPreset.displayName
            textSize = 12f
            setTextColor(0xFFFFFF00.toInt())
            setPadding(0, 8, 0, 8)
        }
        layout.addView(tvPreset)
        
        // 快捷按钮容器
        val buttonContainer = LinearLayout(this).apply {
            id = View.generateViewId()
            orientation = LinearLayout.VERTICAL
            visibility = if (isExpanded) View.VISIBLE else View.GONE
        }
        
        // 添加快捷按钮
        GameVoicePreset.values().forEach { preset ->
            val button = Button(this).apply {
                text = preset.displayName
                textSize = 12f
                setPadding(16, 8, 16, 8)
                setOnClickListener {
                    applyPreset(preset)
                }
            }
            buttonContainer.addView(button)
        }
        
        layout.addView(buttonContainer)
        
        // 展开/收起按钮
        val btnToggle = Button(this).apply {
            text = if (isExpanded) "▲ 收起" else "▼ 展开"
            textSize = 12f
            setOnClickListener {
                isExpanded = !isExpanded
                buttonContainer.visibility = if (isExpanded) View.VISIBLE else View.GONE
                text = if (isExpanded) "▲ 收起" else "▼ 展开"
            }
        }
        layout.addView(btnToggle)
        
        // 添加拖动功能
        setupDraggable(layout)
        
        return layout
    }
    
    /**
     * 设置可拖动
     */
    private fun setupDraggable(view: View) {
        var lastX = 0
        var lastY = 0
        var paramX = 0
        var paramY = 0
        
        view.setOnTouchListener { v, event ->
            val params = floatingView?.layoutParams as? WindowManager.LayoutParams ?: return@setOnTouchListener false
            
            when (event.action) {
                MotionEvent.ACTION_DOWN -> {
                    lastX = event.rawX.toInt()
                    lastY = event.rawY.toInt()
                    paramX = params.x
                    paramY = params.y
                }
                MotionEvent.ACTION_MOVE -> {
                    val dx = event.rawX.toInt() - lastX
                    val dy = event.rawY.toInt() - lastY
                    params.x = paramX - dx
                    params.y = paramY + dy
                    windowManager?.updateViewLayout(floatingView, params)
                }
            }
            false
        }
    }
    
    /**
     * 应用预设
     */
    private fun applyPreset(preset: GameVoicePreset) {
        currentPreset = preset
        
        // 通知主服务更新变调
        val intent = Intent(this, VoiceChangerService::class.java).apply {
            action = VoiceChangerService.ACTION_UPDATE_PITCH
            putExtra(VoiceChangerService.EXTRA_PITCH_SHIFT, preset.pitchSemiTones)
        }
        startService(intent)
        
        // 更新显示
        floatingView?.findViewById<TextView>(View.generateViewId())?.text = preset.displayName
        
        Log.i(TAG, "Preset changed to: ${preset.displayName}")
    }
    
    /**
     * 更新预设显示
     */
    private fun updatePresetDisplay(presetName: String) {
        floatingView?.findViewById<TextView>(View.generateViewId())?.text = presetName
    }
    
    /**
     * 隐藏悬浮窗
     */
    private fun hideFloatingWindow() {
        try {
            floatingView?.let {
                windowManager?.removeView(it)
                floatingView = null
            }
            Log.i(TAG, "Floating window hidden")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to hide floating window", e)
        }
    }
    
    override fun onDestroy() {
        super.onDestroy()
        hideFloatingWindow()
    }
}

