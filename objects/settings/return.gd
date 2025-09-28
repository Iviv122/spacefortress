extends Button
class_name Return

@export var panel : SettingsPanel 

func  _pressed() -> void:
    panel.close()
