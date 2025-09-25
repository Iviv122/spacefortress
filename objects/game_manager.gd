extends Node
class_name GameManager

@export var gameplay : PackedScene 
@export var shop : PackedScene
@export var RoundDuration : float = 15 


var g 
var s

var IsPlaying = true
var IsGameOver = false
func _ready():
	add_to_group("stage_end")
	add_to_group("game_over")
	play()


func on_stage_end()->void:
	switch()

func _on_game_over() ->void:
	IsGameOver = true

func switch():
	if !IsGameOver:
		return;

	if g != null:
		g.queue_free()
	if s != null:
		s.queue_free()
	
	if IsPlaying :
		shopping()
		IsPlaying = false
	else:
		play()
		IsPlaying = true 

func shopping():
	s = shop.instantiate()
	add_child(s)

func play():
	
	g = gameplay.instantiate()
	add_child(g)
