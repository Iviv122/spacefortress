extends Label
class_name PlayerStatsLabel 

var stats : Stats 

func oneargupdate(_a:float)->void:
	update()

func update() ->void:
	var s = ""
	var iterator = 0
	for i in Stats.StatType:
		var val = stats.Get(iterator)
		iterator+=1
		s += str(i) + " "+ str(val) + "\n"

	s += "Money " + str(PlayerStatsInstance.money.CurrentMoney) + "\n"
	text = s

func _ready():
	stats = PlayerStatsInstance.stats.basestats
	stats.change.connect(update)
	PlayerStatsInstance.money.changed.connect(oneargupdate)
	update()
