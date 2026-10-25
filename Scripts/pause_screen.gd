extends Node2D





func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_return_button_pressed() -> void:
	Global.go_back_to_previous_scene()


func _on_notebook_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/notebook.tscn")
