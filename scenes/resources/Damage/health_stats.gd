class_name HealthStats
extends Node

signal zeroed()

@export var health: int = 2

@onready var max_health = self.health

func is_dead():
	return health <= 0

func take_damage(damage):
	health -= max(abs(damage), 0)
	if health <= 0:
		emit_signal("zeroed")
