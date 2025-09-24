extends Area2D
class_name Bullet

@export var Speed : float
@export var Damage : float

var dir : Vector2

func _ready():
    area_entered.connect(die)

func die(_a):
    queue_free()

func SetDir(d : Vector2) -> void:
    dir = d*Speed 

func _process(delta):
    global_position += dir*delta
