extends HBoxContainer 
class_name MenuSwitch

@export var menus : Array[Control]

func _ready() -> void:
	var it = 0
	for i in menus:
		
		var b = Switcher.new()
	
		b.option = it
		it+=1
		b.text = i.name
		b.selected.connect(select)

		add_child(b)

	select(0)
func h() -> void:
	for i in menus:
		i.hide()

func select(a :int) -> void:
	h()
	menus[a].show()

