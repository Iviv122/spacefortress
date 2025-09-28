extends Button
class_name OpenSettings

@export var scene : String 

func _pressed() -> void:
	get_parent().get_parent().get_parent().place(load(scene))
