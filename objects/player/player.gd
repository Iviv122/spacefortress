extends Node 
class_name Player

@export var stats : Stats
@export var start_stats : Array[Stat] 
@export var start_items : Array[Item]

var health : Health
var money : Money
var expirience : Expirience
var misc_stats : MiscStats 
var inventory : Inventory


func on_start():
		inventory.on_start()

func _on_enemy_death():
	money._on_enemy_death()
	expirience._on_enemy_death()
	inventory.on_enemy_death()
	misc_stats.killed()

func _ready():
		stats.Apply(start_stats)

		health = Health.new(stats)
		money = Money.new()
		expirience = Expirience.new()
		misc_stats = MiscStats.new()
		inventory = Inventory.new()

		for i in start_items:
			inventory.append(i)
