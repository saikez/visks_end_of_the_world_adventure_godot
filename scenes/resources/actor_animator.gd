class_name ActorAnimator
extends Node

@export var actor: CharacterBody2D
@export var animated_sprite: AnimatedSprite2D

func _physics_process(_delta):
	# Flip sprite based on direction
	if actor.velocity.x > 0 && animated_sprite.flip_h == true:
		animated_sprite.flip_h = false
	elif actor.velocity.x < 0 && animated_sprite.flip_h == false:
		animated_sprite.flip_h = true
	
	# Change between run and idle animation
	if actor.velocity.is_zero_approx():
		animated_sprite.play("idle")
	else:
		animated_sprite.play("move")
	
	if actor.has_method("is_dead") and actor.is_dead():
		animated_sprite.play("dead")
