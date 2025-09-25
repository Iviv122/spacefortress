extends Label
class_name WaveTimeLeft

@export var t : GamePlayEntryPoint

func _ready():
	add_to_group("game_over")
	t.time_updated.connect(update)


func _on_game_over():
	queue_free()


func update(a : float):
	text = str(int(a))
