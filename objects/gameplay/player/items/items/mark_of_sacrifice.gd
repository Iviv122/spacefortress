extends Item
class_name MarkOfSacrifice 

func OnPickUp() -> void:
	PlayerStatsInstance.health.CurrentHealth = 1
	var val = PlayerStatsInstance.stats.basestats.Get(Stats.StatType.Damage)
	PlayerStatsInstance.stats.basestats.Set(val+1,Stats.StatType.Damage)