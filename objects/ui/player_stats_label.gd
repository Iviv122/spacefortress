extends Label
class_name PlayerStatsLabel 

var stats : Stats 


func update() ->void:
	var s = ""
	var iterator = 0
	for i in Stats.StatType:
		var val = stats.Get(iterator)
		iterator+=1
		s += str(i) + " "+ str(val) + "\n"

	text = s
	print(s)

func _ready():
	stats = PlayerStatsInstance.stats.basestats
	stats.change.connect(update)
	update()
