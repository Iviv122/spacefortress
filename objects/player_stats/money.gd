class_name Money 

signal changed(c : float)

var _current_money: float = 0.0

func _on_enemy_death():
	current_money += 1*PlayerInstance.stats.Get(Stats.StatType.Harvesting)

var current_money: float:
	get:
		return _current_money 
	set(value):
		_set_money(value)


func _set_money(value: float) -> void:
	_current_money = value
	if _current_money <= 0:
		_current_money = 0
	changed.emit(_current_money)