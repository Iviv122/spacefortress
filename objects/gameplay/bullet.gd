extends Area2D
class_name Bullet

@export var Speed : float
@export var Damage : float

var dir : Vector2

func _ready():
    area_entered.connect(die)
    await get_tree().create_timer(9).timeout
    death()

func death():
    queue_free()

func die(_a):
    death()

func SetDir(d : Vector2) -> void:
    dir = d*Speed 

func _process(delta):
    global_position += dir*delta
