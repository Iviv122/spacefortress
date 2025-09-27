extends ProgressBar
class_name ExpirienceBar 

func _ready() -> void:
	PlayerInstance.expirience.gained.connect(updated)
	updated(PlayerInstance.expirience.expirience,PlayerInstance.expirience.exp_to_next_level)

func updated(v,m):
	value = v
	max_value = m
