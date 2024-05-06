extends HBoxContainer

var heart_full = preload("res://assets/textures/Dungeon/0x72 Dungeon Individual Frames/UI Heart/ui_heart_full.png")
var heart_half = preload("res://assets/textures/Dungeon/0x72 Dungeon Individual Frames/UI Heart/ui_heart_half.png")
var heart_empty = preload("res://assets/textures/Dungeon/0x72 Dungeon Individual Frames/UI Heart/ui_heart_empty.png")

func update_health(value):
	for i in get_child_count():
		if value > i * 2 + 1:
			get_child(i).texture = heart_full
		elif value > i * 2:
			get_child(i).texture = heart_half
		else:
			get_child(i).texture = heart_empty
