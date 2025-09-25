extends Button 
class_name Switcher

var option : int

signal selected(option:int) 
func _pressed() -> void:
	selected.emit(option)