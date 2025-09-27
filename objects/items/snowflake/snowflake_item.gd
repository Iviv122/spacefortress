extends Item 
class_name SnowFlakeItem 

@export var turret : PackedScene

func on_start():
    spawn_thing.emit(turret)