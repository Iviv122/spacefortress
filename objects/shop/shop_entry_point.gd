extends Node2D
class_name Shop

@export var level_up : PackedScene
@export var shop_area : PackedScene
@export var fightscene : String 

var entered_shop = false

func next_step() ->void:
	for i in get_children():
		i.queue_free()


	if PlayerInstance.expirience.skill_points > 0:
		PlayerInstance.expirience.skill_points-=1
		add_child(level_up.instantiate())
		return;

	if !entered_shop:
		entered_shop = 1
		add_child(shop_area.instantiate())
		return;

	get_tree().call_group("load_scene","load_scene",load(fightscene))

func _ready():
	add_to_group("next_step")
	print(str(fightscene))
	next_step()
