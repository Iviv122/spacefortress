class_name Health

var stats: Stats
var max_health: float

signal change(c: float, m: float)
signal death

var _current_health: float = 0.0

func _init(s: Stats) -> void:
	stats = s
	stats.change.connect(update)
	update()
	heal_full()

func heal_full():
	_current_health = max_health

func update() -> void:
	var val = stats.Get(Stats.StatType.MaxHealth)
	if val <= 0:
		val = 1
	set_max_health(val)
	change.emit(_current_health,max_health)

func set_max_health(v: float) -> void:
	max_health = v
	if _current_health > max_health:
		_current_health = max_health

func heal(value: float) -> void:
	_current_health += value
	if _current_health > max_health:
		_current_health = max_health
	change.emit(_current_health, max_health)

func damage(value: float) -> void:
	PlayerInstance.misc_stats.damage_took()
	_current_health -= value
	if _current_health <= 0:
			death.emit()
	change.emit(_current_health, max_health)
