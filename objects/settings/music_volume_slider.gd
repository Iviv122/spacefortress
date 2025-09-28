extends HSlider
class_name MusicVolumeSlider 

func _ready() -> void:
	min_value = -15
	max_value = 15

	value = SoundManagerInstance.music_player.get_volume_db()

func _value_changed(new_value: float) -> void:
	SoundManagerInstance.music_player.set_volume_db(new_value)
