extends Node


var hours_spent = 11.5
var canmove = true
var gate_guardians = ["Sekhet-hra-asht-aru","Meti-heh","Ha-kheru","Un-hat","Seqe-hra","Uset","Qeq-hauau-ent-pehui","Se-res-hra","Aaa","Khesef-hra-asht-kheru","Seres-tepu","Ankh-f-em-fent","Shabu","Teb-hra-keha-kheft","Atek-au-kehaq-kheru","An-hra","Ates-hra","Sekhem-Mafenu-sen","Aa-maa-kheru","Khesef-khemi"]
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
