extends Area2D

@export var speed = 300
@onready var direction = Vector2.from_angle(rotation)

func _physics_process(delta):
	position += speed * direction * delta

func _on_body_entered(body):
	if body.is_in_group("enemies"):
		body.queue_free()
	queue_free()

func _on_end_of_life_timer_timeout():
	queue_free()
