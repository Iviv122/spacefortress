extends Node2D
class_name ShotgunTurret

@export var bullet: PackedScene

var current_reload: float

var m
var dir

func _on_game_over():
	queue_free()

func _ready():
	add_to_group("game_over")
	current_reload = 0
	global_position += Vector2(randf_range(-50,50),randf_range(-50,50))

func shoot() -> void:
	m = get_global_mouse_position()
	dir = (m - global_position).normalized()
	for j in range(-1,2):

		var i: Bullet = bullet.instantiate()
		i.SetDir(dir.rotated(deg_to_rad(15*j)))
		i.global_position = dir + global_position
		get_parent().add_child(i)

func _process(delta):


	current_reload -= delta / 4 * PlayerInstance.stats.Get(Stats.StatType.ReloadSpeed)
	if current_reload <= 0:
		current_reload = 1
		shoot()

