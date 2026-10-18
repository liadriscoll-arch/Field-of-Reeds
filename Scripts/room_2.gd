extends Node2D
@onready var pharaoh: CharacterBody2D = $Pharaoh
@onready var info_tomb_color: ColorRect = $info_tomb_color
@onready var info_tomb_label: Label = $info_tomb_label
@onready var sprite_2d_4: Sprite2D = $Sprite2D4




func _ready() -> void:
	music.play_music_game()
	info_tomb_color.visible = false
	info_tomb_label.visible = false
	$Pharaoh.position = Global.room_2_position
	sprite_2d_4.flip_h = true
	




func _on_wall_area_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $wall_area.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				
				if Global.discovered.has("brick_piece"):
					info_tomb_label.add_theme_font_size_override("font_size", 40)
					info_tomb_label.text = "You place the last piece to find the name:\n" + Global.main_guardian
					Global.main_name_known = true
					await get_tree().create_timer(4).timeout
					
				elif Global.brick_found:
					info_tomb_label.add_theme_font_size_override("font_size", 50)
					info_tomb_label.text = "You place the brick to find the name:\n" + Global.guardian_2
					Global.g2_name_known = true 
					await get_tree().create_timer(4).timeout
					
				else:
					info_tomb_label.add_theme_font_size_override("font_size", 80)
					info_tomb_label.text = "Something here is missing"
					await get_tree().create_timer(3).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_ruin_5_area_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $Ruin5Area.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 100)
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(2).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_ruin_6_area_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $Ruin6Area.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 100)
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(2).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_ruin_7_area_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $Ruin7Area.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 100)
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(2).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_ruin_8_area_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $Ruin8Area.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				if Global.brick_found:
					info_tomb_label.add_theme_font_size_override("font_size", 100)
					info_tomb_label.text = "Nothing here"
				else:
					info_tomb_label.add_theme_font_size_override("font_size", 40)
					info_tomb_label.text = "A broken brick in the rubble leaves half a spell to find\nthe name of the door guardian"
					Global.brick_found = true
				await get_tree().create_timer(4).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_ruin_9_area_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $Ruin9Area.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 100)
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(2).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_ruin_10_area_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $Ruin10Area.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 100)
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(2).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame
