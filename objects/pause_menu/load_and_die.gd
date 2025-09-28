extends KillCharacterButton 
class_name LoadAndDie

@export var scene : String

func _pressed() -> void:
    kill()
    Engine.time_scale = 1
    get_tree().call_group("load_scene","load_scene",load(scene)) 