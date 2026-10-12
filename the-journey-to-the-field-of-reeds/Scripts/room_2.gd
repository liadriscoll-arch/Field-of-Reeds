extends Node2D
@onready var pharaoh: CharacterBody2D = $Pharaoh
@onready var info_tomb_color: ColorRect = $info_tomb_color
@onready var info_tomb_label: Label = $info_tomb_label
@onready var sprite_2d_4: Sprite2D = $Sprite2D4




func _ready() -> void:
	info_tomb_color.visible = false
	info_tomb_label.visible = false
	$Pharaoh.position = Global.room_2_position
	sprite_2d_4.flip_h = true
