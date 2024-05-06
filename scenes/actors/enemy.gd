class_name Enemy
extends Node2D

@onready var health_stats = $HealthStats
var player: Visk = null

func _physics_process(delta):
	if player:
		player.handle_hit()

func handle_hit():
	health_stats.take_damage(1)
	if health_stats.is_dead():
		queue_free()

func _on_attack_box_body_entered(body):
	if body.is_in_group("allies") && body.has_method("handle_hit"):
		player = body

func _on_attack_box_body_exited(body):
	if body == player:
		player = null
