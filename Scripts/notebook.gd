extends Node2D
@onready var note_side_1: Label = $note_side_1
@onready var note_side_2: Label = $note_side_2



func _ready() -> void:
	note_side_1.text = Global.notes


func _process(delta: float) -> void:
	pass
