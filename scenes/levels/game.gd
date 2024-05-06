extends Node2D

@export var enemy_spawn_path: PackedScene

@onready var weapon_manager = $WeaponManager

func _ready():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)

func _input(_event):
	if Input.is_action_just_pressed("exit_game"):
		get_tree().quit()
