extends Node 
class_name ItemPool 

@export var l : Array[Item]

var queue : Array[Item]

func PopulateQueue() ->void:
    queue = l.duplicate()
    queue.shuffle()

func PullOut() -> Item:
    if queue.size() <= 0:
        PopulateQueue()
    var i = queue.pick_random()
    queue.erase(i)
    return i

func _ready():
    PopulateQueue()
    print("here are " + str(queue.size()) + " items")