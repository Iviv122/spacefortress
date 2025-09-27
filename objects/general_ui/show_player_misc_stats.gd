extends Label
class_name ShowPlayerMiscStats

func update()->void:
	text = PlayerInstance.misc_stats.to_string()

func _ready():
	update()
	PlayerInstance.misc_stats.update.connect(update)
