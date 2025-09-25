extends Button 
class_name RerollButton

var cost : int = 2 

func _ready() -> void:
	update()

func update() -> void:
	text = "Reroll\nCost: " + str(cost)

func _pressed() -> void:
	if PlayerStatsInstance.money.CurrentMoney >= cost:
		PlayerStatsInstance.money.CurrentMoney -= cost
		cost*=2
		update()
		get_tree().call_group("reroll","_on_reroll") 

