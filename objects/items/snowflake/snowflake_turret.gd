extends Node2D 
class_name SnowFlakeTurret 

@export var bullet: PackedScene
@export var rotate_speed : float

var current_reload: float

var dirs =[
	Vector2(1,0),
	Vector2(0,1),
	Vector2(-1,0),
	Vector2(0,-1),

	Vector2(1,-1),
	Vector2(1,1),
	Vector2(-1,-1),
	Vector2(-1,1),
]


func _on_game_over():
	queue_free()

func _ready():
	add_to_group("game_over")
	current_reload = 0
	global_position += Vector2(randf_range(-100,100),randf_range(-100,100))
	rotation_degrees = randf_range(-360,360) 

func shoot() -> void:
	for dir in dirs:

		var i: Bullet = bullet.instantiate()
		i.SetDir(dir.rotated(deg_to_rad(rotation_degrees)))
		i.global_position = dir + global_position
		get_parent().add_child(i)

func _process(delta):
	rotation_degrees += rotate_speed*delta
	current_reload -= delta / 2 * PlayerInstance.stats.Get(Stats.StatType.ReloadSpeed)
	if current_reload <= 0:
		current_reload = 1
		shoot()
