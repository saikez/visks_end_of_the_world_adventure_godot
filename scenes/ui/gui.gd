extends CanvasLayer

@onready var health_bar = $MarginContainer/Rows/TopRow/HealthBar

var visk: Visk

func set_player(player: Visk):
	self.visk = player
	set_health_value(visk.health_stats.health)

func set_health_value(value):
	health_bar.update_health(value)

func _on_visk_health_updated(value):
	set_health_value(value)
