extends Node2D

@onready var weapon_manager = $WeaponManager

func _ready():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)

func _on_visk_used_weapon(weapon, location):
	weapon_manager.spawn_weapon(weapon, location)

func _input(_event):
	if Input.is_action_just_pressed("exit_game"):
		get_tree().quit()
