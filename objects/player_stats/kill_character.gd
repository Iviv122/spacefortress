extends Button 
class_name KillCharacterButton

func kill()->void:

	PlayerInstance.death()

func _pressed() -> void:
	kill()