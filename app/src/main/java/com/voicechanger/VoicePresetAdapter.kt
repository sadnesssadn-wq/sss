package com.voicechanger

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class VoicePresetAdapter(
    private val presets: List<VoicePreset>,
    private val onPresetSelected: (VoicePreset) -> Unit
) : RecyclerView.Adapter<VoicePresetAdapter.PresetViewHolder>() {

    private var selectedPosition = 0

    class PresetViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val tvPresetName: TextView = view.findViewById(android.R.id.text1)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): PresetViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(android.R.layout.simple_list_item_1, parent, false)
        return PresetViewHolder(view)
    }

    override fun onBindViewHolder(holder: PresetViewHolder, position: Int) {
        val preset = presets[position]
        holder.tvPresetName.text = "${preset.emoji} ${preset.name}"
        holder.tvPresetName.setBackgroundColor(
            if (position == selectedPosition) 0xFF1A7A3E.toInt() else 0xFF1A1A2E.toInt()
        )
        holder.tvPresetName.setTextColor(0xFFFFFFFF.toInt())
        holder.tvPresetName.setPadding(32, 24, 32, 24)
        
        holder.itemView.setOnClickListener {
            selectedPosition = position
            notifyDataSetChanged()
            onPresetSelected(preset)
        }
    }

    override fun getItemCount() = presets.size
}
