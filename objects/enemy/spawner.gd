extends Node2D
class_name Spawner

@export var wave_composition : WaveComposition 
@export var radius : float 

var wave : Wave

var current_reload
var queue : Array[PackedScene]
var index = 0

func _ready():

	wave = wave_composition.waves[PlayerInstance.misc_stats.wave_count] 
	queue  = wave.enemy_kinds.duplicate()
	queue.shuffle()

	current_reload = 1

var initPos : Vector2 = Vector2(0,0)

func spawn():
	index %= queue.size()
	var x = randf_range(-6,6)
	var pos : Vector2  = Vector2(cos(x),sin(x))*90

	var i : Enemy = queue[index].instantiate()
	index +=1
	i.global_position = pos*radius
	i.SetDir(initPos-pos)

	add_child(i)

func _process(delta):
	current_reload -= delta*wave.spawn_multiplier*PlayerInstance.stats.Get(Stats.StatType.Baiting)
	if current_reload <=0:
		spawn()
		current_reload = 1
