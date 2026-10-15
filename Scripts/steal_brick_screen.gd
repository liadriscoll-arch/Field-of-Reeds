extends Node2D
@onready var pharaoh: CharacterBody2D = $Pharaoh


func _ready() -> void:
	Global.canmove = false
	pharaoh.position = Global.room_4_position

func _on_steal_button_pressed() -> void:
	Global.discovered.append("brick_piece")
	Global.worthy = false
	Global.canmove = true
	get_tree().change_scene_to_file("res://Scenes/room_4.tscn")


func _on_walk_away_button_pressed() -> void:
	Global.canmove = true
	get_tree().change_scene_to_file("res://Scenes/room_4.tscn")
