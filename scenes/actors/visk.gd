class_name Visk
extends CharacterBody2D

signal used_weapon(weapon_instance, location)

@onready var weapon: ActorWeapon = $ActorWeapon
@onready var health_stats: HealthStats = $HealthStats

func handle_hit():
	health_stats.health -= 1
	print("Visk Hit! ", health_stats.health)
	if health_stats.health <= 0:
		print("Visk Died!")
		queue_free()

func _input(event):
	if event.is_action_pressed("use_weapon"):
		weapon.use_weapon()

func _on_actor_weapon_used(weapon_instance, location):
	emit_signal("used_weapon", weapon_instance, location)
