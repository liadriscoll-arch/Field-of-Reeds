extends Node



var hours_spent = "way too long"
var canmove = true
var gate_guardians = ["Sekhet-hra-asht-aru","Meti-heh","Ha-kheru","Un-hat","Seqe-hra","Uset","Se-res-hra","Aaa","Khesef-hra-asht-kheru","Seres-tepu","Ankh-f-em-fent","Shabu","Teb-hra-keha-kheft","Atek-au-kehaq-kheru","An-hra","Ates-hra","Sekhem-Mafenu-sen","Aa-maa-kheru","Khesef-khemi"]
var main_guardian
var guardian_2
var guardian_3
var tomb_room_position = Vector2(-222,122)
var room_2_position = Vector2(-7,246)
var room_river_position = Vector2(0,265)
var room_3_position = Vector2(857,-115)
var room_4_position = Vector2(-861,-115)
var discovered = []
var guardian_2_guessed = false
var guardian_3_guessed = false
var current_guardian_guess
var main_name_known = false
var g2_name_known = false
var g3_name_known = false
var ship_location = Vector2(0,186)
var brick_found = false
var worthy
var previous_scene_path = ""


func _ready() -> void:
	main_guardian = gate_guardians.pick_random()
	gate_guardians.erase(main_guardian)
	guardian_2 = gate_guardians.pick_random()
	gate_guardians.erase(guardian_2)
	guardian_3 = gate_guardians.pick_random()
	gate_guardians.erase(guardian_3)
	
	print(main_guardian)
	print(guardian_2)
	print(guardian_3)

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		Global.previous_scene_path = get_tree().current_scene.scene_file_path
		if Global.previous_scene_path == "res://Scenes/tomb_room.tscn":
			Global.tomb_room_position = $Pharoah.position
		elif Global.previous_scene_path == "res://Scenes/river_room.tscn":
			Global.river_room_position = $Pharoah.position
		elif Global.previous_scene_path == "res://Scenes/room_2.tscn":
			Global.room_2_position = $Pharoah.position
		elif Global.previous_scene_path == "res://Scenes/room_4.tscn":
			Global.room_4_position = $Pharoah.position
		elif Global.previous_scene_path == "res://Scenes/room_3.tscn":
			Global.room_3_position = $Pharoah.position
		else: return
		
		get_tree().change_scene_to_file("res://Scenes/pause_screen.tscn")


func go_back_to_previous_scene():
	if Global.previous_scene_path != "":
		get_tree().change_scene_to_file(Global.previous_scene_path)
	else:
		get_tree().change_scene_to_file("res://Scenes/tomb_room.tscn")
