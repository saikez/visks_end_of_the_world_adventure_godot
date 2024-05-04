extends Node2D

@onready var health_stats = $HealthStats

func handle_hit():
	health_stats.health -= 1
	print("Enemy hit! ", health_stats.health)
	if health_stats.health <= 0:
		print("Enemy died!")
		queue_free()
