package com.voicechanger

import android.graphics.Color
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

/**
 * 声音预设适配器
 * 用于 RecyclerView 显示所有专业声音预设
 */
class VoicePresetAdapter(
    private val presets: List<ProfessionalVoicePreset>,
    private val onPresetSelected: (ProfessionalVoicePreset) -> Unit
) : RecyclerView.Adapter<VoicePresetAdapter.PresetViewHolder>() {
    
    private var selectedPosition = -1
    
    inner class PresetViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val tvName: TextView = view.findViewById(android.R.id.text1)
        val tvDescription: TextView = view.findViewById(android.R.id.text2)
        
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
        
        holder.tvName.text = preset.getShortName()
        holder.tvDescription.text = preset.description
        
        // 设置颜色
        val categoryColor = Color.parseColor(preset.category.color)
        holder.tvName.setTextColor(categoryColor)
        
        // 高亮选中项
        if (position == selectedPosition) {
            holder.itemView.setBackgroundColor(Color.parseColor("#2A2A3E"))
            holder.tvName.textSize = 18f
        } else {
            holder.itemView.setBackgroundColor(Color.TRANSPARENT)
            holder.tvName.textSize = 16f
        }
    }
    
    override fun getItemCount(): Int = presets.size
    
    fun setSelectedPreset(preset: ProfessionalVoicePreset) {
        selectedPosition = presets.indexOf(preset)
        notifyDataSetChanged()
    }
}

