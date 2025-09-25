extends Resource 
class_name Consumables 

@export var s : Array[StatTuple] 

func Consume(stats : Stats) -> void:
    for i in s:
        stats.Set(i.amount+stats.Get(i.type),i.type)