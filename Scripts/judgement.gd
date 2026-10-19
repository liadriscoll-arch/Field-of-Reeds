extends Node2D
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var label: Label = $Label
@onready var start_color: ColorRect = $start_color

var unworthy_scale = preload("res://Assets/reeds_scale_unworthy.png")
var worthy_scale = preload("res://Assets/reeds_scale_worthy.png")


func _ready() -> void:
	start_color.visible = true
	await get_tree().create_timer(5).timeout
	start_color.visible = false
	if Global.worthy:
		label.text = "You are worthy enough to enter the Field of Reeds."
		sprite_2d.texture = worthy_scale
	else:
		label.text = "You are not worthy enough to enter the Field of Reeds. \n You stole a brick piece from 1 of the 42 judges."
		sprite_2d.texture = worthy_scale
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Scenes/end_screen.tscn")
