extends Node2D
class_name PlayerShooter

@export var bullet: PackedScene
@export var shoot_offset: float = 55

var current_reload: float

var m
var dir

func _on_game_over():
	queue_free()

func _ready():
	add_to_group("game_over")
	current_reload = 0

func shoot() -> void:
	var i: Bullet = bullet.instantiate()
	i.SetDir(dir)
	i.global_position = dir * shoot_offset + global_position
	PlayerInstance._on_main_gun_shoot()
	get_parent().add_child(i)

func _process(delta):

	m = get_global_mouse_position()
	dir = (m - global_position).normalized()
	rotation_degrees = (rad_to_deg(atan2(m.y,m.x)))+90

	current_reload -= delta * PlayerInstance.stats.Get(Stats.StatType.ReloadSpeed)
	if current_reload <= 0:
		current_reload = 1
		shoot()
