extends Label 
class_name WaveCounter

func _ready():
	text = "Wave: " + str(PlayerInstance.misc_stats.wave_count)
	horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	vertical_alignment = VERTICAL_ALIGNMENT_CENTER