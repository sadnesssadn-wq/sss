package com.voicechanger

/**
 * 游戏陪玩专用音效预设
 * 针对王者荣耀等游戏语音场景优化
 */
enum class GameVoicePreset(
    val displayName: String,
    val emoji: String,
    val pitchSemiTones: Float,
    val description: String,
    val color: String
) {
    /**
     * 甜美女声 - 最受欢迎的陪玩音效
     * 男声→女声，温柔可人，适合温柔型陪玩
     */
    SWEET_FEMALE(
        "甜美女声",
        "🎀",
        +5.5f,  // 提高5.5个半音，最佳男→女转换
        "男→女，温柔可人",
        "#FF69B4"  // 粉色
    ),
    
    /**
     * 磁性男声 - 女声→男声转换
     * 低沉有力，适合御姐型转男神
     */
    MAGNETIC_MALE(
        "磁性男声",
        "💪",
        -5.0f,  // 降低5个半音，女→男转换
        "女→男，低沉有力",
        "#4169E1"  // 蓝色
    ),
    
    /**
     * 可爱萝莉 - 超萌童声
     * 适合可爱型陪玩
     */
    CUTE_LOLI(
        "可爱萝莉",
        "👶",
        +8.0f,  // 提高8个半音，萝莉音
        "超萌童声",
        "#FFB6C1"  // 浅粉色
    ),
    
    /**
     * 原声模式 - 不做任何变调
     */
    ORIGINAL(
        "原声模式",
        "🎯",
        0.0f,  // 不变调
        "不变调",
        "#9E9E9E"  // 灰色
    );
    
    companion object {
        /**
         * 获取默认预设（最常用）
         */
        fun getDefault(): GameVoicePreset = SWEET_FEMALE
        
        /**
         * 通过显示名称查找
         */
        fun fromDisplayName(name: String): GameVoicePreset? {
            return values().find { it.displayName == name }
        }
        
        /**
         * 获取所有预设列表
         */
        fun getAllPresets(): List<GameVoicePreset> {
            return values().toList()
        }
    }
    
    /**
     * 获取完整描述
     */
    fun getFullDescription(): String {
        return "$emoji $displayName - $description"
    }
}

