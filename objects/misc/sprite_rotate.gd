extends Sprite2D
class_name RotatingSprite 

@export var speed : float

func _process(delta: float) -> void:
	rotation_degrees += speed*delta