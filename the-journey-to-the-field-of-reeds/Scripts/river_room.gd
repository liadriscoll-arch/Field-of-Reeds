extends Node2D

@onready var pharaoh: CharacterBody2D = $Pharaoh
@onready var info_tomb_color: ColorRect = $info_tomb_color
@onready var info_tomb_label: Label = $info_tomb_label
@onready var boat: Node2D = $boat


func _ready() -> void:
	pharaoh.position = Global.room_river_position
	info_tomb_label.visible = false
	info_tomb_color.visible = false
	boat.get_node("StaticBody2D/CollisionPolygon2D").set_deferred("disabled", true)


	if Global.discovered.has("ship"):
		boat.position = Global.ship_location
		boat.show()
	else:
		boat.hide()
		boat.get_node("StaticBody2D/CollisionPolygon2D").set_deferred("disabled", true)
		boat.get_node("Area2D").set_deferred("monitoring", false)
