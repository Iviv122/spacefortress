extends Area2D
class_name Enemy

@export var speed: float = 2
@export var health: float = 1
var dir: Vector2

func damage(d: float):
		health -= d
		if health <= 0:
			die()

func death() -> void:
	queue_free()

func die():
	death()
	PlayerInstance._on_enemy_death()

func SetDir(a: Vector2) -> void:
	dir = a * speed
	global_rotation = dir.angle() 
func _process(delta):
	global_position += dir * delta
