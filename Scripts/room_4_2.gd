extends Area2D









func _on_body_entered(body: Node2D) -> void:
	if body.name == "Pharaoh":
		Global.room_4_position = Vector2(body.position.x+10, body.position.y)
		get_tree().change_scene_to_file("res://Scenes/room_2.tscn")
