extends Label
class_name FPSMeter

func _process(_delta: float) -> void:
    text = str(1/_delta)
