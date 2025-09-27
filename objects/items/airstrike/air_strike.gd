extends Sprite2D 
class_name AirStrike

func _ready() -> void:
	global_position = Vector2(randf_range(-400,400),randf_range(-400,400))
	var tween = get_tree().create_tween()
	tween.tween_property(self, "global_scale", Vector2(1,1), 1)
	tween.play()
	await tween.finished
	tween.kill()
	explode()


func explode() -> void:
	var space_state = get_world_2d().direct_space_state

	var explosion_radius = 64.0
	var circle_shape = CircleShape2D.new()
	circle_shape.radius = explosion_radius

	var transform = Transform2D()
	transform.origin = global_position  # Center the shape on the sprite

	var query = PhysicsShapeQueryParameters2D.new()
	query.shape = circle_shape
	query.transform = transform
	query.collide_with_areas = true 

	var result = space_state.intersect_shape(query)  # max results = 32

	for item in result:
		
		var collider = item.collider

		if collider is Enemy:
			collider.damage(5*PlayerInstance.stats.Get(Stats.StatType.Damage))

	queue_free()  # Remove self after explosion
