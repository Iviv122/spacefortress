extends Node2D 
class_name  MiniTurret 

@export var bullet: PackedScene
@export var rotate_speed : float

var current_reload: float

func _on_game_over():
	queue_free()

func _ready():
	add_to_group("game_over")
	current_reload = 0
	global_position += Vector2(randf_range(-200,200),randf_range(-200,200))
	rotation_degrees += randf_range(-90,90)

func shoot() -> void:
		var i: Bullet = bullet.instantiate()

		var dir =Vector2.UP.rotated(deg_to_rad(rotation_degrees))
		i.SetDir(dir)
		i.global_position = dir + global_position
		get_parent().add_child(i)

func _process(delta):
	rotation_degrees += rotate_speed*delta
	current_reload -= delta* PlayerInstance.stats.Get(Stats.StatType.ReloadSpeed)
	if current_reload <= 0:
		current_reload = 1
		shoot()
