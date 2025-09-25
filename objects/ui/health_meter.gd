extends ProgressBar 
class_name HealthMeter

func _ready() -> void:
	min_value = 0
	PlayerStatsInstance.health.changed.connect(update)
	update(PlayerStatsInstance.health.CurrentHealth,PlayerStatsInstance.health.MaxHealth)

func update(c,m) -> void:
	max_value = m
	value = c