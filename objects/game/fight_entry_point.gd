extends Node2D
class_name FightEntryPoint

@export var to_spawn : Array[PackedScene]
@export var lose_screen : PackedScene 

func _ready() -> void:
	for i in to_spawn:
		add_child(i.instantiate())