extends VBoxContainer 
class_name ShopMenu
@export var option : int = 3

func roll() ->void:
	for i in range(0,option):
		var c : BuyButton = BuyButton.new()
		add_child(c) 

	add_child(RerollButton.new())
	add_child(ExitButton.new())

func _ready() -> void:
	roll()