extends Node


func _ready() -> void:
	add_to_group("game_over")

func _on_game_over():
	queue_free()
