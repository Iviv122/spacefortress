extends Button 
class_name ButtonLevelUpChoice 

var buff
var stats = PlayerStatsInstance.stats.basestats

func setBuff(n : StatTuple) -> void:
	buff = n
	if buff.amount > 0:
		text = Stats.Name(n.type) + " +" + str(n.amount)
	elif buff.amount < 0:  
		text = Stats.Name(n.type) + " -" + str(n.amount)

func _pressed() -> void:
	stats.Set(stats.Get(buff.type)+buff.amount,buff.type)

	get_tree().call_group("next_shopping_step","next_step")
