class_name Spear
extends Area2D

@export var speed = 300
@onready var direction = Vector2.from_angle(rotation)

func _physics_process(delta):
	position += speed * direction * delta

func _on_end_of_life_timer_timeout():
	queue_free()


func _on_Weapon_body_entered(body):
	if body.is_in_group("enemies") && body.has_method("handle_hit"):
		body.handle_hit()
		queue_free()
