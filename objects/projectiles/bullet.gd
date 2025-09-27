extends Area2D
class_name Bullet

@export var speed : float
@export var damage : float

var dir : Vector2

func _ready():
    area_entered.connect(collide)
    damage *= PlayerInstance.stats.Get(Stats.StatType.Damage)

func death():
    queue_free()

func collide(_a):
    if _a is Enemy:
        _a.damage(damage)
        death()

func SetDir(d : Vector2) -> void:
    dir = d*speed 

func _process(delta):
    global_position += dir*delta
    if global_position.length() > 1000:
        queue_free()