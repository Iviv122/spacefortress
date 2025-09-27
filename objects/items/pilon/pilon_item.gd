extends Item 
class_name PilonTurretItem 

@export var turret : PackedScene

func on_start():
    spawn_thing.emit(turret)