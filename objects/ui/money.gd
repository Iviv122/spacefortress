extends Label 
class_name MoneyLabel

var p 

func _ready():
	add_to_group("game_over")
	p = PlayerStatsInstance.money
	p.changed.connect(update)
	text = str(int(PlayerStatsInstance.money.CurrentMoney))

func update(a:float):
	text = str(int(a))

func _on_game_over():
	queue_free()
