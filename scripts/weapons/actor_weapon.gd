class_name ActorWeapon
extends Node

signal used(weapon, location)

@export var weapon: PackedScene

@onready var weapon_spawn_point = $WeaponPivotPoint/WeaponSpawnPoint

func use_weapon():
	if weapon != null:
		var weapon_instance = weapon.instantiate()
		weapon_instance.global_transform = weapon_spawn_point.global_transform
		emit_signal("used", weapon_instance, weapon_spawn_point.global_position)
