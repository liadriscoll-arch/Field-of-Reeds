extends Node2D
@onready var option_1: Button = $option1
@onready var option_2: Button = $option2
@onready var option_3: Button = $option3



func _ready() -> void:
	var option1
	var option2
	var option3
	var correct_option = randi_range(1,3)
	if correct_option == 1:
		if Global.current_guardian_guess == 1:
			option_1.text = Global.main_guardian
		elif Global.current_guardian_guess == 2:
			option_1.text = Global.guardian_2
		else:
			option_1.text = Global.guardian_3
	elif correct_option == 2:
		if Global.current_guardian_guess == 1:
			option_2.text = Global.main_guardian
		elif Global.current_guardian_guess == 2:
			option_2.text = Global.guardian_2
		else:
			option_2.text = Global.guardian_3
	else:
		if Global.current_guardian_guess == 1:
			option_3.text = Global.main_guardian
		elif Global.current_guardian_guess == 2:
			option_3.text = Global.guardian_2
		else:
			option_3.text = Global.guardian_3
