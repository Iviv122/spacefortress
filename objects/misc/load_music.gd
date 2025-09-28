extends Node
class_name LoadMusic

@export var music : Array[AudioStream]

func _ready() -> void:
	get_tree().call_group("load_music","load_music",music.pick_random())
