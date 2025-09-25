class_name Health

var stats: Stats
var MaxHealth: float

signal changed(c : float,m : float)
signal death

var _current_health: float = 0.0

var CurrentHealth: float:
	get:
		return _current_health
	set(value):
		_set_health(value)

func init(s: Stats) -> void:
	stats = s
	stats.change.connect(update)
	update()
	CurrentHealth = MaxHealth 

func update() ->void:
	var val  = stats.Get(Stats.StatType.MaxHealth)
	if val <= 0:
		val = 1	

	MaxHealth = val

func _set_health(value: float) -> void:
	_current_health = value
	if _current_health > MaxHealth:
		_current_health = MaxHealth
	if _current_health <= 0:
		print("Health : death")
		death.emit()
	changed.emit(_current_health, MaxHealth)
