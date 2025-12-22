package com.voicechanger

/**
 * 专业级音效预设
 * 基于音频学原理设计，提供真实的性别转换和角色音效
 */
enum class VoicePreset(
    val displayName: String,
    val pitchSemiTones: Float,
    val tempoChange: Float = 0f,
    val formantShift: Float = 0f,  // 共振峰偏移（未来实现）
    val description: String,
    val category: Category
) {
    // ===== 性别转换（专业级） =====
    MALE_TO_FEMALE(
        "男变女", 
        +5.5f, 
        0f, 
        +0.2f,
        "真实的男声转女声效果",
        Category.GENDER_CONVERSION
    ),
    
    MALE_TO_FEMALE_HIGH(
        "男变女（高音）",
        +7.0f,
        +5f,
        +0.3f,
        "更高音的女声效果",
        Category.GENDER_CONVERSION
    ),
    
    FEMALE_TO_MALE(
        "女变男",
        -5.5f,
        0f,
        -0.2f,
        "真实的女声转男声效果",
        Category.GENDER_CONVERSION
    ),
    
    FEMALE_TO_MALE_LOW(
        "女变男（低沉）",
        -7.0f,
        -5f,
        -0.3f,
        "更低沉的男声效果",
        Category.GENDER_CONVERSION
    ),
    
    // ===== 年龄变化 =====
    CHILD(
        "童声",
        +8.0f,
        +10f,
        +0.3f,
        "可爱的儿童声音",
        Category.AGE
    ),
    
    TEENAGER(
        "少年音",
        +3.0f,
        +5f,
        +0.1f,
        "青少年声音",
        Category.AGE
    ),
    
    ELDERLY(
        "老年音",
        -3.0f,
        -8f,
        -0.15f,
        "沧桑的老年声音",
        Category.AGE
    ),
    
    // ===== 角色音效 =====
    CARTOON(
        "卡通音",
        +10.0f,
        +15f,
        +0.4f,
        "夸张的卡通角色",
        Category.CHARACTER
    ),
    
    ROBOT(
        "机器人",
        -4.0f,
        0f,
        -0.5f,
        "冰冷的机器人声音",
        Category.CHARACTER
    ),
    
    MONSTER(
        "怪物",
        -8.0f,
        -15f,
        -0.4f,
        "可怕的怪物声音",
        Category.CHARACTER
    ),
    
    ALIEN(
        "外星人",
        +6.0f,
        +8f,
        +0.5f,
        "神秘的外星生物",
        Category.CHARACTER
    ),
    
    // ===== 自然变调 =====
    SLIGHTLY_HIGHER(
        "稍高一点",
        +2.0f,
        0f,
        0f,
        "略微提高音调",
        Category.NATURAL
    ),
    
    SLIGHTLY_LOWER(
        "稍低一点",
        -2.0f,
        0f,
        0f,
        "略微降低音调",
        Category.NATURAL
    ),
    
    DEEP_VOICE(
        "深沉男声",
        -4.0f,
        -3f,
        -0.1f,
        "富有磁性的低音",
        Category.NATURAL
    ),
    
    BRIGHT_VOICE(
        "明亮女声",
        +4.0f,
        +3f,
        +0.1f,
        "清脆明亮的高音",
        Category.NATURAL
    ),
    
    // ===== 游戏角色 =====
    WARRIOR(
        "战士",
        -6.0f,
        -5f,
        -0.25f,
        "威猛的战士声音",
        Category.GAME
    ),
    
    WIZARD(
        "法师",
        -2.0f,
        -8f,
        -0.15f,
        "神秘的法师声音",
        Category.GAME
    ),
    
    ELF(
        "精灵",
        +7.0f,
        +8f,
        +0.3f,
        "优雅的精灵声音",
        Category.GAME
    ),
    
    // ===== 原声 =====
    ORIGINAL(
        "原声",
        0.0f,
        0f,
        0f,
        "不做任何处理",
        Category.NATURAL
    ),
    
    CUSTOM(
        "自定义",
        0.0f,
        0f,
        0f,
        "自定义参数",
        Category.NATURAL
    );

    /**
     * 音效分类
     */
    enum class Category(val displayName: String) {
        GENDER_CONVERSION("性别转换"),
        AGE("年龄变化"),
        CHARACTER("角色音效"),
        NATURAL("自然变调"),
        GAME("游戏角色")
    }

    companion object {
        /**
         * 通过显示名称查找预设
         */
        fun fromDisplayName(name: String): VoicePreset? {
            return values().find { it.displayName == name }
        }
        
        /**
         * 获取指定分类的所有预设
         */
        fun getByCategory(category: Category): List<VoicePreset> {
            return values().filter { it.category == category }
        }
        
        /**
         * 获取所有性别转换预设
         */
        fun getGenderConversionPresets(): List<VoicePreset> {
            return getByCategory(Category.GENDER_CONVERSION)
        }
        
        /**
         * 获取所有游戏角色预设
         */
        fun getGameCharacterPresets(): List<VoicePreset> {
            return getByCategory(Category.GAME)
        }
    }
}

