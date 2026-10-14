extends Node2D

@onready var pharaoh: CharacterBody2D = $Pharaoh

@onready var option_1: Button = $option1
@onready var option_2: Button = $option2
@onready var option_3: Button = $option3
@onready var label: Label = $Label
var buttons = []
var correct_option = 0
func _ready() -> void:
	
	pharaoh.position = Global.room_2_position
	
	Global.canmove = false
	buttons = [option_1, option_2, option_3]
	var names = [Global.main_guardian, Global.guardian_2, Global.guardian_3]
	var correct_name = names[Global.current_guardian_guess - 1]
	var wrong_names = Global.gate_guardians.duplicate()
	wrong_names.shuffle()
	correct_option = randi_range(0, 2)
	for i in 3:
		if i == correct_option:
			buttons[i].text = correct_name
		else:
			buttons[i].text = wrong_names.pop_back()
	option_1.pressed.connect(_on_option_1_pressed)
	option_2.pressed.connect(_on_option_2_pressed)
	option_3.pressed.connect(_on_option_3_pressed)
func _on_option_1_pressed() -> void:
	check_answer(0)

func _on_option_2_pressed() -> void:
	check_answer(1)

func _on_option_3_pressed() -> void:
	check_answer(2)

func check_answer(chosen: int) -> void:

	for button in buttons:
		button.disabled = true

	if chosen == correct_option:
		label.text = "CORRECT!"
		if Global.current_guardian_guess == 2:
			Global.guardian_2_guessed = true
			
		elif Global.current_guardian_guess == 3:
			Global.guardian_3_guessed = true
	
	else:
		label.text = "WRONG!"

	await get_tree().create_timer(2).timeout
	Global.canmove = true
	get_tree().change_scene_to_file("res://Scenes/room_2.tscn")
