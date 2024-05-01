extends Marker2D

@export var spear: PackedScene

func _physics_process(_delta):
	if Input.is_action_just_pressed("shoot"):
		shoot()

func shoot():
	var s = spear.instantiate()
	s.global_transform = global_transform
	owner.owner.add_child(s)
