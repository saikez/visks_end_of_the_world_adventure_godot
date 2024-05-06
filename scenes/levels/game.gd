extends Node2D

@onready var weapon_manager = $WeaponManager

func _input(_event):
	if Input.is_action_just_pressed("exit_game"):
		get_tree().quit()
