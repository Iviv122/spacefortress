extends VBoxContainer
class_name LevelUpMenu 

@export var options : int = 3
@export var upgradeList : StatList 

func _ready():
	reroll()
	add_to_group("reroll")

func reroll() -> void:

	var queue :Array[Stat] = upgradeList.list.duplicate()
	for i in get_children():
		i.queue_free()
	
	for i in range(0,options):
		var option : LevelUpChoice = LevelUpChoice.new()

		var stat = queue.pick_random()
		queue.erase(stat)
		option.SetStat(stat)

		add_child(option)
