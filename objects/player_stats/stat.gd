extends Resource 
class_name Stat

@export var _a : float
@export var _type : Stats.StatType

func type() ->Stats.StatType:
	return _type

func amount() ->float:
	return _a 