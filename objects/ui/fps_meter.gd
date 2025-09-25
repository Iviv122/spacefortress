extends Label
class_name FPSMeter

func _ready():
    add_to_group("game_over")
func _on_game_over():
    queue_free()

func _process(_delta: float) -> void:
    text = "FPS: " + str(1/_delta)
