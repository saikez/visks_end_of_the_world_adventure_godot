class_name Movement
extends Node

@onready var actor: CharacterBody2D = owner

func _physics_process(_delta):
	actor.move_and_slide()
