extends Button
class_name ExitButton

func _ready():
    text = "Continue"

func _pressed() -> void:
    get_tree().call_group("stage_end","on_stage_end")