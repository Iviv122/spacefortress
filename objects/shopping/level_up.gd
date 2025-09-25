extends Button 
class_name ButtonLevelUpChoice 

func _pressed() -> void:  
    get_tree().call_group("next_shopping_step","next_step")