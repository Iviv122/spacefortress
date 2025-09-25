extends Node2D
class_name GamePlayEntryPoint

@export var spawner : PackedScene
@export var player : PackedScene
@export var duration : float

var cur_time : float

signal time_updated(left : float)

func _ready():
    add_child(spawner.instantiate())
    add_child(player.instantiate())
    cur_time = duration

func _process(delta):
    cur_time-=delta
    time_updated.emit(cur_time)
    if cur_time <= 0:
        get_tree().call_group("stage_end","on_stage_end")
        cur_time = duration