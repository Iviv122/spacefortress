extends Node2D
class_name GamePlayEntryPoint

@export var spawner : PackedScene
@export var player : PackedScene
@export var duration : float

func _ready():
    add_child(spawner.instantiate())
    add_child(player.instantiate())

    await  get_tree().create_timer(duration).timeout
    get_tree().call_group("stage_end","on_stage_end")