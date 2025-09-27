class_name MiscStats

signal update

var wave_count : int = 1
var kills : int = 0
var rerolls : int = 0 
var item_bought : int = 0
var damage_taken : int = 0

func wave_beat():
	wave_count+=1
	update.emit()

func killed():
	kills+=1
	update.emit()

func rerolled():
	rerolls+=1
	update.emit()

func item_was_bought():
	item_bought+=1
	update.emit()

func damage_took():
	damage_taken+=1
	update.emit()

func _to_string() -> String:
	var s = ""
	s += "Kills: " + str(kills) + "\n"
	s += "Wave: " + str(wave_count) + "\n"
	s += "Items bought: " + str(item_bought) + "\n"
	s += "Rerols: " + str(rerolls) + "\n"
	s += "Damage taken: "  + str(damage_taken) + "\n"
	return s