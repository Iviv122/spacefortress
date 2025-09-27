extends Resource
class_name Item

@export var sprite : Texture2D
@export var name : String
@export_multiline var description : String

signal spawn_thing(thing : PackedScene)

func on_pick_up():
    pass
func on_remove():
    pass

func on_enemy_death():
    pass

func on_start():
    pass
