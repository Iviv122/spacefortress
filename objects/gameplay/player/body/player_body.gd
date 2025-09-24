extends Area2D
class_name PlayerBody

signal damaged

func _ready():
    area_entered.connect(damage)

func damage(_a):
    if _a is Enemy:
        damaged.emit()
        queue_free()