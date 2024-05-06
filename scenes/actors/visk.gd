class_name Visk
extends CharacterBody2D

signal used_weapon(weapon_instance, location)
signal health_updated(value)
signal died()

@export var invulnerability_timeout = 1

@onready var weapon: ActorWeapon = $ActorWeapon
@onready var health_stats: HealthStats = $HealthStats
@onready var invulnerability_timer: Timer = $InvulnerabilityTimer
@onready var actor_collider: CollisionShape2D = $actor_collider

func handle_hit():
	if invulnerability_timer.is_stopped() and !is_dead():
		invulnerability_timer.start(invulnerability_timeout)
		health_stats.take_damage(1)
		emit_signal("health_updated", health_stats.health)

func _input(event):
	if event.is_action_pressed("use_weapon"):
		weapon.use_weapon()

func _on_actor_weapon_used(weapon_instance, location):
	emit_signal("used_weapon", weapon_instance, location)

func is_dead():
	if health_stats.is_dead():
		if !actor_collider.disabled:
			actor_collider.disabled = true
		return true


func _on_health_stats_zeroed():
	emit_signal("died")
