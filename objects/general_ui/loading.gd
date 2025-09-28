extends Label
class_name LoadingLabel 

var wait_time = 0.3
var counter = 0

func _ready():
	draw()

func draw()->void:	
	text = ""

	for i in range(0,counter):
		text += "."

	await get_tree().create_timer(wait_time).timeout
	draw()

