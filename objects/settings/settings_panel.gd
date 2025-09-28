extends Panel
class_name SettingsPanel

@export var inseparate_scene = false
@export var scene : String 
@export var pause_menu_panel : String 

func close()->void:
    if inseparate_scene:
        get_tree().call_group("load_scene","load_scene",load(scene))
    else:
        get_parent().place(load(pause_menu_panel))