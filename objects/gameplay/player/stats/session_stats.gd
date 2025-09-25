extends Node 
class_name SessionStats

signal update

var Kills : int
var Wave : int
var ItemBought : int
var Rerolls : int 

var shopping = false

func _ready():
	add_to_group("enemy_death")
	add_to_group("stage_end")
	add_to_group("item_bought")
	add_to_group("reroll")

func _on_reroll():
	Rerolls+=1
	update.emit()

func _on_item_bought():
	ItemBought+=1
	update.emit()

func _on_enemy_death():
	Kills+=1
	update.emit()

func on_stage_end():
	if !shopping:
		Wave+=1
		update.emit()
		shopping = true
	else:
		shopping = false

func _to_string() -> String:
	return "Kills: " + str(Kills) + "\n" + "Wave: " + str(Wave) + "\n" + "Items bought: " + str(ItemBought) + "\n" + "Rerols: " + str(Rerolls) 