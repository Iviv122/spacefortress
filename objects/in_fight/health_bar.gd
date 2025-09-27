extends ProgressBar
class_name HealthBar 

func _ready() -> void:
	PlayerInstance.health.changed.connect(update)
	value = PlayerInstance.health._current_health
	max_value = PlayerInstance.health.max_health

func update(v,m)-> void:
	value = v
	max_value = m