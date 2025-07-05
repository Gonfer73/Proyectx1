extends Node2D



func _on_turn_page_button_mouse_entered():
	$turn_page_1.frame = 1


func _on_turn_page_button_mouse_exited():
	$turn_page_0.frame = 0


func _on_turn_page_button_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/case_!_2.tscn")


func _on_turn_page_button_2_mouse_entered():
	$turn_page_0.frame = 1


func _on_turn_page_button_2_mouse_exited():
	$turn_page_0.frame = 0


func _on_turn_page_button_2_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/app_3.tscn")
