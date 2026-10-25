extends Node2D
 
@onready var note_side_1: Label = $note_side_1
@onready var note_side_2: Label = $note_side_2
 
 
func _ready() -> void:
	note_side_1.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	note_side_2.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	note_side_1.clip_text = true
	note_side_2.clip_text = true
 
	note_side_1.text = Global.notes
	note_side_2.text = Global.notes_2
	
func _input(event: InputEvent) -> void:
	if not (event is InputEventKey and event.pressed):
		return
		
	if event.keycode == KEY_BACKSPACE:
		delete_letter()
	elif event.keycode == KEY_ENTER:
		type_letter("\n")
	elif event.unicode >= 32 and event.unicode != 127:
		type_letter(char(event.unicode))
func is_full(label: Label) -> bool:
	var total_lines = label.get_line_count()
	return total_lines > label.get_visible_line_count()
	
func type_letter(letter: String) -> void:
	if note_side_2.text == "":
		# still writing on the first label
		note_side_1.text = note_side_1.text + letter
		if is_full(note_side_1):
			# it didn't fit: take it off and put it on the second label
			note_side_1.text = remove_last_letter(note_side_1.text)
			note_side_2.text = letter
	else:
		# writing on the second label
		note_side_2.text = note_side_2.text + letter
		if is_full(note_side_2):
			# the second label is full too: take it off, no more typing
			note_side_2.text = remove_last_letter(note_side_2.text)
	save_notes()
	
func delete_letter() -> void:
	if note_side_2.text != "":
		note_side_2.text = remove_last_letter(note_side_2.text)
	else:
		note_side_1.text = remove_last_letter(note_side_1.text)
	save_notes()
	
func remove_last_letter(text: String) -> String:
	return text.left(text.length() - 1)
	
func save_notes() -> void:
	Global.notes = note_side_1.text
	Global.notes_2 = note_side_2.text
	
	
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/pause_screen.tscn")
