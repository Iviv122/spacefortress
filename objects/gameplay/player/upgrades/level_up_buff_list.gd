extends Node 
class_name LevelUpBuffList 

@export var l : Array[StatTuple]

var queue : Array[StatTuple]

func PopulateQueue() ->void:
    queue = l.duplicate()
    queue.shuffle()

func PullOut() -> StatTuple:
    if queue.size() < 0:
        PopulateQueue()
    var i = queue.pick_random()
    queue.erase(i)
    return i

func _ready():
    print("buffs amount: ", l.size())