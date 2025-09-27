extends Item
class_name ItemStatsAdd

@export var stats : StatList

func on_pick_up():
	PlayerInstance.stats.Apply(stats.list)


