extends Node2D
class_name Spawner

@export var e : PackedScene
@export var s : float
@export var r : float 
var current_reload

func _ready():
	current_reload = 3

var initPos : Vector2 = Vector2(0,0)

func spawn():
	var x = randf_range(-6,6)
	var pos : Vector2  = Vector2(cos(x),sin(x))*90

	var i : Enemy = e.instantiate()
	i.global_position = pos*15
	i.SetDir(initPos-pos)


	get_tree().root.add_child(i)
	print("spawned")

func _process(delta):
	current_reload -= delta*s
	if current_reload <=0:
		spawn()
		current_reload = 1
