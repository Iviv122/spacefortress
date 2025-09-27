extends Label
class_name FightTimer 

@export var time : float
@export var scene : PackedScene

func _ready():
	time += PlayerInstance.misc_stats.wave_count*5
	clamp(time,15,60)
func _process(delta: float) -> void:
	text = str(int(time))
	time -= delta
	if time <= 0:
		PlayerInstance.misc_stats.wave_beat()
		get_tree().call_group("load_scene","load_scene",scene)
