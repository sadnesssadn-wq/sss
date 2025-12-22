package com.voicechanger

import android.Manifest
import android.content.pm.PackageManager
import android.os.Bundle
import android.provider.Settings
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.RecyclerView
import android.widget.Button
import android.widget.TextView

/**
 * 专属游戏变声器 - 无限制版
 * 
 * 基于"声吾控"技术分析，但更好：
 * - 无广告
 * - 无付费墙
 * - 所有功能免费
 * - 更低延迟
 */
class ProfessionalMainActivity : AppCompatActivity() {
    
    private lateinit var engine: GameVoiceEngine
    private lateinit var recyclerView: RecyclerView
    private lateinit var btnToggle: Button
    private lateinit var tvStatus: TextView
    private lateinit var tvCurrentPreset: TextView
    
    private var isRunning = false
    private var currentPreset: VoicePreset = VoicePresets.ALL_PRESETS[0]
    
    companion object {
        private const val TAG = "ProfessionalMainActivity"
        private const val REQUEST_RECORD_AUDIO = 1001
        private const val REQUEST_WRITE_SETTINGS = 1002
    }
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main_professional)
        
        engine = GameVoiceEngine(this)
        
        initViews()
        setupPresetGrid()
        checkPermissions()
    }
    
    private fun initViews() {
        recyclerView = findViewById(R.id.recyclerViewPresets)
        btnToggle = findViewById(R.id.btnToggle)
        tvStatus = findViewById(R.id.tvStatus)
        tvCurrentPreset = findViewById(R.id.tvCurrentPreset)
        
        btnToggle.setOnClickListener {
            toggleEngine()
        }
        
        updateUI()
    }
    
    private fun setupPresetGrid() {
        val adapter = VoicePresetAdapter(VoicePresets.ALL_PRESETS) { preset ->
            onPresetSelected(preset)
        }
        
        recyclerView.layoutManager = GridLayoutManager(this, 2)
        recyclerView.adapter = adapter
    }
    
    private fun onPresetSelected(preset: VoicePreset) {
        currentPreset = preset
        tvCurrentPreset.text = "${preset.emoji} ${preset.name}"
        
        if (isRunning) {
            engine.changePreset(preset)
        }
        
        Toast.makeText(this, preset.description, Toast.LENGTH_SHORT).show()
    }
    
    private fun toggleEngine() {
        if (!checkAllPermissions()) {
            requestAllPermissions()
            return
        }
        
        if (isRunning) {
            engine.stop()
            isRunning = false
        } else {
            isRunning = engine.start(currentPreset)
            if (isRunning) {
                Toast.makeText(this, 
                    "✅ 已启动 ${currentPreset.name}\n游戏中直接说话即可！", 
                    Toast.LENGTH_LONG).show()
            } else {
                Toast.makeText(this, "❌ 启动失败", Toast.LENGTH_SHORT).show()
            }
        }
        
        updateUI()
    }
    
    private fun updateUI() {
        if (isRunning) {
            btnToggle.text = "⏹ 停止变声"
            btnToggle.backgroundTintList = ContextCompat.getColorStateList(this, android.R.color.holo_red_dark)
            tvStatus.text = "● 运行中"
            tvStatus.setTextColor(ContextCompat.getColor(this, android.R.color.holo_green_dark))
        } else {
            btnToggle.text = "▶ 开始变声"
            btnToggle.backgroundTintList = ContextCompat.getColorStateList(this, android.R.color.holo_green_dark)
            tvStatus.text = "● 未启动"
            tvStatus.setTextColor(ContextCompat.getColor(this, android.R.color.darker_gray))
        }
    }
    
    private fun checkPermissions(): Boolean {
        val hasRecordAudio = ContextCompat.checkSelfPermission(
            this, Manifest.permission.RECORD_AUDIO
        ) == PackageManager.PERMISSION_GRANTED
        
        return hasRecordAudio
    }
    
    private fun checkAllPermissions(): Boolean {
        val hasAudio = checkPermissions()
        val hasWriteSettings = Settings.System.canWrite(this)
        
        if (!hasWriteSettings) {
            Toast.makeText(this, 
                "Requires system settings permission for in-game voice change", 
                Toast.LENGTH_LONG).show()
        }
        
        return hasAudio && hasWriteSettings
    }
    
    private fun requestAllPermissions() {
        // 1. 录音权限
        if (!checkPermissions()) {
            ActivityCompat.requestPermissions(
                this,
                arrayOf(Manifest.permission.RECORD_AUDIO),
                REQUEST_RECORD_AUDIO
            )
        }
        
        // 2. 系统设置权限
        if (!Settings.System.canWrite(this)) {
            val intent = android.content.Intent(Settings.ACTION_MANAGE_WRITE_SETTINGS)
            intent.data = android.net.Uri.parse("package:$packageName")
            startActivityForResult(intent, REQUEST_WRITE_SETTINGS)
        }
    }
    
    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode == REQUEST_RECORD_AUDIO) {
            if (grantResults.isNotEmpty() && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                Toast.makeText(this, "录音权限已授予", Toast.LENGTH_SHORT).show()
            } else {
                Toast.makeText(this, "需要录音权限才能使用变声功能", Toast.LENGTH_LONG).show()
            }
        }
    }
    
    override fun onDestroy() {
        super.onDestroy()
        engine.release()
    }
}
