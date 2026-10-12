extends Node2D

@onready var info_tomb_color: ColorRect = $info_tomb_color
@onready var info_tomb_label: Label = $info_tomb_label
@onready var pharaoh: CharacterBody2D = $Pharaoh
@onready var boat: Node2D = $boat
@onready var boat_cue: Area2D = $item_info_popup



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
	pass 
	

func _on_ruin_2_area_2d_area_entered(area: Area2D) -> void:
	pass


func _on_ruin_3_area_2d_area_entered(area: Area2D) -> void:
	pass 


func _on_ruin_4_area_2d_area_entered(area: Area2D) -> void:
	pass
