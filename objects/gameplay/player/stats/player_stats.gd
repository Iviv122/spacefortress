extends Node
class_name PlayerStats


@export var StartStats: Array[StatTuple]
var basestats : Stats 

func _ready():
	basestats = Stats.new()
	print(basestats)
	for i in StartStats:
		basestats.Set(i.amount+basestats.Get(i.type),i.type)
