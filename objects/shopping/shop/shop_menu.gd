extends VBoxContainer 
class_name ShopMenu
@export var option : int = 3

func roll() ->void:
	ItemListInstance.PopulateQueue()
	for i in range(0,option):
		var c : BuyButton = BuyButton.new()
		var item = ItemListInstance.PullOut()
		c.SetItem(item)
		add_child(c) 

	add_child(RerollButton.new())
	add_child(ExitButton.new())

func _ready() -> void:
	roll()
