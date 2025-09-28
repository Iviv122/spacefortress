extends Item 
class_name ShotgunTurretItem 

@export var turret : PackedScene

func on_start():
    spawn_thing.emit(turret)