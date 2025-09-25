## place for all info
extends Node
class_name Player

@export var stats : PlayerStats
@export var expirience : PlayerExpirience

var inventory : Inventory = Inventory.new()
var health : Health = Health.new()
var money : Money = Money.new()

func _on_enemy_death():
	expirience._on_enemy_death()
	money._on_enemy_death()
	# inventory ig

func _on_player_got_damage(amount : float):
	health.CurrentHealth -= amount	

func init() ->void:
	stats.init()
	health.init(stats.basestats)
	health.death.connect(death)

func death() ->void:
	## death save items?
	if health.CurrentHealth <= 0:
		get_tree().call_group("game_over","_on_game_over")

func _ready():
	init()
	add_to_group("enemy_death")
	add_to_group("player_got_damage")