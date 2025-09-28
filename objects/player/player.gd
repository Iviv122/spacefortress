extends Node
class_name Player

@export var start_stats: Array[Stat]
@export var start_items: Array[Item]


var stats
var health: Health
var money: Money
var expirience: Expirience
var misc_stats: MiscStats
var inventory: Inventory

func on_start():
		inventory.on_start()

func _on_main_gun_shoot():
	inventory.on_main_gun_shoot()

func _on_enemy_death():
	money._on_enemy_death()
	expirience._on_enemy_death()
	inventory.on_enemy_death()
	misc_stats.killed()

func death() -> void:
	init()

func init() -> void:
	stats = Stats.new()
	stats.Apply(start_stats)

	health = Health.new(stats)
	money = Money.new()
	expirience = Expirience.new()
	misc_stats = MiscStats.new()
	inventory = Inventory.new()

	for i in start_items:
		inventory.append(i)
	health.death.connect(death)

func _ready():
	init()
