extends Item 
class_name SideGuns

@export var counter = 5
@export var directed_bullet : PackedScene
var cur_counter = counter

func on_main_gun_shoot():
	cur_counter-=1

	if cur_counter == 0:
		cur_counter = counter
		spawn_thing.emit(directed_bullet)

