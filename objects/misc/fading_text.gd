extends Label
class_name FadingText 

@export var fade_time : float = 3

func _ready() -> void:
	var tween = get_tree().create_tween()
	tween.tween_property(self, "modulate:a", 0, fade_time)
	tween.play()
	await tween.finished
	tween.kill()

