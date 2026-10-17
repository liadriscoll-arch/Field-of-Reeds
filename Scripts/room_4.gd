extends Node2D
@onready var info_tomb_color: ColorRect = $info_tomb_color
@onready var info_tomb_label: Label = $info_tomb_label

func _ready() -> void:
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
					info_tomb_label.text = "On the wall you find partially destroyed text:\nMeti"
				
				elif Global.guardian_3 == "Ha-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nHonor Anubis"
					
				elif Global.guardian_3 == "Un-hat":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nUnderworld navigation"
					
				elif Global.guardian_3 == "Seqe-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nSecret eternal questions emerge"
					
				elif Global.guardian_3 == "Uset":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nUnderworld spirits enter through"
					
				elif Global.guardian_3 == "Qeq-hauau-ent-pehui":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nQuestions enter quietness"
				
				elif Global.guardian_3 == "Se-res-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nSe"
					
				elif Global.guardian_3 == "Aaa":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nAnubis awaits answers"
				
				elif Global.guardian_3 == "Khesef-hra-asht-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nKhesef"
					
				elif Global.guardian_3 == "Seres-tepu":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nSeres"
					
				elif Global.guardian_3 == "Ankh-f-em-fent":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nAncient names keep history"
					
				elif Global.guardian_3 == "Shabu":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nShabu"
					
				elif Global.guardian_3 == "Teb-hra-keha-kheft":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nTeb"
					
				elif Global.guardian_3 == "Atek-au-kehaq-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nAtek"
					
				elif Global.guardian_3 == "An-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nAfterlife navigation"
					
				elif Global.guardian_3 == "Ates-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nAncient tombs enclose secrets"
					
				elif Global.guardian_3 == "Sekhem-Mafenu-sen":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nSekhem"
					
				elif Global.guardian_3 == "Aa-maa-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nAa"
					
				elif Global.guardian_3 == "Khesef-khemi":
					info_tomb_label.text = "On the wall you find partially destroyed text:\nKhesef"
				
				
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
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kheru "
					
				elif Global.guardian_3 == "Un-hat":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor ancient thoughts "
					
				elif Global.guardian_3 == "Seqe-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra always"
					
				elif Global.guardian_3 == "Uset":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Qeq-hauau-ent-pehui":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Hauau "
				
				elif Global.guardian_3 == "Se-res-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Res "
					
				elif Global.guardian_3 == "Aaa":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Khesef-hra-asht-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra always "
					
				elif Global.guardian_3 == "Seres-tepu":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Tepu "
					
				elif Global.guardian_3 == "Ankh-f-em-fent":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Fate "
					
				elif Global.guardian_3 == "Shabu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Teb-hra-keha-kheft":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra always "
					
				elif Global.guardian_3 == "Atek-au-kehaq-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Au "
					
				elif Global.guardian_3 == "An-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra always "
					
				elif Global.guardian_3 == "Ates-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor Ra always "
					
				elif Global.guardian_3 == "Sekhem-Mafenu-sen":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Mafenu "
					
				elif Global.guardian_3 == "Aa-maa-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Maa "
					
				elif Global.guardian_3 == "Khesef-khemi":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Khemi "
					
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
					
				elif Global.guardian_3 == "Qeq-hauau-ent-pehui":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Ent "
				
				elif Global.guardian_3 == "Se-res-hra":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Honor ra always "
					
				elif Global.guardian_3 == "Aaa":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Khesef-hra-asht-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings hold eternal riches underground "
					
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
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Sen "
					
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
					
				elif Global.guardian_3 == "Qeq-hauau-ent-pehui":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Pehui "
				
				elif Global.guardian_3 == "Se-res-hra":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Aaa":
					info_tomb_label.text = "The text is unreadable"
				
				elif Global.guardian_3 == "Khesef-hra-asht-kheru":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Kings hold eternal riches underground "
					
				elif Global.guardian_3 == "Seres-tepu":
					info_tomb_label.text = "The text is unreadable"
					
				elif Global.guardian_3 == "Ankh-f-em-fent":
					info_tomb_label.text = "On the wall you find partially destroyed text:\n Fent "
					
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
