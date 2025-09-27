extends VBoxContainer
class_name ShopListMenu

@export var options : int = 3
@export var item_list : ItemsList 

func _ready():
	reroll()
	add_to_group("reroll")

func reroll() -> void:

	var queue :Array[Item] = item_list.list.duplicate()
	queue.shuffle()
	for i in get_children():
		i.queue_free()
	
	for i in range(0,options):
		var option : BuyItemButton  = BuyItemButton.new()

		if queue.is_empty():
			queue = item_list.list.duplicate()
			queue.shuffle()

		var item : Item = queue.pick_random()
		queue.erase(item)
		option.SetItem(item)

		add_child(option)
