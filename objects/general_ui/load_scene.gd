extends Button
class_name LoadScene 

@export var scene : PackedScene

func _pressed() -> void:
	get_tree().call_group("load_scene","load_scene",scene)