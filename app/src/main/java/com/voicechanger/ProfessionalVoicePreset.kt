package com.voicechanger

/**
 * 专业音色预设 - 无限制版
 * 基于音频处理原理，所有参数免费开放
 */
data class VoicePreset(
    val id: String,
    val name: String,
    val emoji: String,
    val description: String,
    val pitchShift: Float,           // 音调偏移（半音）
    val formantShift: Float = 0f,    // 共振峰偏移
    val breathiness: Float = 0f,     // 气声程度
    val category: VoiceCategory
)

enum class VoiceCategory(val displayName: String, val color: Int) {
    FEMALE("女声", 0xFFFF69B4.toInt()),
    MALE("男声", 0xFF4169E1.toInt()),
    SPECIAL("特效", 0xFFFF8C00.toInt())
}

object VoicePresets {
    val ALL_PRESETS = listOf(
        // === 女声系列 ===
        VoicePreset(
            id = "natural_girl",
            name = "自然女声",
            emoji = "👧",
            description = "清晰自然的女声，适合游戏语音",
            pitchShift = 5.0f,
            formantShift = 1.18f,
            breathiness = 0.08f,
            category = VoiceCategory.FEMALE
        ),
        VoicePreset(
            id = "sweet_girl",
            name = "甜美女声",
            emoji = "🌸",
            description = "温柔甜美，让人舒心",
            pitchShift = 5.5f,
            formantShift = 1.2f,
            breathiness = 0.1f,
            category = VoiceCategory.FEMALE
        ),
        VoicePreset(
            id = "loli",
            name = "萝莉音",
            emoji = "🍭",
            description = "可爱萌系，软糯动听",
            pitchShift = 7.5f,
            formantShift = 1.25f,
            breathiness = 0.06f,
            category = VoiceCategory.FEMALE
        ),
        VoicePreset(
            id = "mature_lady",
            name = "御姐音",
            emoji = "👸",
            description = "成熟魅力，低沉性感",
            pitchShift = 3.0f,
            formantShift = 1.12f,
            breathiness = 0.12f,
            category = VoiceCategory.FEMALE
        ),
        VoicePreset(
            id = "soft_girl",
            name = "软妹音",
            emoji = "🧸",
            description = "温柔可爱，撒娇必备",
            pitchShift = 6.5f,
            formantShift = 1.22f,
            breathiness = 0.15f,
            category = VoiceCategory.FEMALE
        ),
        
        // === 男声系列 ===
        VoicePreset(
            id = "young_man",
            name = "青年音",
            emoji = "🌟",
            description = "阳光朝气，清朗有力",
            pitchShift = 0.5f,
            formantShift = -0.05f,
            breathiness = 0.02f,
            category = VoiceCategory.MALE
        ),
        VoicePreset(
            id = "mature_man",
            name = "成熟男声",
            emoji = "💼",
            description = "稳重大叔，低沉磁性",
            pitchShift = -2.5f,
            formantShift = -0.12f,
            breathiness = 0.08f,
            category = VoiceCategory.MALE
        ),
        VoicePreset(
            id = "teenager",
            name = "少年音",
            emoji = "🎮",
            description = "清澈少年，中性音色",
            pitchShift = 2.0f,
            formantShift = 0.05f,
            breathiness = 0.04f,
            category = VoiceCategory.MALE
        ),
        
        // === 特效系列 ===
        VoicePreset(
            id = "bubble",
            name = "气泡音",
            emoji = "💋",
            description = "慵懒性感，磁性迷人",
            pitchShift = 2.5f,
            formantShift = 0.08f,
            breathiness = 0.25f,
            category = VoiceCategory.SPECIAL
        ),
        VoicePreset(
            id = "cool",
            name = "酷飒音",
            emoji = "⚡",
            description = "中性帅气，飒爽有型",
            pitchShift = 1.5f,
            formantShift = 0.02f,
            breathiness = 0.03f,
            category = VoiceCategory.SPECIAL
        ),
        VoicePreset(
            id = "original",
            name = "原声",
            emoji = "🎵",
            description = "不做处理，保持原声",
            pitchShift = 0f,
            formantShift = 0f,
            breathiness = 0f,
            category = VoiceCategory.SPECIAL
        )
    )
    
    fun getById(id: String) = ALL_PRESETS.find { it.id == id }
    
    fun getByCategory(category: VoiceCategory) = ALL_PRESETS.filter { it.category == category }
}
