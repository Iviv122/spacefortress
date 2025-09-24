extends ProgressBar
class_name ExpProgress

@export var p : PlayerExpirience

func _ready():
    p.gained.connect(update)
    min_value = 0
    value = p.Exp
    max_value = p.ExpToNextLevel

func update(a:float,n:float):
    value = a
    max_value = n
