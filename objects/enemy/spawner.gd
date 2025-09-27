extends Node2D
class_name Spawner

@export var e : Array[PackedScene]
@export var speed : float
@export var radius : float 

var current_reload

func _ready():
	speed *= PlayerInstance.misc_stats.wave_count*PlayerInstance.misc_stats.wave_count
	current_reload = 1

var initPos : Vector2 = Vector2(0,0)

func spawn():
	var x = randf_range(-6,6)
	var pos : Vector2  = Vector2(cos(x),sin(x))*90

	var i : Enemy = e.pick_random().instantiate()
	i.global_position = pos*radius
	i.SetDir(initPos-pos)

	add_child(i)

func _process(delta):
	current_reload -= delta*speed*PlayerInstance.stats.Get(Stats.StatType.Baiting)
	if current_reload <=0:
		spawn()
		current_reload = 1