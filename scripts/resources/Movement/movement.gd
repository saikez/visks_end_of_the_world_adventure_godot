class_name Movement
extends Node

@export var actor: CharacterBody2D

func _physics_process(_delta):
	actor.move_and_slide()
