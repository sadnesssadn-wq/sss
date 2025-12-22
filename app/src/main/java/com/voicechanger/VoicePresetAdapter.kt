package com.voicechanger

import android.graphics.Color
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

/**
 * 音色预设适配器
 */
class VoicePresetAdapter(
    private val presets: List<VoicePreset>,
    private val onPresetSelected: (VoicePreset) -> Unit
) : RecyclerView.Adapter<VoicePresetAdapter.PresetViewHolder>() {
    
    private var selectedPosition = 0
    
    inner class PresetViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val tvEmoji: TextView = view.findViewById(android.R.id.text1)
        val tvName: TextView = view.findViewById(android.R.id.text2)
        
        init {
            view.setOnClickListener {
                val position = adapterPosition
                if (position != RecyclerView.NO_POSITION) {
                    val oldPosition = selectedPosition
                    selectedPosition = position
                    notifyItemChanged(oldPosition)
                    notifyItemChanged(selectedPosition)
                    onPresetSelected(presets[position])
                }
            }
        }
    }
    
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): PresetViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(android.R.layout.two_line_list_item, parent, false)
        return PresetViewHolder(view)
    }
    
    override fun onBindViewHolder(holder: PresetViewHolder, position: Int) {
        val preset = presets[position]
        
        holder.tvEmoji.text = preset.emoji
        holder.tvEmoji.textSize = 32f
        holder.tvName.text = preset.name
        
        // 高亮选中项
        if (position == selectedPosition) {
            holder.itemView.setBackgroundColor(Color.parseColor("#3A3A5A"))
            holder.tvEmoji.alpha = 1.0f
            holder.tvName.alpha = 1.0f
        } else {
            holder.itemView.setBackgroundColor(Color.TRANSPARENT)
            holder.tvEmoji.alpha = 0.6f
            holder.tvName.alpha = 0.6f
        }
    }
    
    override fun getItemCount(): Int = presets.size
}
