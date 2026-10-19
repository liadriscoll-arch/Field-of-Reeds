extends Node2D





func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_return_button_pressed() -> void:
	Global.go_back_to_previous_scene()
