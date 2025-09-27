extends Button
class_name Restart 

func _pressed() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()