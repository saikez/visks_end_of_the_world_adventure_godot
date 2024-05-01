class_name EnemyPathfinder
extends Node

@export var actor: CharacterBody2D
@export var target: CharacterBody2D
@export var movement_stats: MovementStats

func _physics_process(_delta):
	var direction = (target.global_position - actor.global_position).normalized()
	actor.velocity = direction * movement_stats.speed
