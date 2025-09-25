extends Node2D
class_name ShoppingEntryPoint

@export var lvlUp: PackedScene
@export var shopping: PackedScene

func _ready():
	add_to_group("next_shopping_step")
	next_step()

func next_step():
	for i in get_children():
		i.queue_free()

	if PlayerStatsInstance.expirience.SkillPoints > 0:
		print("Level UP")
		var lvl = lvlUp.instantiate()
		add_child(lvl)
		PlayerStatsInstance.expirience.SkillPoints -= 1
		return;

	var shop = shopping.instantiate()
	add_child(shop)
