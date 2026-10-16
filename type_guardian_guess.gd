extends Node2D
@onready var label: Label = $Label

@onready var pharaoh: CharacterBody2D = $Pharaoh
var g_3_guess = ""
func _ready() -> void:
	Global.canmove = false
	pharaoh.position = Global.room_2_position
	label.text = "WHAT IS MY NAME?"


func _on_q_pressed() -> void:
	g_3_guess = g_3_guess + "q"
	print(g_3_guess)


func _on_w_pressed() -> void:
	pass # Replace with function body.


func _on_e_pressed() -> void:
	pass # Replace with function body.


func _on_r_pressed() -> void:
	pass # Replace with function body.


func _on_t_pressed() -> void:
	pass # Replace with function body.


func _on_y_pressed() -> void:
	pass # Replace with function body.


func _on_u_pressed() -> void:
	pass # Replace with function body.


func _on_i_pressed() -> void:
	pass # Replace with function body.


func _on_o_pressed() -> void:
	pass # Replace with function body.


func _on_p_pressed() -> void:
	pass # Replace with function body.


func _on_a_pressed() -> void:
	pass # Replace with function body.


func _on_s_pressed() -> void:
	pass # Replace with function body.


func _on_d_pressed() -> void:
	pass # Replace with function body.


func _on_f_pressed() -> void:
	pass # Replace with function body.


func _on_g_pressed() -> void:
	pass # Replace with function body.


func _on_h_pressed() -> void:
	pass # Replace with function body.


func _on_j_pressed() -> void:
	pass # Replace with function body.


func _on_k_pressed() -> void:
	pass # Replace with function body.


func _on_l_pressed() -> void:
	pass # Replace with function body.


func _on_z_pressed() -> void:
	pass # Replace with function body.


func _on_x_pressed() -> void:
	pass # Replace with function body.


func _on_c_pressed() -> void:
	pass # Replace with function body.


func _on_v_pressed() -> void:
	pass # Replace with function body.


func _on_b_pressed() -> void:
	pass # Replace with function body.


func _on_n_pressed() -> void:
	pass # Replace with function body.


func _on_m_pressed() -> void:
	pass # Replace with function body.


func _on__pressed() -> void:
	pass # Replace with function body.


func _on_backspace_pressed() -> void:
	pass # Replace with function body.


func _on_enter_button_pressed() -> void:
	if g_3_guess == Global.guardian_3:
		label.text = "Correct!"
	else:
		label.text = "Wrong"
	await get_tree().create_timer(2).timeout
	Global.canmove = true
	get_tree().change_scene_to_file("res://Scenes/room_2.tscn")
		
		
