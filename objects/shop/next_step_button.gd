extends Button
class_name NextStepButton

func _pressed() -> void:
	get_tree().call_group("next_step","next_step")
