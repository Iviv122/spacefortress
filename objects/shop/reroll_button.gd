extends Button
class_name RerollButton 

var cost : int = 2 

func update()->void:
	text = "Reroll. Cost: " + str(cost)

func _ready():
	update()
	tooltip_text = "restock choices for payment"

func _pressed() -> void:
	

	if PlayerInstance.money.current_money >= cost:
		PlayerInstance.money.current_money -= cost
		PlayerInstance.misc_stats.rerolled()
		get_tree().call_group("reroll","reroll")
		cost*=2
		update()