package com.voicechanger

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.media.AudioManager
import android.os.Build
import android.os.Bundle
import android.util.Log
import android.view.ViewGroup
import android.widget.Button
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

/**
 * 专业变声器主界面
 * 展示所有专业音色预设
 */
class ProfessionalMainActivity : AppCompatActivity() {
    
    private lateinit var tvStatus: TextView
    private lateinit var tvCurrentPreset: TextView
    private lateinit var layoutQuickPresets: LinearLayout
    private lateinit var recyclerView: RecyclerView
    private lateinit var btnTest: Button
    private lateinit var btnToggle: Button
    
    private var audioRouter: MediaProjectionAudioRouter? = null
    private var audioManager: AudioManager? = null
    private var isRunning = false
    private var currentPreset = ProfessionalVoicePreset.ORIGINAL
    
    private lateinit var presetAdapter: VoicePresetAdapter
    
    companion object {
        private const val TAG = "ProfessionalMainActivity"
        private const val PERMISSION_REQUEST_CODE = 1001
    }
    
    // MediaProjection 授权结果处理
    private val mediaProjectionLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { result ->
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            audioRouter?.onProjectionResult(result.resultCode, result.data)
            if (result.resultCode == RESULT_OK) {
                startVoiceChanger()
            } else {
                Toast.makeText(this, "需要授权才能使用变声功能", Toast.LENGTH_LONG).show()
            }
        }
    }
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main_professional)
        
        audioManager = getSystemService(AUDIO_SERVICE) as AudioManager
        
        initViews()
        setupPresetList()
        setupQuickPresets()
        setupListeners()
        checkPermissions()
        
        // 初始化音频路由器
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            audioRouter = MediaProjectionAudioRouter(
                context = this,
                audioManager = audioManager!!,
                onError = { exception ->
                    Log.e(TAG, "Audio router error", exception)
                    runOnUiThread {
                        Toast.makeText(this, "错误: ${exception.message}", Toast.LENGTH_SHORT).show()
                        stopVoiceChanger()
                    }
                }
            )
        } else {
            Toast.makeText(this, "需要 Android 10 及以上版本", Toast.LENGTH_LONG).show()
        }
    }
    
    private fun initViews() {
        tvStatus = findViewById(R.id.tvStatus)
        tvCurrentPreset = findViewById(R.id.tvCurrentPreset)
        layoutQuickPresets = findViewById(R.id.layoutQuickPresets)
        recyclerView = findViewById(R.id.recyclerViewPresets)
        btnTest = findViewById(R.id.btnTest)
        btnToggle = findViewById(R.id.btnToggle)
    }
    
    /**
     * 设置预设列表
     */
    private fun setupPresetList() {
        val allPresets = ProfessionalVoicePreset.values().toList()
        presetAdapter = VoicePresetAdapter(allPresets) { preset ->
            onPresetSelected(preset)
        }
        
        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = presetAdapter
    }
    
    /**
     * 设置快捷预设（热门音色）
     */
    private fun setupQuickPresets() {
        val popularPresets = VoicePresetManager.getPopularPresets()
        
        for (preset in popularPresets) {
            val button = Button(this).apply {
                text = preset.emoji
                textSize = 24f
                layoutParams = LinearLayout.LayoutParams(
                    140,
                    ViewGroup.LayoutParams.WRAP_CONTENT
                ).apply {
                    marginEnd = 12
                }
                setBackgroundColor(android.graphics.Color.parseColor(preset.category.color))
                setOnClickListener {
                    onPresetSelected(preset)
                }
            }
            layoutQuickPresets.addView(button)
        }
    }
    
    /**
     * 设置监听器
     */
    private fun setupListeners() {
        btnTest.setOnClickListener {
            if (checkPermissions()) {
                testVoicePreview()
            }
        }
        
        btnToggle.setOnClickListener {
            if (checkPermissions()) {
                toggleVoiceChanger()
            }
        }
    }
    
    /**
     * 预设被选中
     */
    private fun onPresetSelected(preset: ProfessionalVoicePreset) {
        currentPreset = preset
        tvCurrentPreset.text = preset.getShortName()
        presetAdapter.setSelectedPreset(preset)
        
        // 如果正在运行，更新预设
        if (isRunning && Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            audioRouter?.updatePreset(preset)
        }
        
        Toast.makeText(this, 
            "${preset.displayName}\n${preset.description}", 
            Toast.LENGTH_SHORT).show()
    }
    
    /**
     * 测试声音预览
     */
    private fun testVoicePreview() {
        Toast.makeText(this, 
            "🎧 戴上耳机\n说话即可听到 ${currentPreset.displayName} 效果", 
            Toast.LENGTH_LONG).show()
        
        // 启动预览模式（短时间）
        // TODO: 实现预览模式
    }
    
    /**
     * 切换变声器状态
     */
    private fun toggleVoiceChanger() {
        if (isRunning) {
            stopVoiceChanger()
        } else {
            requestMediaProjection()
        }
    }
    
    /**
     * 请求 MediaProjection 权限
     */
    private fun requestMediaProjection() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            val intent = audioRouter?.createProjectionIntent()
            if (intent != null) {
                mediaProjectionLauncher.launch(intent)
            } else {
                Toast.makeText(this, "无法创建授权请求", Toast.LENGTH_SHORT).show()
            }
        }
    }
    
    /**
     * 启动变声器
     */
    private fun startVoiceChanger() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            audioRouter?.start(currentPreset)
            isRunning = true
            updateUI()
            Toast.makeText(this, 
                "✅ 已启动 ${currentPreset.displayName}\n可在王者/微信/QQ中使用", 
                Toast.LENGTH_LONG).show()
        }
    }
    
    /**
     * 停止变声器
     */
    private fun stopVoiceChanger() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            audioRouter?.stop()
        }
        isRunning = false
        updateUI()
        Toast.makeText(this, "已停止变声", Toast.LENGTH_SHORT).show()
    }
    
    /**
     * 更新 UI
     */
    private fun updateUI() {
        if (isRunning) {
            tvStatus.text = "● 运行中"
            tvStatus.setTextColor(ContextCompat.getColor(this, android.R.color.holo_green_dark))
            btnToggle.text = "⏹ 停止变声"
            btnToggle.backgroundTintList = ContextCompat.getColorStateList(this, android.R.color.holo_red_dark)
        } else {
            tvStatus.text = "● 未启动"
            tvStatus.setTextColor(ContextCompat.getColor(this, android.R.color.darker_gray))
            btnToggle.text = "▶ 开始变声"
            btnToggle.backgroundTintList = ContextCompat.getColorStateList(this, android.R.color.holo_green_dark)
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
    
    override fun onDestroy() {
        super.onDestroy()
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            audioRouter?.release()
        }
    }
}

