extends Stat 
class_name RandomStat 

@export var allowed_types : Array[Stats.StatType]

func type() ->Stats.StatType:
	return allowed_types.pick_random() 
