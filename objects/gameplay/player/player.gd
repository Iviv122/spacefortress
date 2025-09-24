## place for all info
extends Node
class_name Player

@export var stats : PlayerStats
@export var expirience : PlayerExpirience

func _on_enemy_death():
    expirience._on_enemy_death()
    # inventory ig

func init() ->void:
    stats.init()

func _ready():
    init()
    add_to_group("enemy_death")