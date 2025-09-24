extends Area2D
class_name Enemy

var speed: float = 2
var health: float = 1
var dir: Vector2

func _ready():
    area_entered.connect(is_bullet)
    add_to_group("stage_end")
    await get_tree().create_timer(9).timeout
    death()

func is_bullet(area: Area2D):
    if area is Bullet:
        damage(area.Damage)

func damage(d: float):
        health -= d
        if health <= 0:
            die()

func on_stage_end() -> void:
    death()

func death() -> void:
    queue_free()

func die():
    queue_free()
    get_tree().call_group("enemy_death", "_on_enemy_death")

func SetDir(a: Vector2) -> void:
    dir = a * speed

func _process(delta):
    global_position += dir * delta