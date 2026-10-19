extends Node2D
@onready var sprite_2d: Sprite2D = $Sprite2D

var unworthy_scale = preload("res://Assets/reeds_scale_unworthy.png")
var worthy_scale = preload("res://Assets/reeds_scale_worthy.png")

func _ready() -> void:
	if Global.worthy:
		sprite_2d.texture = worthy_scale
	else:
		sprite_2d.texture = unworthy_scale


func _on_quit_button_pressed() -> void:
	get_tree().quit()



func _on_play_again_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/start_screen.tscn")
