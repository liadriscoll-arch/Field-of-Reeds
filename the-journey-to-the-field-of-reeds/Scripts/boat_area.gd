extends Area2D

@onready var boat: Node2D = $".."

@onready var pharaoh: CharacterBody2D = $"../../Pharaoh"

const SOUTH_BANK := Vector2(0, 186)
const NORTH_BANK := Vector2(0, -78)

var player_in_range := false


func _ready() -> void:
	area_exited.connect(_on_area_exited)


func _on_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		player_in_range = true


func _on_area_exited(area: Area2D) -> void:
	if area.name == "item_interact_area":
		player_in_range = false


func _unhandled_input(event: InputEvent) -> void:
	if not player_in_range or not boat.visible:
		return
	if not event.is_action_pressed("ui_accept"):
		return
	get_viewport().set_input_as_handled()
	if Global.discovered.has("ship"):
		_ride_boat()
	else:
		_pick_up_boat()


func _pick_up_boat() -> void:
	Global.discovered.append("ship")
	player_in_range = false
	boat.hide()
	boat.get_node("StaticBody2D/CollisionPolygon2D").set_deferred("disabled", true)
	set_deferred("monitoring", false)
	var cue: Area2D = get_node_or_null("../../item_info_popup") as Area2D
	if cue:
		cue.hide()
		cue.set_deferred("monitoring", false)


func _ride_boat() -> void:
	if Global.ship_location == SOUTH_BANK:
		pharaoh.position = Vector2(0, -470)
		Global.ship_location = NORTH_BANK
	else:
		pharaoh.position = Vector2(0, 254)
		Global.ship_location = SOUTH_BANK
	boat.position = Global.ship_location
