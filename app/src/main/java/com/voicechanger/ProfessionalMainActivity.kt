package com.voicechanger

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Bundle
import android.provider.Settings
import android.view.View
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.google.android.material.switchmaterial.SwitchMaterial

class ProfessionalMainActivity : AppCompatActivity() {

    private lateinit var tvStatus: TextView
    private lateinit var tvCurrentPreset: TextView
    private lateinit var recyclerView: RecyclerView
    private lateinit var btnToggle: Button
    private lateinit var switchMonitor: SwitchMaterial
    private lateinit var statusIndicator: View

    private var voiceEngine: GameVoiceEngine? = null
    private var systemRouter: SystemAudioRouter? = null
    private var currentPreset: VoicePreset = VoicePresets.ALL_PRESETS[0]
    private var isRunning = false
    private var isMonitoring = false

    companion object {
        private const val REQUEST_RECORD_AUDIO = 1
        private const val REQUEST_WRITE_SETTINGS = 2
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main_professional)

        initViews()
        setupPresetGrid()
        setupListeners()
        checkPermissions()
    }

    private fun initViews() {
        tvStatus = findViewById(R.id.tvStatus)
        tvCurrentPreset = findViewById(R.id.tvCurrentPreset)
        recyclerView = findViewById(R.id.recyclerViewPresets)
        btnToggle = findViewById(R.id.btnToggle)
        switchMonitor = findViewById(R.id.switchMonitor)
        statusIndicator = findViewById(R.id.statusIndicator)
        
        updateUI()
    }

    private fun setupPresetGrid() {
        val adapter = VoicePresetAdapter(VoicePresets.ALL_PRESETS) { preset ->
            onPresetSelected(preset)
        }

        recyclerView.layoutManager = GridLayoutManager(this, 2)
        recyclerView.adapter = adapter
    }

    private fun setupListeners() {
        btnToggle.setOnClickListener {
            if (checkAllPermissions()) {
                toggleEngine()
            } else {
                requestAllPermissions()
            }
        }

        switchMonitor.setOnCheckedChangeListener { _, isChecked ->
            toggleMonitoring(isChecked)
        }
    }

    private fun onPresetSelected(preset: VoicePreset) {
        currentPreset = preset
        tvCurrentPreset.text = "${preset.emoji} ${preset.name}"

        // 如果引擎正在运行，立即应用新音色
        voiceEngine?.applyPreset(preset)

        // 显示提示
        Toast.makeText(
            this,
            "已选择：${preset.name}",
            Toast.LENGTH_SHORT
        ).show()
    }

    private fun toggleEngine() {
        if (isRunning) {
            stopEngine()
        } else {
            startEngine()
        }
    }

    private fun startEngine() {
        try {
            // 创建引擎
            if (voiceEngine == null) {
                voiceEngine = GameVoiceEngine(this)
            }

            // 应用当前音色
            voiceEngine?.applyPreset(currentPreset)

            // 启动引擎
            voiceEngine?.start()

            isRunning = true
            updateUI()

            Toast.makeText(this, "✅ 变声已启动！", Toast.LENGTH_SHORT).show()

        } catch (e: Exception) {
            Toast.makeText(this, "❌ 启动失败：${e.message}", Toast.LENGTH_LONG).show()
            e.printStackTrace()
        }
    }

    private fun stopEngine() {
        try {
            voiceEngine?.stop()

            isRunning = false
            isMonitoring = false
            switchMonitor.isChecked = false

            updateUI()

            Toast.makeText(this, "■ 变声已停止", Toast.LENGTH_SHORT).show()

        } catch (e: Exception) {
            Toast.makeText(this, "❌ 停止失败：${e.message}", Toast.LENGTH_LONG).show()
            e.printStackTrace()
        }
    }

    private fun toggleMonitoring(enabled: Boolean) {
        if (!isRunning) {
            Toast.makeText(this, "⚠️ 请先启动变声", Toast.LENGTH_SHORT).show()
            switchMonitor.isChecked = false
            return
        }

        isMonitoring = enabled
        voiceEngine?.enableMonitoring(enabled)

        if (enabled) {
            Toast.makeText(this, "🎧 实时监听已开启（请戴耳机）", Toast.LENGTH_SHORT).show()
        } else {
            Toast.makeText(this, "🔇 实时监听已关闭", Toast.LENGTH_SHORT).show()
        }
    }

    private fun updateUI() {
        if (isRunning) {
            btnToggle.text = "■ 停止变声"
            btnToggle.setBackgroundColor(getColor(R.color.error))
            tvStatus.text = "● 变声中"
            tvStatus.setTextColor(getColor(R.color.success))
            statusIndicator.setBackgroundResource(R.drawable.bg_status_active)
        } else {
            btnToggle.text = "▶ 开始变声"
            btnToggle.setBackgroundColor(getColor(R.color.success))
            tvStatus.text = "● 待机中"
            tvStatus.setTextColor(getColor(R.color.on_surface_variant))
            statusIndicator.setBackgroundResource(R.drawable.bg_status_indicator)
        }

        tvCurrentPreset.text = "${currentPreset.emoji} ${currentPreset.name}"
    }

    private fun checkPermissions(): Boolean {
        return ContextCompat.checkSelfPermission(
            this,
            Manifest.permission.RECORD_AUDIO
        ) == PackageManager.PERMISSION_GRANTED
    }

    private fun checkAllPermissions(): Boolean {
        val hasAudio = checkPermissions()
        val hasWriteSettings = Settings.System.canWrite(this)

        if (!hasWriteSettings) {
            Toast.makeText(
                this,
                "Requires system settings permission for in-game voice change",
                Toast.LENGTH_LONG
            ).show()
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
            val intent = Intent(Settings.ACTION_MANAGE_WRITE_SETTINGS).apply {
                data = Uri.parse("package:$packageName")
            }
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
                Toast.makeText(this, "✅ 录音权限已授予", Toast.LENGTH_SHORT).show()
            } else {
                Toast.makeText(this, "❌ 需要录音权限才能使用", Toast.LENGTH_LONG).show()
            }
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        stopEngine()
        voiceEngine = null
        systemRouter = null
    }
}
