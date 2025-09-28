extends CanvasLayer
class_name PauseMenu

@export var start_scene : PackedScene

func _ready() -> void:
	disappear()
	place(start_scene)

func place(menu : PackedScene) -> void:
	for i in get_children():
		i.queue_free()
	add_child(menu.instantiate())

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
