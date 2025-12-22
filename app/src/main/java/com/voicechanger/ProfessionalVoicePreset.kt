package com.voicechanger

/**
 * 专业声音预设 - 网络流行音色
 * 包含音调、音色、共振峰、气声等专业参数
 */
enum class ProfessionalVoicePreset(
    val displayName: String,
    val description: String,
    val emoji: String,
    val pitchSemiTones: Float,      // 音调（半音）
    val formantShift: Float,        // 共振峰偏移（改变音色）
    val breathiness: Float,         // 气声程度 (0-1)
    val resonance: Float,           // 共鸣度 (0-1)
    val category: VoiceCategory
) {
    // === 女声系列 ===
    
    /** 御姐音 - 成熟、性感、有魅力 */
    MATURE_LADY(
        displayName = "御姐音",
        description = "成熟性感，低沉有魅力",
        emoji = "👸",
        pitchSemiTones = 3.0f,      // 略微提高音调
        formantShift = 1.2f,        // 增加共振峰（更女性化）
        breathiness = 0.3f,         // 适度气声（性感）
        resonance = 0.7f,           // 高共鸣（磁性）
        category = VoiceCategory.FEMALE
    ),
    
    /** 少女音 - 清纯、甜美、活泼 */
    YOUNG_GIRL(
        displayName = "少女音",
        description = "清纯甜美，青春活泼",
        emoji = "🌸",
        pitchSemiTones = 5.5f,      // 较高音调
        formantShift = 1.5f,        // 明显共振峰偏移
        breathiness = 0.2f,         // 轻度气声（清纯）
        resonance = 0.6f,           // 中等共鸣
        category = VoiceCategory.FEMALE
    ),
    
    /** 萝莉音 - 可爱、软萌、童真 */
    LOLI(
        displayName = "萝莉音",
        description = "超萌童声，软糯可爱",
        emoji = "🍭",
        pitchSemiTones = 8.0f,      // 高音调
        formantShift = 2.0f,        // 大幅共振峰偏移
        breathiness = 0.15f,        // 轻气声（童真）
        resonance = 0.5f,           // 中等共鸣
        category = VoiceCategory.FEMALE
    ),
    
    /** 少御音 - 少女+御姐，温柔又有气场 */
    YOUNG_MATURE(
        displayName = "少御音",
        description = "温柔御姐，知性优雅",
        emoji = "💫",
        pitchSemiTones = 4.0f,      // 中高音调
        formantShift = 1.3f,        // 适度共振峰
        breathiness = 0.25f,        // 适度气声
        resonance = 0.65f,          // 中高共鸣
        category = VoiceCategory.FEMALE
    ),
    
    /** 气泡音（女） - 性感、慵懒、磁性 */
    BUBBLE_FEMALE(
        displayName = "气泡音（女）",
        description = "慵懒性感，磁性嗓音",
        emoji = "💋",
        pitchSemiTones = 2.0f,      // 略低音调
        formantShift = 1.0f,        // 标准共振峰
        breathiness = 0.6f,         // 大量气声（关键）
        resonance = 0.8f,           // 高共鸣（磁性）
        category = VoiceCategory.FEMALE
    ),
    
    // === 男声系列 ===
    
    /** 青年音 - 阳光、清朗、有活力 */
    YOUNG_MAN(
        displayName = "青年音",
        description = "阳光清朗，朝气蓬勃",
        emoji = "🌟",
        pitchSemiTones = 0.5f,      // 略微提高（年轻感）
        formantShift = -0.5f,       // 略微降低共振峰
        breathiness = 0.1f,         // 很少气声（清晰）
        resonance = 0.5f,           // 中等共鸣
        category = VoiceCategory.MALE
    ),
    
    /** 青叔音 - 成熟、稳重、有磁性 */
    MATURE_MAN(
        displayName = "青叔音",
        description = "成熟稳重，低沉磁性",
        emoji = "🎩",
        pitchSemiTones = -3.0f,     // 降低音调
        formantShift = -1.2f,       // 降低共振峰（更男性化）
        breathiness = 0.2f,         // 适度气声（磁性）
        resonance = 0.75f,          // 高共鸣（浑厚）
        category = VoiceCategory.MALE
    ),
    
    /** 少年音 - 清澈、少年感、中性 */
    TEENAGER(
        displayName = "少年音",
        description = "清澈少年，中性音色",
        emoji = "🌈",
        pitchSemiTones = 2.5f,      // 中高音调
        formantShift = 0.3f,        // 微调共振峰（中性）
        breathiness = 0.12f,        // 轻微气声
        resonance = 0.55f,          // 中等共鸣
        category = VoiceCategory.NEUTRAL
    ),
    
    /** 正太音 - 小男孩，可爱、调皮 */
    SHOTA(
        displayName = "正太音",
        description = "可爱小男孩，清脆童声",
        emoji = "🎮",
        pitchSemiTones = 6.0f,      // 较高音调
        formantShift = 0.8f,        // 适度共振峰
        breathiness = 0.1f,         // 轻微气声
        resonance = 0.5f,           // 中等共鸣
        category = VoiceCategory.NEUTRAL
    ),
    
    /** 大叔音 - 沧桑、低沉、有故事感 */
    UNCLE(
        displayName = "大叔音",
        description = "沧桑低沉，声音有故事",
        emoji = "🚬",
        pitchSemiTones = -5.0f,     // 明显降低
        formantShift = -1.5f,       // 大幅降低共振峰
        breathiness = 0.35f,        // 较多气声（沧桑感）
        resonance = 0.8f,           // 高共鸣（浑厚）
        category = VoiceCategory.MALE
    ),
    
    // === 特殊系列 ===
    
    /** 软妹音 - 温柔、可爱、撒娇 */
    SOFT_CUTE(
        displayName = "软妹音",
        description = "温柔软萌，天生会撒娇",
        emoji = "🧸",
        pitchSemiTones = 6.5f,      // 高音调
        formantShift = 1.8f,        // 高共振峰
        breathiness = 0.4f,         // 较多气声（软萌）
        resonance = 0.4f,           // 较低共鸣（柔软）
        category = VoiceCategory.FEMALE
    ),
    
    /** 酷飒音 - 中性、帅气、有力量 */
    COOL_HANDSOME(
        displayName = "酷飒音",
        description = "中性帅气，飒爽有力",
        emoji = "⚡",
        pitchSemiTones = 1.5f,      // 略微提高
        formantShift = 0.0f,        // 中性共振峰
        breathiness = 0.05f,        // 极少气声（清晰）
        resonance = 0.6f,           // 中高共鸣
        category = VoiceCategory.NEUTRAL
    ),
    
    /** 电音 - 机械感、电子音效 */
    ELECTRONIC(
        displayName = "电音效果",
        description = "电子机械音，科技感",
        emoji = "🤖",
        pitchSemiTones = 0.0f,      // 不变调
        formantShift = 0.0f,        // 标准共振峰
        breathiness = 0.0f,         // 无气声
        resonance = 0.3f,           // 低共鸣（机械感）
        category = VoiceCategory.SPECIAL
    ),
    
    /** 原声 */
    ORIGINAL(
        displayName = "原声模式",
        description = "不做任何处理",
        emoji = "🎵",
        pitchSemiTones = 0.0f,
        formantShift = 0.0f,
        breathiness = 0.0f,
        resonance = 0.5f,
        category = VoiceCategory.ORIGINAL
    );
    
    /**
     * 获取完整描述
     */
    fun getFullDescription(): String {
        return "$emoji $displayName\n$description"
    }
    
    /**
     * 获取用于显示的简短名称
     */
    fun getShortName(): String {
        return "$emoji $displayName"
    }
}

/**
 * 声音分类
 */
enum class VoiceCategory(val displayName: String, val color: String) {
    FEMALE("女声", "#FF69B4"),      // 粉色
    MALE("男声", "#4169E1"),        // 蓝色
    NEUTRAL("中性", "#9370DB"),     // 紫色
    SPECIAL("特效", "#FF8C00"),     // 橙色
    ORIGINAL("原声", "#808080")     // 灰色
}

/**
 * 按分类获取预设
 */
object VoicePresetManager {
    
    fun getPresetsByCategory(category: VoiceCategory): List<ProfessionalVoicePreset> {
        return ProfessionalVoicePreset.values().filter { it.category == category }
    }
    
    fun getAllCategories(): List<VoiceCategory> {
        return VoiceCategory.values().toList()
    }
    
    fun getPopularPresets(): List<ProfessionalVoicePreset> {
        return listOf(
            ProfessionalVoicePreset.MATURE_LADY,    // 御姐
            ProfessionalVoicePreset.YOUNG_GIRL,     // 少女
            ProfessionalVoicePreset.LOLI,           // 萝莉
            ProfessionalVoicePreset.YOUNG_MATURE,   // 少御
            ProfessionalVoicePreset.BUBBLE_FEMALE,  // 气泡音
            ProfessionalVoicePreset.YOUNG_MAN,      // 青年
            ProfessionalVoicePreset.MATURE_MAN,     // 青叔
            ProfessionalVoicePreset.TEENAGER        // 少年
        )
    }
}

