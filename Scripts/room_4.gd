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
				info_tomb_label.text = "text left from a previous traveler:\n Breaks are like a dash in time, the start of 1 word to another"
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
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Sacred Egyptian Knowledge Hides Every Tomb "
					
				elif Global.guardian_3 == "Meti-heh":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Mighty Eternal Travelers ... Immortality  "
				
				elif Global.guardian_3 == "Ha-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Anubis "
					
				elif Global.guardian_3 == "Un-hat":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Underworld Navigation "
					
				elif Global.guardian_3 == "Seqe-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Secret Eternal Questions Emerge "
					
				elif Global.guardian_3 == "Uset":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Underworld Spirits Enter Through "
				
				elif Global.guardian_3 == "Se-res-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Secrets Enter "
					
				elif Global.guardian_3 == "Aaa":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Anubis Awaits Answers "
				
				elif Global.guardian_3 == "Khesef-hra-asht-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Knowledge Helps Every Soul Enter Forever "
					
				elif Global.guardian_3 == "Seres-tepu":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Sacred Eternal Rituals Ensure Survival "
					
				elif Global.guardian_3 == "Ankh-f-em-fent":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Ancient Names Keep History "
					
				elif Global.guardian_3 == "Shabu":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Souls Have Afterlife Blessings ... Unknown  "
					
				elif Global.guardian_3 == "Teb-hra-keha-kheft":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Tombs Enclose Bodies "
					
				elif Global.guardian_3 == "Atek-au-kehaq-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Ancient Temples Entomb Kings "
					
				elif Global.guardian_3 == "An-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Afterlife Navigation "
					
				elif Global.guardian_3 == "Ates-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Ancient Tombs Enclose Secrets "
					
				elif Global.guardian_3 == "Sekhem-Mafenu-sen":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Sacred Eternal Knowledge Hides Every Mystery "
					
				elif Global.guardian_3 == "Aa-maa-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Anubis Awaits "
					
				elif Global.guardian_3 == "Khesef-khemi":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Knowledge Helps Every Soul Enter Forever  "
				
				
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
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra Always "
					
				elif Global.guardian_3 == "Meti-heh":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Eternal Horus "
				
				elif Global.guardian_3 == "Ha-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings Hold Eternal Riches Underground "
					
				elif Global.guardian_3 == "Un-hat":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ancient Thoughts "
					
				elif Global.guardian_3 == "Seqe-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra Always"
					
				elif Global.guardian_3 == "Uset":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Se-res-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Reeds Enclose Secrets "
					
				elif Global.guardian_3 == "Aaa":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Khesef-hra-asht-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra Always "
					
				elif Global.guardian_3 == "Seres-tepu":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Tombs Eternally Protect ... Underworld "
					
				elif Global.guardian_3 == "Ankh-f-em-fent":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Fate "
					
				elif Global.guardian_3 == "Shabu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Teb-hra-keha-kheft":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra Always "
					
				elif Global.guardian_3 == "Atek-au-kehaq-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Anubis Understands "
					
				elif Global.guardian_3 == "An-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra Always "
					
				elif Global.guardian_3 == "Ates-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra Always "
					
				elif Global.guardian_3 == "Sekhem-Mafenu-sen":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Mummies Await ... Final Eternal Night Underworld "
					
				elif Global.guardian_3 == "Aa-maa-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Mighty Ancient Amulets ... "
					
				elif Global.guardian_3 == "Khesef-khemi":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings Hold Eternal Memories In "
					
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
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Ancient Secrets Hide Treasures "
					
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
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra Always "
					
				elif Global.guardian_3 == "Aaa":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Khesef-hra-asht-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Ancient Secrets Hide Treasures "
					
				elif Global.guardian_3 == "Seres-tepu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Ankh-f-em-fent":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Eternal Memories "
					
				elif Global.guardian_3 == "Shabu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Teb-hra-keha-kheft":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Keep Evil Hidden Away "
					
				elif Global.guardian_3 == "Atek-au-kehaq-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Keep Evil Hidden Away Quietly "
					
				elif Global.guardian_3 == "An-hra":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Ates-hra":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Sekhem-Mafenu-sen":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Spirits Enter ... Nile "
					
				elif Global.guardian_3 == "Aa-maa-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings Hold Eternal Riches Underground "
					
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
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Anubis Rules Underworld "
					
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
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings Hold Eternal Riches Underground "
					
				elif Global.guardian_3 == "Seres-tepu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Ankh-f-em-fent":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Fearless Eternal Navigators Travel "
					
				elif Global.guardian_3 == "Shabu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Teb-hra-keha-kheft":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings Hold Eternal Fancy Treasures "
					
				elif Global.guardian_3 == "Atek-au-kehaq-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings Hold Eternal Riches Underground "
					
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
