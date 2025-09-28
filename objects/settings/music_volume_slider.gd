extends HSlider
class_name MusicVolumeSlider 

func _ready() -> void:
	min_value = -15
	max_value = 15

	value = SoundManagerInstance.music_volume

func _value_changed(new_value: float) -> void:
	SoundManagerInstance.set_music_volume(new_value)
