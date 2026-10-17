extends Node2D
@onready var info_tomb_color: ColorRect = $info_tomb_color
@onready var info_tomb_label: Label = $info_tomb_label

@onready var pharaoh: CharacterBody2D = $Pharaoh

func _ready() -> void:
	$Pharaoh.position = Global.room_3_position


func _on_ruin_3_1_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $ruin3_1.overlaps_area(area): 
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


func _on_ruin_3_2_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $ruin3_2.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				if Global.discovered.has("amulet"):
					info_tomb_label.add_theme_font_size_override("font_size", 100)
					info_tomb_label.text = "Nothing here"
				else:
					info_tomb_label.add_theme_font_size_override("font_size", 40)
					info_tomb_label.text = "In the rubble you find an ancient amulet"
					Global.discovered.append("amulet")
					print("amulet")
				await get_tree().create_timer(4).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_ruin_3_3_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $ruin3_3.overlaps_area(area): 
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


func _on_ruin_3_4_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $ruin3_4.overlaps_area(area): 
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
