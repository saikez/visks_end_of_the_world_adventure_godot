extends Node2D

var spawn_count = 1

@export var enemies: Array[PackedScene]
@export var spawn_path = Node2D

@onready var spawn_timer = $EnemySpawnTimer

func _on_enemy_spawn_timer_timeout():
	for n in spawn_count:
		var enemy = enemies[0] if [0,1].pick_random() == 1 else enemies.pick_random()
		var enemy_instance = enemy.instantiate()
		spawn_path.progress_ratio = randf()
		enemy_instance.position = spawn_path.position
		owner.add_child(enemy_instance)
	spawn_count += 1

func stop_spawning():
	spawn_timer.stop()

func _on_visk_died():
	stop_spawning()
