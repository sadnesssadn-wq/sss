package com.voicechanger

import android.Manifest
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.ServiceConnection
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.os.IBinder
import android.util.Log
import android.widget.Button
import android.widget.SeekBar
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat

/**
 * 主界面Activity - 游戏陪玩专用版
 */
class MainActivity : AppCompatActivity() {
    
    private lateinit var btnToggleService: Button
    private lateinit var tvStatus: TextView
    private lateinit var tvSelectedPreset: TextView
    private lateinit var btnSweetFemale: Button
    private lateinit var btnMagneticMale: Button
    private lateinit var btnCuteLoli: Button
    private lateinit var btnOriginal: Button
    private lateinit var switchGameMode: androidx.appcompat.widget.SwitchCompat
    
    private var voiceChangerService: VoiceChangerService? = null
    private var isServiceBound = false
    private var isServiceRunning = false
    
    private val serviceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, service: IBinder?) {
            val binder = service as VoiceChangerService.LocalBinder
            voiceChangerService = binder.getService()
            isServiceBound = true
            updateUI()
            Log.d(TAG, "Service connected")
        }
        
        override fun onServiceDisconnected(name: ComponentName?) {
            voiceChangerService = null
            isServiceBound = false
            Log.d(TAG, "Service disconnected")
        }
    }
    
    companion object {
        private const val TAG = "MainActivity"
        private const val PERMISSION_REQUEST_CODE = 1001
    }
    
    private var gameOptimizer: GameModeOptimizer? = null
    private var selectedPreset: GameVoicePreset = GameVoicePreset.SWEET_FEMALE
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main_game)
        
        gameOptimizer = GameModeOptimizer(this)
        initViews()
        setupListeners()
        checkPermissions()
        bindService()
        
        // 默认启用游戏模式
        gameOptimizer?.enableGameMode()
    }
    
    override fun onResume() {
        super.onResume()
        updateUI()
    }
    
    override fun onDestroy() {
        super.onDestroy()
        if (isServiceBound) {
            unbindService(serviceConnection)
            isServiceBound = false
        }
    }
    
    /**
     * 初始化视图
     */
    private fun initViews() {
        btnToggleService = findViewById(R.id.btnToggleService)
        tvStatus = findViewById(R.id.tvStatus)
        tvSelectedPreset = findViewById(R.id.tvSelectedPreset)
        btnSweetFemale = findViewById(R.id.btnSweetFemale)
        btnMagneticMale = findViewById(R.id.btnMagneticMale)
        btnCuteLoli = findViewById(R.id.btnCuteLoli)
        btnOriginal = findViewById(R.id.btnOriginal)
        switchGameMode = findViewById(R.id.switchGameMode)
        
        // 设置默认选中状态
        updatePresetSelection(selectedPreset)
    }
    
    /**
     * 设置监听器
     */
    private fun setupListeners() {
        // 服务开关按钮
        btnToggleService.setOnClickListener {
            if (checkPermissions()) {
                toggleService()
            }
        }
        
        // 音效预设按钮
        btnSweetFemale.setOnClickListener { applyGamePreset(GameVoicePreset.SWEET_FEMALE) }
        btnMagneticMale.setOnClickListener { applyGamePreset(GameVoicePreset.MAGNETIC_MALE) }
        btnCuteLoli.setOnClickListener { applyGamePreset(GameVoicePreset.CUTE_LOLI) }
        btnOriginal.setOnClickListener { applyGamePreset(GameVoicePreset.ORIGINAL) }
        
        // 游戏模式开关
        switchGameMode.setOnCheckedChangeListener { _, isChecked ->
            if (isChecked) {
                gameOptimizer?.enableGameMode()
                Toast.makeText(this, "已启用游戏模式（超低延迟）", Toast.LENGTH_SHORT).show()
            } else {
                gameOptimizer?.disableGameMode()
                Toast.makeText(this, "已切换到标准模式", Toast.LENGTH_SHORT).show()
            }
        }
    }
    
    /**
     * 检查权限
     */
    private fun checkPermissions(): Boolean {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (ContextCompat.checkSelfPermission(
                    this,
                    Manifest.permission.RECORD_AUDIO
                ) != PackageManager.PERMISSION_GRANTED
            ) {
                ActivityCompat.requestPermissions(
                    this,
                    arrayOf(Manifest.permission.RECORD_AUDIO),
                    PERMISSION_REQUEST_CODE
                )
                return false
            }
        }
        return true
    }
    
    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode == PERMISSION_REQUEST_CODE) {
            if (grantResults.isNotEmpty() && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                Toast.makeText(this, "权限已授予", Toast.LENGTH_SHORT).show()
            } else {
                Toast.makeText(this, "需要录音权限才能使用变声功能", Toast.LENGTH_LONG).show()
            }
        }
    }
    
    /**
     * 绑定服务
     */
    private fun bindService() {
        val intent = Intent(this, VoiceChangerService::class.java)
        bindService(intent, serviceConnection, Context.BIND_AUTO_CREATE)
    }
    
    /**
     * 切换服务状态
     */
    private fun toggleService() {
        if (!isServiceBound) {
            Toast.makeText(this, "服务未连接", Toast.LENGTH_SHORT).show()
            return
        }
        
        val intent = Intent(this, VoiceChangerService::class.java)
        
        if (isServiceRunning) {
            // 停止服务
            intent.action = VoiceChangerService.ACTION_STOP
            startService(intent)
            isServiceRunning = false
            Toast.makeText(this, "已停止变声", Toast.LENGTH_SHORT).show()
        } else {
            // 启动服务（使用选中的预设）
            intent.action = VoiceChangerService.ACTION_START
            intent.putExtra(VoiceChangerService.EXTRA_PITCH_SHIFT, selectedPreset.pitchSemiTones)
            startService(intent)
            isServiceRunning = true
            
            // 显示延迟信息
            val latency = gameOptimizer?.getEstimatedLatency() ?: 100
            Toast.makeText(this, 
                "已启动 ${selectedPreset.displayName}\n预计延迟：${latency}ms", 
                Toast.LENGTH_LONG).show()
        }
        
        updateUI()
    }
    
    /**
     * 应用游戏音效预设
     */
    private fun applyGamePreset(preset: GameVoicePreset) {
        selectedPreset = preset
        updatePresetSelection(preset)
        
        // 如果服务正在运行，更新变调参数
        if (isServiceRunning && isServiceBound) {
            voiceChangerService?.updatePitchShift(preset.pitchSemiTones)
        }
        
        Toast.makeText(this, "已选择：${preset.getFullDescription()}", Toast.LENGTH_SHORT).show()
    }
    
    /**
     * 更新预设选中状态
     */
    private fun updatePresetSelection(preset: GameVoicePreset) {
        // 重置所有按钮的透明度
        btnSweetFemale.alpha = 0.5f
        btnMagneticMale.alpha = 0.5f
        btnCuteLoli.alpha = 0.5f
        btnOriginal.alpha = 0.5f
        
        // 高亮选中的按钮
        when (preset) {
            GameVoicePreset.SWEET_FEMALE -> btnSweetFemale.alpha = 1.0f
            GameVoicePreset.MAGNETIC_MALE -> btnMagneticMale.alpha = 1.0f
            GameVoicePreset.CUTE_LOLI -> btnCuteLoli.alpha = 1.0f
            GameVoicePreset.ORIGINAL -> btnOriginal.alpha = 1.0f
        }
        
        // 更新显示
        tvSelectedPreset.text = "当前：${preset.displayName}"
    }
    
    /**
     * 更新UI状态
     */
    private fun updateUI() {
        if (isServiceBound) {
            isServiceRunning = voiceChangerService?.isProcessing() ?: false
        }
        
        if (isServiceRunning) {
            btnToggleService.text = "⏹ 停止变声"
            btnToggleService.backgroundTintList = ContextCompat.getColorStateList(this, android.R.color.holo_red_dark)
            tvStatus.text = "● 变声中"
            tvStatus.setTextColor(ContextCompat.getColor(this, android.R.color.holo_green_dark))
        } else {
            btnToggleService.text = "▶ 开始变声"
            btnToggleService.backgroundTintList = ContextCompat.getColorStateList(this, android.R.color.holo_green_dark)
            tvStatus.text = "● 未启动"
            tvStatus.setTextColor(ContextCompat.getColor(this, android.R.color.darker_gray))
        }
    }
}


import android.Manifest
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.ServiceConnection
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.os.IBinder
import android.util.Log
import android.widget.Button
import android.widget.SeekBar
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat

/**
 * 主界面Activity - 游戏陪玩专用版
 */
class MainActivity : AppCompatActivity() {
    
    private lateinit var btnToggleService: Button
    private lateinit var tvStatus: TextView
    private lateinit var tvSelectedPreset: TextView
    private lateinit var btnSweetFemale: Button
    private lateinit var btnMagneticMale: Button
    private lateinit var btnCuteLoli: Button
    private lateinit var btnOriginal: Button
    private lateinit var switchGameMode: androidx.appcompat.widget.SwitchCompat
    
    private var voiceChangerService: VoiceChangerService? = null
    private var isServiceBound = false
    private var isServiceRunning = false
    
    private val serviceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, service: IBinder?) {
            val binder = service as VoiceChangerService.LocalBinder
            voiceChangerService = binder.getService()
            isServiceBound = true
            updateUI()
            Log.d(TAG, "Service connected")
        }
        
        override fun onServiceDisconnected(name: ComponentName?) {
            voiceChangerService = null
            isServiceBound = false
            Log.d(TAG, "Service disconnected")
        }
    }
    
    companion object {
        private const val TAG = "MainActivity"
        private const val PERMISSION_REQUEST_CODE = 1001
    }
    
    private var gameOptimizer: GameModeOptimizer? = null
    private var selectedPreset: GameVoicePreset = GameVoicePreset.SWEET_FEMALE
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main_game)
        
        gameOptimizer = GameModeOptimizer(this)
        initViews()
        setupListeners()
        checkPermissions()
        bindService()
        
        // 默认启用游戏模式
        gameOptimizer?.enableGameMode()
    }
    
    override fun onResume() {
        super.onResume()
        updateUI()
    }
    
    override fun onDestroy() {
        super.onDestroy()
        if (isServiceBound) {
            unbindService(serviceConnection)
            isServiceBound = false
        }
    }
    
    /**
     * 初始化视图
     */
    private fun initViews() {
        btnToggleService = findViewById(R.id.btnToggleService)
        tvStatus = findViewById(R.id.tvStatus)
        tvSelectedPreset = findViewById(R.id.tvSelectedPreset)
        btnSweetFemale = findViewById(R.id.btnSweetFemale)
        btnMagneticMale = findViewById(R.id.btnMagneticMale)
        btnCuteLoli = findViewById(R.id.btnCuteLoli)
        btnOriginal = findViewById(R.id.btnOriginal)
        switchGameMode = findViewById(R.id.switchGameMode)
        
        // 设置默认选中状态
        updatePresetSelection(selectedPreset)
    }
    
    /**
     * 设置监听器
     */
    private fun setupListeners() {
        // 服务开关按钮
        btnToggleService.setOnClickListener {
            if (checkPermissions()) {
                toggleService()
            }
        }
        
        // 音效预设按钮
        btnSweetFemale.setOnClickListener { applyGamePreset(GameVoicePreset.SWEET_FEMALE) }
        btnMagneticMale.setOnClickListener { applyGamePreset(GameVoicePreset.MAGNETIC_MALE) }
        btnCuteLoli.setOnClickListener { applyGamePreset(GameVoicePreset.CUTE_LOLI) }
        btnOriginal.setOnClickListener { applyGamePreset(GameVoicePreset.ORIGINAL) }
        
        // 游戏模式开关
        switchGameMode.setOnCheckedChangeListener { _, isChecked ->
            if (isChecked) {
                gameOptimizer?.enableGameMode()
                Toast.makeText(this, "已启用游戏模式（超低延迟）", Toast.LENGTH_SHORT).show()
            } else {
                gameOptimizer?.disableGameMode()
                Toast.makeText(this, "已切换到标准模式", Toast.LENGTH_SHORT).show()
            }
        }
    }
    
    /**
     * 检查权限
     */
    private fun checkPermissions(): Boolean {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (ContextCompat.checkSelfPermission(
                    this,
                    Manifest.permission.RECORD_AUDIO
                ) != PackageManager.PERMISSION_GRANTED
            ) {
                ActivityCompat.requestPermissions(
                    this,
                    arrayOf(Manifest.permission.RECORD_AUDIO),
                    PERMISSION_REQUEST_CODE
                )
                return false
            }
        }
        return true
    }
    
    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode == PERMISSION_REQUEST_CODE) {
            if (grantResults.isNotEmpty() && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                Toast.makeText(this, "权限已授予", Toast.LENGTH_SHORT).show()
            } else {
                Toast.makeText(this, "需要录音权限才能使用变声功能", Toast.LENGTH_LONG).show()
            }
        }
    }
    
    /**
     * 绑定服务
     */
    private fun bindService() {
        val intent = Intent(this, VoiceChangerService::class.java)
        bindService(intent, serviceConnection, Context.BIND_AUTO_CREATE)
    }
    
    /**
     * 切换服务状态
     */
    private fun toggleService() {
        if (!isServiceBound) {
            Toast.makeText(this, "服务未连接", Toast.LENGTH_SHORT).show()
            return
        }
        
        val intent = Intent(this, VoiceChangerService::class.java)
        
        if (isServiceRunning) {
            // 停止服务
            intent.action = VoiceChangerService.ACTION_STOP
            startService(intent)
            isServiceRunning = false
            Toast.makeText(this, "已停止变声", Toast.LENGTH_SHORT).show()
        } else {
            // 启动服务（使用选中的预设）
            intent.action = VoiceChangerService.ACTION_START
            intent.putExtra(VoiceChangerService.EXTRA_PITCH_SHIFT, selectedPreset.pitchSemiTones)
            startService(intent)
            isServiceRunning = true
            
            // 显示延迟信息
            val latency = gameOptimizer?.getEstimatedLatency() ?: 100
            Toast.makeText(this, 
                "已启动 ${selectedPreset.displayName}\n预计延迟：${latency}ms", 
                Toast.LENGTH_LONG).show()
        }
        
        updateUI()
    }
    
    /**
     * 应用游戏音效预设
     */
    private fun applyGamePreset(preset: GameVoicePreset) {
        selectedPreset = preset
        updatePresetSelection(preset)
        
        // 如果服务正在运行，更新变调参数
        if (isServiceRunning && isServiceBound) {
            voiceChangerService?.updatePitchShift(preset.pitchSemiTones)
        }
        
        Toast.makeText(this, "已选择：${preset.getFullDescription()}", Toast.LENGTH_SHORT).show()
    }
    
    /**
     * 更新预设选中状态
     */
    private fun updatePresetSelection(preset: GameVoicePreset) {
        // 重置所有按钮的透明度
        btnSweetFemale.alpha = 0.5f
        btnMagneticMale.alpha = 0.5f
        btnCuteLoli.alpha = 0.5f
        btnOriginal.alpha = 0.5f
        
        // 高亮选中的按钮
        when (preset) {
            GameVoicePreset.SWEET_FEMALE -> btnSweetFemale.alpha = 1.0f
            GameVoicePreset.MAGNETIC_MALE -> btnMagneticMale.alpha = 1.0f
            GameVoicePreset.CUTE_LOLI -> btnCuteLoli.alpha = 1.0f
            GameVoicePreset.ORIGINAL -> btnOriginal.alpha = 1.0f
        }
        
        // 更新显示
        tvSelectedPreset.text = "当前：${preset.displayName}"
    }
    
    /**
     * 更新UI状态
     */
    private fun updateUI() {
        if (isServiceBound) {
            isServiceRunning = voiceChangerService?.isProcessing() ?: false
        }
        
        if (isServiceRunning) {
            btnToggleService.text = "⏹ 停止变声"
            btnToggleService.backgroundTintList = ContextCompat.getColorStateList(this, android.R.color.holo_red_dark)
            tvStatus.text = "● 变声中"
            tvStatus.setTextColor(ContextCompat.getColor(this, android.R.color.holo_green_dark))
        } else {
            btnToggleService.text = "▶ 开始变声"
            btnToggleService.backgroundTintList = ContextCompat.getColorStateList(this, android.R.color.holo_green_dark)
            tvStatus.text = "● 未启动"
            tvStatus.setTextColor(ContextCompat.getColor(this, android.R.color.darker_gray))
        }
    }
}

