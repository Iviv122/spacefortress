extends Label
class_name PlayerStatsLabel 

@export var stats : PlayerStats 


func update() ->void:
	var s = ""
	var iterator = 0
	for i in Stats.StatType:
		var val = stats.basestats.Get(iterator)
		iterator+=1
		s += str(i) + " "+ str(val) + "\n"

	text = s
	print(s)

func _ready():
	await get_tree().process_frame 
	update()
	stats.basestats.change.connect(update)
