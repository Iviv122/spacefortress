extends Area2D
class_name PlayerBody

@export var DeathParticles : PackedScene

signal damaged

var dead = false

func _ready():
    area_entered.connect(damage)
    add_to_group("game_over")

func _on_game_over() ->void:
    death()

func death() -> void:
    if !dead:
        add_child(DeathParticles.instantiate())
        dead = true

func damage(_a):
    if _a is Enemy:
        damaged.emit()
        _a.die()
        get_tree().call_group("player_got_damage","_on_player_got_damage",1)