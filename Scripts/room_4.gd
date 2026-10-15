extends Node2D
@onready var info_tomb_color: ColorRect = $info_tomb_color
@onready var info_tomb_label: Label = $info_tomb_label

func _ready() -> void:
	$Pharaoh.position = Global.room_4_position
	info_tomb_label.visible = false
	info_tomb_color.visible = false
	info_tomb_label.text = ""


func _on_center_ruin_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $center_ruin.overlaps_area(area):
			if Input.is_action_just_pressed("ui_accept"):
				if Global.discovered.has("brick_piece"):
					if Global.worthy == false:
						info_tomb_color.visible = true
						info_tomb_label.visible = true
						info_tomb_label.add_theme_font_size_override("font_size", 70)
						info_tomb_label.text = "I have nothing more to offer \n you have already taken all I have"
						await get_tree().create_timer(3).timeout
						info_tomb_color.visible = false
						info_tomb_label.text = ""
						info_tomb_label.visible = false
					if Global.worthy:
						info_tomb_color.visible = true
						info_tomb_label.visible = true
						info_tomb_label.add_theme_font_size_override("font_size", 30)
						info_tomb_label.text = "That is all I have to offer"
						await get_tree().create_timer(3).timeout
						info_tomb_color.visible = false
						info_tomb_label.text = ""
						info_tomb_label.visible = false
				elif Global.discovered.has("amulet"):
					Global.discovered.append("brick_piece")
					info_tomb_color.visible = true
					info_tomb_label.visible = true
					info_tomb_label.add_theme_font_size_override("font_size", 60)
					info_tomb_label.text = "The entity hands you the brick piece"
					await get_tree().create_timer(3).timeout
					info_tomb_color.visible = false
					info_tomb_label.text = ""
					info_tomb_label.visible = false
				else:
					Global.room_4_position = $Pharaoh.position
					get_tree().change_scene_to_file("res://Scenes/steal_brick_screen.tscn")
					return
			await get_tree().process_frame


func _on_text_1_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $text_1.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 30)
				info_tomb_label.text = "text left from a previous traveler:\n spaces are like a dash in time, the start of 1 word to another"
				await get_tree().create_timer(6).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_text_2_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $text_2.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 30)
				
				info_tomb_label.text = "Nothing here"
				
				await get_tree().create_timer(6).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_text_3_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $text_3.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 30)
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(6).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_text_4_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $text_4.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 30)
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(6).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_text_5_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $text_5.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 30)
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(6).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame
