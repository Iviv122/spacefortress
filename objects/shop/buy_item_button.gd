extends Button 
class_name BuyItemButton 

var item : Item
var cost : int = 10+randi_range(-4,4) + (PlayerInstance.misc_stats.wave_count-1)*5

func SetItem(thing : Item):
	item = thing
	text = item.name + " " + "Cost: " + str(cost)
	tooltip_text = item.description
	icon = item.sprite

func _pressed() -> void:
	if PlayerInstance.money.current_money >= cost:
			PlayerInstance.money.current_money -= cost
			PlayerInstance.inventory.append(item)
			PlayerInstance.misc_stats.item_was_bought()
			queue_free()
