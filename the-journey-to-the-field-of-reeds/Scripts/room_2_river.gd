extends Area2D





func _on_body_entered(body: Node2D) -> void:

	print(body.name)

	if body.name == "Pharaoh":
		Global.room_river_position = Vector2(body.position.x, body.position.y + 10)
		get_tree().change_scene_to_file("res://Scenes/room_2.tscn")
