extends Node

@export var stats : Stats
@export var statlist : StatList

func _ready():
	if stats != null:
		print(stats.to_string())
	if statlist != null:
		for i in statlist.list:
			print(str(i.amount()) + " " + Stats.Name(i.type()))
