extends Item 
class_name  MiniTurretsItem 

@export var turret : PackedScene

func on_start():
    spawn_thing.emit(turret)
    spawn_thing.emit(turret)
    spawn_thing.emit(turret)