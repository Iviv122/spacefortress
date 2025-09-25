extends Label
class_name SessionStatsLabel 

func _ready() -> void:
	SessionStatsInstance.update.connect(update)
	update()

func update():
	text = SessionStatsInstance.to_string()

