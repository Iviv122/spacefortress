extends ProgressBar
class_name ExpProgress

var p : PlayerExpirience

func _ready():
	add_to_group("game_over")
	p = PlayerStatsInstance.expirience
	p.gained.connect(update)
	min_value = 0
	value = p.Exp
	max_value = p.ExpToNextLevel

func update(a:float,n:float):
	value = a
	max_value = n

func _on_game_over():
	queue_free()
