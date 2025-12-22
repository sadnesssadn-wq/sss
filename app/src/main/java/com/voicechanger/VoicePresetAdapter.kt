package com.voicechanger

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.google.android.material.card.MaterialCardView

class VoicePresetAdapter(
    private val presets: List<VoicePreset>,
    private val onPresetSelected: (VoicePreset) -> Unit
) : RecyclerView.Adapter<VoicePresetAdapter.PresetViewHolder>() {

    private var selectedPosition = 0

    class PresetViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val card: MaterialCardView = view.findViewById(R.id.cardPreset)
        val tvEmoji: TextView = view.findViewById(R.id.tvEmoji)
        val tvName: TextView = view.findViewById(R.id.tvName)
        val tvDescription: TextView = view.findViewById(R.id.tvDescription)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): PresetViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_voice_preset, parent, false)
        return PresetViewHolder(view)
    }

    override fun onBindViewHolder(holder: PresetViewHolder, position: Int) {
        val preset = presets[position]
        
        holder.tvEmoji.text = preset.emoji
        holder.tvName.text = preset.name
        holder.tvDescription.text = preset.description
        
        // 设置选中状态
        val isSelected = position == selectedPosition
        holder.card.isSelected = isSelected
        
        // 根据音色类别设置卡片颜色
        val bgColor = when (preset.category) {
            VoiceCategory.FEMALE -> holder.itemView.context.getColor(R.color.category_female)
            VoiceCategory.MALE -> holder.itemView.context.getColor(R.color.category_male)
            VoiceCategory.SPECIAL -> holder.itemView.context.getColor(R.color.category_special)
        }
        
        if (isSelected) {
            holder.card.setCardBackgroundColor(bgColor)
            holder.card.strokeWidth = 4
            holder.card.strokeColor = bgColor
        } else {
            holder.card.setCardBackgroundColor(holder.itemView.context.getColor(R.color.surface_variant))
            holder.card.strokeWidth = 1
            holder.card.strokeColor = holder.itemView.context.getColor(R.color.background_elevated)
        }
        
        holder.itemView.setOnClickListener {
            val oldPosition = selectedPosition
            selectedPosition = position
            notifyItemChanged(oldPosition)
            notifyItemChanged(selectedPosition)
            onPresetSelected(preset)
        }
    }

    override fun getItemCount() = presets.size
    
    fun setSelected(preset: VoicePreset) {
        val newPosition = presets.indexOf(preset)
        if (newPosition != -1 && newPosition != selectedPosition) {
            val oldPosition = selectedPosition
            selectedPosition = newPosition
            notifyItemChanged(oldPosition)
            notifyItemChanged(selectedPosition)
        }
    }
}
