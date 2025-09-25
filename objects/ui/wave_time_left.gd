extends Label
class_name WaveTimeLeft

@export var t : GamePlayEntryPoint

func _ready():
	t.time_updated.connect(update)

func update(a : float):
	text = str(int(a))
