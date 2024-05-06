class_name MovementVelocityInput
extends Node

@export var actor: CharacterBody2D
@export var movement_stats: MovementStats

@onready var death_animation_timer = $DeathAnimationTimer

func _physics_process(_delta):
	if !actor.is_dead():
		# Get a normalised vector for movement direction
		var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
		actor.velocity = direction * movement_stats.speed
	else:
		actor.velocity = lerp(Vector2(0.0, -200.0), Vector2(0.0, 200.0), 1.0 - death_animation_timer.time_left)
		actor.rotation = lerp(actor.rotation, actor.rotation + PI, 0.1)


func _on_health_stats_zeroed():
	death_animation_timer.start()
