extends Area2D

@onready var info_tomb_color: ColorRect = $"../info_tomb_color"
@onready var info_tomb_label: Label = $"../info_tomb_label"
@onready var pharaoh: CharacterBody2D = $"../Pharaoh"




func _on_body_entered(body: Node2D) -> void:
	
	if body.name != "Pharaoh":
		return 

	if not Global.g2_name_known:
		info_tomb_color.visible = true
		info_tomb_label.add_theme_font_size_override("font_size", 60)
		info_tomb_label.text = "I will let you in if you know my name"
		info_tomb_label.visible = true
		await get_tree().create_timer(5).timeout
		info_tomb_color.visible = false
		info_tomb_label.text = ""
		info_tomb_label.visible = false
		return
 
	Global.room_2_position = Vector2(body.position.x - 10, body.position.y)
	if Global.guardian_2_guessed:
		get_tree().change_scene_to_file("res://Scenes/room_4.tscn")
	else:
		Global.current_guardian_guess = 2
		get_tree().change_scene_to_file("res://Scenes/guardian_guess_screen.tscn")
