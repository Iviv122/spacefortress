extends Area2D
class_name PlayerBody

@export var DeathParticles : PackedScene


var dead = false

func _ready():
	area_entered.connect(damage)
	PlayerInstance.health.death.connect(death)
	PlayerInstance.health.heal_full()

func death() -> void:
	if !dead:
		dead = true
		Engine.time_scale = 0

func damage(_a):
	if _a is Enemy:
		_a.die()
		PlayerInstance.health.damage(1)
