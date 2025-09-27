extends Item 
class_name AirStrikeItem 

@export var air_strike : PackedScene
@export var counter = 5
var curr_count = counter

func on_enemy_death():
	curr_count -= 1
	if curr_count == 0:
		on_complete()
		curr_count = counter

func on_complete():
	spawn_thing.emit(air_strike)