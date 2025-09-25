extends Resource 
class_name RandomStatBuff 

@export var amount : float
@export var type : Stats.StatType

func _init():
    type =  randi_range(0,Stats.StatType.size()) as Stats.StatType
    print()
