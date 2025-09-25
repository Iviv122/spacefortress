extends Button 
class_name BuyButton

var ShopItem : Item 

func _pressed() -> void:
	PlayerStatsInstance.inventory.AddItem(ShopItem)
	queue_free()

func SetItem(item : Item) -> void:
	ShopItem = item
	icon = item.icon
	text = item.name + "\n" + item.discription + "\n" + "price: " + str(item.price)
