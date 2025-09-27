extends LoadScene 
class_name CharacterSelect 

@export var item_list : ItemsList 

func _pressed() -> void:
	for i in item_list.list:
		PlayerInstance.inventory.append(i)
	load_scene()
