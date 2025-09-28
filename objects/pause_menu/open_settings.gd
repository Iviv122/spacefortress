extends Button
class_name OpenSettings

@export var scene : String 

# DONT QUESTION THIS PLEASE, I KNOW HOW EVIL THIS IS
func _pressed() -> void:
	get_parent().get_parent().get_parent().place(load(scene))
