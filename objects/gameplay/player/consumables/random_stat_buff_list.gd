extends Resource
class_name RandomStatBuffList 

@export var l : Array[RandomStatBuff]

func _init():
    print("buffs amount: ", l.size())