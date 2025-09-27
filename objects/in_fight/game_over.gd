extends CanvasLayer 
class_name GameOver

func appear():
	show()	

func _ready():
	hide()
	PlayerInstance.health.death.connect(appear)