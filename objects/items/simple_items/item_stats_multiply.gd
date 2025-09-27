extends Item
class_name ItemStatsMultiply

@export var stats : StatList

func on_pick_up():
	PlayerInstance.stats.ApplyMultyplication(stats.list)

