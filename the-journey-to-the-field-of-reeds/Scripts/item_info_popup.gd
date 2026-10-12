extends Area2D

@onready var ui_col: CollisionShape2D = $ui_col
@onready var hint_popup: Sprite2D = $hint_popup


func _ready():
	hint_popup.visible = false



func _on_area_entered(area: Area2D) -> void:
	if area.name == "item_col_area":
		hint_popup.visible = true



func _on_area_exited(area: Area2D) -> void:
	if area.name == "item_col_area":
		hint_popup.visible = false
