extends Node2D

@onready var info_tomb_color: ColorRect = $info_tomb_color
@onready var info_tomb_label: Label = $info_tomb_label
@onready var pharaoh: CharacterBody2D = $Pharaoh
@onready var boat: Node2D = $boat
@onready var boat_cue: Area2D = $item_info_popup
@onready var item_interact_area: Area2D = $Pharaoh/item_interact_area




func _ready() -> void:
	pharaoh.position = Global.tomb_room_position
	info_tomb_label.visible = false
	info_tomb_color.visible = false


	if Global.discovered.has("ship"):
		boat.hide()
		boat.get_node("StaticBody2D/CollisionPolygon2D").set_deferred("disabled", true)
		boat.get_node("Area2D").set_deferred("monitoring", false)
		boat_cue.hide()
		boat_cue.set_deferred("monitoring", false)




func _on_ruin_1_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $Ruin1Area2D.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(2).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame
	

func _on_ruin_2_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $Ruin2Area2D.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(2).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_ruin_3_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $Ruin3Area2D.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(2).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_ruin_4_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $Ruin4Area2D.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.text = "Nothing here"
				await get_tree().create_timer(2).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame
