extends Node2D

func _ready():
	if Blink.info_possible:
		$crimes_button_2/crimes_button_2_pop_up.get_popup().add_item(Blink.clues[0], 0)
	if Blink.info_possible_1:
		$crimes_button_1/crimes_button_1_pop_up.get_popup().add_item(Blink.witness_nm[0], 0)
		$crimes_button_1/crimes_button_1_pop_up.get_popup().add_item(Blink.witness_age[0], 1)
	if Blink.info_possible_2:
		$crimes_button_3/crimes_button_3_pop_up.get_popup().add_item(Blink.prisioners_nm[0], 0)
		$crimes_button_3/crimes_button_3_pop_up.get_popup().add_item(Blink.prisioners_age[0], 1)
	$crimes_lb_1/option_1.add_item("SELECIONE UNA OPCIÓN", 0)
	$crimes_lb_1/option_1.add_item("Homicidio", 1)
	$crimes_lb_1/option_1.add_item("Hurto", 2)
	$crimes_lb_1/option_1.add_item("Tráfico de estupefacientes", 3)
	$crimes_lb_1/option_1.add_item("Abuso", 4)
	$crimes_lb_1/option_1.add_item("Maltrato animal", 5)
	$crimes_lb_1/option_1.add_item("Desacato a la autoridad", 6)
	$crimes_lb_1/option_1.selected = Blink.case_1_type_of_crime
	if Blink.case_1_knife:
		$crimes_lb_2/check_box_0.pressed = true
		$crimes_lb_2/check_box_1.pressed = false
	elif Blink.case_1_knife == false:
		$crimes_lb_2/check_box_0.pressed = false
		$crimes_lb_2/check_box_1.pressed = true
	else:
		$crimes_lb_2/check_box_0.pressed = false
		$crimes_lb_2/check_box_1.pressed = false
	if Blink.case_1_gun:
		$crimes_lb_3/check_box_2.pressed = true
		$crimes_lb_3/check_box_3.pressed = false
	elif Blink.case_1_gun == false:
		$crimes_lb_3/check_box_2.pressed = false
		$crimes_lb_3/check_box_3.pressed = true
	else:
		$crimes_lb_3/check_box_2.pressed = false
		$crimes_lb_3/check_box_3.pressed = false
	if Blink.case_1_proof:
		$crimes_lb_4/check_box_4.pressed = true
		$crimes_lb_4/check_box_5.pressed = false
	elif Blink.case_1_proof == false:
		$crimes_lb_4/check_box_4.pressed = false
		$crimes_lb_4/check_box_5.pressed = true
	else:
		$crimes_lb_4/check_box_4.pressed = false
		$crimes_lb_4/check_box_5.pressed = false
	if Blink.case_1_witness:
		$crimes_lb_5/check_box_6.pressed = true
		$crimes_lb_5/check_box_7.pressed = false
	elif Blink.case_1_witness == false:
		$crimes_lb_5/check_box_6.pressed = false
		$crimes_lb_5/check_box_7.pressed = true
	else:
		$crimes_lb_5/check_box_6.pressed = false
		$crimes_lb_5/check_box_7.pressed = false
	


func _on_check_box_0_pressed():
	if $crimes_lb_2/check_box_1.pressed == true:
		$crimes_lb_2/check_box_1.pressed = false


func _on_check_box_1_pressed():
	if $crimes_lb_2/check_box_0.pressed == true:
		$crimes_lb_2/check_box_0.pressed = false


func _on_check_box_2_pressed():
	if $crimes_lb_3/check_box_3.pressed == true:
		$crimes_lb_3/check_box_3.pressed = false


func _on_check_box_3_pressed():
	if $crimes_lb_3/check_box_2.pressed == true:
		$crimes_lb_3/check_box_2.pressed = false


func _on_check_box_4_pressed():
	if $crimes_lb_4/check_box_5.pressed == true:
		$crimes_lb_4/check_box_5.pressed = false


func _on_check_box_5_pressed():
	if $crimes_lb_4/check_box_4.pressed == true:
		$crimes_lb_4/check_box_4.pressed = false


func _on_check_box_6_pressed():
	if $crimes_lb_5/check_box_7.pressed == true:
		$crimes_lb_5/check_box_7. pressed = false


func _on_check_box_7_pressed():
	if $crimes_lb_5/check_box_6.pressed == true:
		$crimes_lb_5/check_box_6. pressed = false


func _on_crimes_button_1_pop_up_mouse_exited():
	$crimes_button_1/crimes_button_1_pop_up.get_popup().hide()


func _on_crimes_button_2_pop_up_mouse_exited():
	$crimes_button_2/crimes_button_2_pop_up.get_popup().hide()


func _on_crimes_button_3_pop_up_mouse_exited():
	$crimes_button_3/crimes_button_3_pop_up.get_popup().hide()


func _on_crimes_button_2_pressed():
	Blink.in_clues = true
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/inventory.tscn")


func _on_turn_page_button_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/case_1.tscn")


func _on_turn_page_button_mouse_entered():
	$turn_page_0.frame = 1


func _on_turn_page_button_mouse_exited():
	$turn_page_0.frame = 0


func _on_crimes_button_1_pressed():
	Blink.good = true
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/witness_data.tscn")


func _on_crimes_button_3_pressed():
	Blink.bad = true
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/witness_data.tscn")


func _on_change_data_pressed():
	Blink.case_1_type_of_crime = $crimes_lb_1/option_1.selected
	if $crimes_lb_2/check_box_0.pressed:
		Blink.case_1_knife = true
	elif $crimes_lb_2/check_box_1.pressed:
		Blink.case_1_knife = false
	else:
		Blink.case_1_knife = null
	if $crimes_lb_3/check_box_2.pressed:
		Blink.case_1_gun = true
	elif $crimes_lb_3/check_box_3.pressed:
		Blink.case_1_gun = false
	else:
		Blink.case_1_gun = null
	if $crimes_lb_4/check_box_4.pressed:
		Blink.case_1_proof = true
	elif $crimes_lb_4/check_box_5.pressed:
		Blink.case_1_proof = false
	else:
		Blink.case_1_proof = null
	if $crimes_lb_5/check_box_6.pressed:
		Blink.case_1_witness = true
	elif $crimes_lb_5/check_box_7.pressed:
		Blink.case_1_witness = false
	else:
		Blink.case_1_witness = null
