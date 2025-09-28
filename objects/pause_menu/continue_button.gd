extends Button 
class_name ContinueButton

@export var mene : PauseMenu

func _pressed() -> void:
	get_parent().get_parent().get_parent().disappear()
