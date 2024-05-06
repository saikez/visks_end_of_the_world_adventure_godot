class_name EnemyPathfinder
extends Node

#@export var target: Visk
@export var movement_stats: MovementStats

@onready var actor = owner
@onready var target: Visk = get_node("/root/Game/Visk")

func _physics_process(_delta):
	if target and !target.is_dead():
		var direction = (target.global_position - actor.global_position).normalized()
		actor.velocity = direction * movement_stats.speed
	else:
		actor.velocity = Vector2.ZERO
