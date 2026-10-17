extends Node2D

@onready var label: Label = $Label
@onready var typed_label: Label = $typed_label
@onready var pharaoh: CharacterBody2D = $Pharaoh

var typed = ""

func _ready() -> void:
	Global.canmove = false
	pharaoh.position = Global.room_2_position
	label.text = "WHAT IS MY NAME?"
	typed_label.text = ""

func add_letter(letter: String) -> void:
	typed = typed + letter
	typed_label.text = typed


func _on_backspace_pressed() -> void:
	typed = typed.left(typed.length() - 1)
	typed_label.text = typed


func _on_enter_button_pressed() -> void:

	if typed.to_lower() == Global.guardian_3.to_lower():
		label.text = "CORRECT!"
		Global.guardian_3_guessed = true
		await get_tree().create_timer(2).timeout
		Global.canmove = true
		get_tree().change_scene_to_file("res://Scenes/room_3.tscn")
	else:
		label.text = "WRONG!"
		await get_tree().create_timer(2).timeout
		Global.canmove = true
		get_tree().change_scene_to_file("res://Scenes/room_2.tscn")


func _on__pressed() -> void:
	add_letter("-")


func _on_q_pressed() -> void:
	add_letter("q")


func _on_w_pressed() -> void:
	add_letter("w")


func _on_e_pressed() -> void:
	add_letter("e")


func _on_r_pressed() -> void:
	add_letter("r")


func _on_t_pressed() -> void:
	add_letter("t")


func _on_y_pressed() -> void:
	add_letter("y")


func _on_u_pressed() -> void:
	add_letter("u")


func _on_i_pressed() -> void:
	add_letter("i")


func _on_o_pressed() -> void:
	add_letter("o")


func _on_p_pressed() -> void:
	add_letter("p")


func _on_a_pressed() -> void:
	add_letter("a")


func _on_s_pressed() -> void:
	add_letter("s")


func _on_d_pressed() -> void:
	add_letter("d")


func _on_f_pressed() -> void:
	add_letter("f")


func _on_g_pressed() -> void:
	add_letter("g")


func _on_h_pressed() -> void:
	add_letter("h")


func _on_j_pressed() -> void:
	add_letter("j")


func _on_k_pressed() -> void:
	add_letter("k")


func _on_l_pressed() -> void:
	add_letter("l")


func _on_z_pressed() -> void:
	add_letter("z")


func _on_x_pressed() -> void:
	add_letter("x")


func _on_c_pressed() -> void:
	add_letter("c")


func _on_v_pressed() -> void:
	add_letter("v")


func _on_b_pressed() -> void:
	add_letter("b")


func _on_n_pressed() -> void:
	add_letter("n")


func _on_m_pressed() -> void:
	add_letter("m")
		
		
