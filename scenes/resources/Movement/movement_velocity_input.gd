class_name MovementVelocityInput
extends Node

@export var actor: CharacterBody2D
@export var movement_stats: MovementStats

func _physics_process(_delta):
	# Get a normalised vector for movement direction
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	actor.velocity = direction * movement_stats.speed
