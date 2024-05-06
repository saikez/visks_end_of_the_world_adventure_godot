class_name ActorWeapon
extends Node2D

signal used(weapon, location)

@export var weapon: PackedScene

@onready var weapon_spawn_point = $WeaponPivotPoint/WeaponSpawnPoint
@onready var health_stats: HealthStats = $"../HealthStats"

func use_weapon():
	if health_stats:
		if !health_stats.is_dead():
			attack_with_weapon()
	else:
		attack_with_weapon()

func attack_with_weapon():
	if weapon != null:
		var weapon_instance = weapon.instantiate()
		weapon_instance.global_transform = weapon_spawn_point.global_transform
		emit_signal("used", weapon_instance, weapon_spawn_point.global_position)
