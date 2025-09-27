extends  Node
class_name TurretSpawner

func _ready():
    PlayerInstance.inventory.spawn_thing.connect(spawn)
    PlayerInstance.inventory.on_start()

func spawn(item : PackedScene):
    add_child(item.instantiate())
