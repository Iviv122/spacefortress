class_name Inventory

var items : Array[Item]

signal spawn_thing(thing : PackedScene)


func append(thing : Item):
	thing.spawn_thing.connect(spawn)
	thing.on_pick_up()
	items.append(thing)

func remove(index : int):
	items[index].spawn_thing.disconnect(spawn)
	items[index].on_remove()
	items.remove_at(index)

func spawn(thing : PackedScene):
	spawn_thing.emit(thing)

func on_main_gun_shoot():
	for i in items:
		i.on_main_gun_shoot()

func on_enemy_death():
	for i in items:
		i.on_enemy_death()

func on_start():
	for i in items:
		i.on_start()
