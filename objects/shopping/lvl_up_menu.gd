extends VBoxContainer 
class_name LevelUpMenu

@export var options = 3

func _ready():
	LvlUpBuffs.PopulateQueue()
	for i in options:
		var b : ButtonLevelUpChoice = ButtonLevelUpChoice.new()
		b.setBuff(LvlUpBuffs.PullOut())
		add_child(b)