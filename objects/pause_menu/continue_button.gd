extends Button 
class_name ContinueButton

@export var mene : PauseMenu

func _pressed() -> void:
	mene.disappear()
