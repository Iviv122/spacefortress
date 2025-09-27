extends Button
class_name SwitchButton

signal switch(i : int)

var index 

func _pressed() -> void:
    switch.emit(index)

func _init(i : int):
    index = i