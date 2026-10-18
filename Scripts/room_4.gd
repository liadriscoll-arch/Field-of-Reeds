extends Node2D
@onready var info_tomb_color: ColorRect = $info_tomb_color
@onready var info_tomb_label: Label = $info_tomb_label

func _ready() -> void:
	music.play_music_game()
	$Pharaoh.position = Global.room_4_position
	info_tomb_label.visible = false
	info_tomb_color.visible = false
	info_tomb_label.text = ""
	Global.g3_name_known = true


func _on_center_ruin_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $center_ruin.overlaps_area(area):
			if Input.is_action_just_pressed("ui_accept"):
				if Global.discovered.has("brick_piece"):
					if Global.worthy == false:
						info_tomb_color.visible = true
						info_tomb_label.visible = true
						info_tomb_label.add_theme_font_size_override("font_size", 70)
						info_tomb_label.text = "I have nothing more to offer \n you have already taken all I have"
						await get_tree().create_timer(3).timeout
						info_tomb_color.visible = false
						info_tomb_label.text = ""
						info_tomb_label.visible = false
					if Global.worthy:
						info_tomb_color.visible = true
						info_tomb_label.visible = true
						info_tomb_label.add_theme_font_size_override("font_size", 30)
						info_tomb_label.text = "That is all I have to offer"
						await get_tree().create_timer(3).timeout
						info_tomb_color.visible = false
						info_tomb_label.text = ""
						info_tomb_label.visible = false
				elif Global.discovered.has("amulet"):
					Global.discovered.append("brick_piece")
					info_tomb_color.visible = true
					info_tomb_label.visible = true
					info_tomb_label.add_theme_font_size_override("font_size", 60)
					Global.worthy = true
					info_tomb_label.text = "The entity hands you the brick piece"
					await get_tree().create_timer(3).timeout
					info_tomb_color.visible = false
					info_tomb_label.text = ""
					info_tomb_label.visible = false
				else:
					Global.room_4_position = $Pharaoh.position
					get_tree().change_scene_to_file("res://Scenes/steal_brick_screen.tscn")
					return
			await get_tree().process_frame


func _on_text_1_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $text_1.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 30)
				info_tomb_label.text = "text left from a previous traveler:\n spaces are like a dash in time, the start of 1 word to another"
				await get_tree().create_timer(6).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_text_2_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $text_2.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 30)
				if Global.guardian_3 == "Sekhet-hra-asht-aru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Sacred egyptian knowledge hides every tomb "
					
				elif Global.guardian_3 == "Meti-heh":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Mighty eternal travelers ... immortality  "
				
				elif Global.guardian_3 == "Ha-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Anubis "
					
				elif Global.guardian_3 == "Un-hat":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Underworld navigation "
					
				elif Global.guardian_3 == "Seqe-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Secret eternal questions emerge "
					
				elif Global.guardian_3 == "Uset":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Underworld spirits enter through "
				
				elif Global.guardian_3 == "Se-res-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Secrets enter "
					
				elif Global.guardian_3 == "Aaa":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Anubis awaits answers "
				
				elif Global.guardian_3 == "Khesef-hra-asht-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Knowledge helps every soul enter forever "
					
				elif Global.guardian_3 == "Seres-tepu":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Sacred eternal rituals ensure survival "
					
				elif Global.guardian_3 == "Ankh-f-em-fent":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Ancient names keep history "
					
				elif Global.guardian_3 == "Shabu":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Souls have afterlife blessings ... unknown  "
					
				elif Global.guardian_3 == "Teb-hra-keha-kheft":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Tombs enclose bodies "
					
				elif Global.guardian_3 == "Atek-au-kehaq-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Ancient temples entomb kings "
					
				elif Global.guardian_3 == "An-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Afterlife navigation "
					
				elif Global.guardian_3 == "Ates-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Ancient tombs enclose secrets "
					
				elif Global.guardian_3 == "Sekhem-Mafenu-sen":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Sacred eternal knowledge hides every mystery "
					
				elif Global.guardian_3 == "Aa-maa-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Anubis awaits "
					
				elif Global.guardian_3 == "Khesef-khemi":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Knowledge helps every soul enter forever  "
				
				
				await get_tree().create_timer(6).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_text_3_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $text_3.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 30)
				if Global.guardian_3 == "Sekhet-hra-asht-aru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra always "
					
				elif Global.guardian_3 == "Meti-heh":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor eternal horus "
				
				elif Global.guardian_3 == "Ha-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings hold eternal riches underground "
					
				elif Global.guardian_3 == "Un-hat":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor ancient thoughts "
					
				elif Global.guardian_3 == "Seqe-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra always"
					
				elif Global.guardian_3 == "Uset":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Se-res-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Reeds enclose secrets "
					
				elif Global.guardian_3 == "Aaa":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Khesef-hra-asht-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra always "
					
				elif Global.guardian_3 == "Seres-tepu":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Tombs eternally protect underworld "
					
				elif Global.guardian_3 == "Ankh-f-em-fent":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Fate "
					
				elif Global.guardian_3 == "Shabu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Teb-hra-keha-kheft":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra always "
					
				elif Global.guardian_3 == "Atek-au-kehaq-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Anubis understands "
					
				elif Global.guardian_3 == "An-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra always "
					
				elif Global.guardian_3 == "Ates-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra always "
					
				elif Global.guardian_3 == "Sekhem-Mafenu-sen":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Mummies await ... final eternal night underworld "
					
				elif Global.guardian_3 == "Aa-maa-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Mighty ancient amulets ... "
					
				elif Global.guardian_3 == "Khesef-khemi":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings hold eternal memories in "
					
				await get_tree().create_timer(6).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_text_4_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $text_4.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 30)
				if Global.guardian_3 == "Sekhet-hra-asht-aru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Ancient secrets hide treasures "
					
				elif Global.guardian_3 == "Meti-heh":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Ha-kheru":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Un-hat":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Seqe-hra":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Uset":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Se-res-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor ra always "
					
				elif Global.guardian_3 == "Aaa":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Khesef-hra-asht-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Ancient secrets hide treasures "
					
				elif Global.guardian_3 == "Seres-tepu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Ankh-f-em-fent":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Eternal memories "
					
				elif Global.guardian_3 == "Shabu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Teb-hra-keha-kheft":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Keep evil hidden away "
					
				elif Global.guardian_3 == "Atek-au-kehaq-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Keep evil hidden away quietly "
					
				elif Global.guardian_3 == "An-hra":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Ates-hra":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Sekhem-Mafenu-sen":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Spirits enter nile "
					
				elif Global.guardian_3 == "Aa-maa-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings hold eternal riches underground "
					
				elif Global.guardian_3 == "Khesef-khemi":
					info_tomb_label.text = "The text is unreadable"
					
				await get_tree().create_timer(6).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame


func _on_text_5_area_entered(area: Area2D) -> void:
	if area.name == "item_interact_area":
		while $text_5.overlaps_area(area): 
			if Input.is_action_pressed("ui_accept"):
				info_tomb_color.visible = true
				info_tomb_label.visible = true
				info_tomb_label.add_theme_font_size_override("font_size", 30)
				
				if Global.guardian_3 == "Sekhet-hra-asht-aru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Anubis rules underworld "
					
				elif Global.guardian_3 == "Meti-heh":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Ha-kheru":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Un-hat":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Seqe-hra":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Uset":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Se-res-hra":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Aaa":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Khesef-hra-asht-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings hold eternal riches underground "
					
				elif Global.guardian_3 == "Seres-tepu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Ankh-f-em-fent":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Fearless eternal navigators travel "
					
				elif Global.guardian_3 == "Shabu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Teb-hra-keha-kheft":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings hold eternal fancy treasures "
					
				elif Global.guardian_3 == "Atek-au-kehaq-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings hold eternal riches underground "
					
				elif Global.guardian_3 == "An-hra":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Ates-hra":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Sekhem-Mafenu-sen":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Aa-maa-kheru":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Khesef-khemi":
					info_tomb_label.text = "The text is unreadable"
				
				await get_tree().create_timer(6).timeout
				info_tomb_color.visible = false
				info_tomb_label.text = ""
				info_tomb_label.visible = false
			await get_tree().process_frame
