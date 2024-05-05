extends Node

func _on_visk_used_weapon(weapon_instance, location):
	add_child(weapon_instance)
	weapon_instance.global_position = location
