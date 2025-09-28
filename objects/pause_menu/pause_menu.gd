extends CanvasLayer
class_name PauseMenu

func _ready() -> void:
	disappear()

func appear() -> void:
	Engine.time_scale = 0
	visible = true

func disappear() -> void:
	Engine.time_scale = 1
	visible = false

func _input(event) -> void:
	if event.is_action_pressed("pause"):
		print("detected pause")
		if visible:
			disappear()
		else:
			appear()
