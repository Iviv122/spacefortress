extends Node2D
class_name PlayerShooter

@export var ReloadSpeed: float
@export var Bul: PackedScene
@export var b : ProgressBar

var reload: SceneTreeTimer
var current_reload: float

func _ready():
	current_reload = 0
	b.min_value = 0
	b.max_value = 1

func shoot() -> void:
	current_reload = 1

	var m = get_global_mouse_position()
	
	var dir: Vector2 = (m - global_position).normalized()
	
	var i: Bullet = Bul.instantiate()
	i.SetDir(dir)

	i.global_position = dir*55+ global_position
	get_tree().root.add_child(i)

func _process(delta):
	current_reload -= delta * ReloadSpeed
	b.value = current_reload
	if current_reload <= 0:
		shoot()
