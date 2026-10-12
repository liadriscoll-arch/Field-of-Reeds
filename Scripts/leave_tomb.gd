extends Area2D





func _on_body_entered(body: Node2D) -> void:
	if body.name == "Pharaoh":
		Global.tomb_room_position = Vector2(body.position.x, body.position.y+10)
		get_tree().change_scene_to_file("res://Scenes/river_room.tscn")
		
