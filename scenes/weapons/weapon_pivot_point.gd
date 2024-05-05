extends Marker2D

func _physics_process(_delta):
	var mouse_location: Vector2 = get_global_mouse_position()
	look_at(mouse_location)
