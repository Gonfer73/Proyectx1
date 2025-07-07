extends Node2D




func _on_case_1_button_mouse_entered():
	$case_1_icon.position = Vector2(384, 336)


func _on_case_1_button_mouse_exited():
	$case_1_icon.position = Vector2(384, 384)


func _on_case_2_button_mouse_entered():
	$case_2_icon.position = Vector2(384, 456)


func _on_case_2_button_mouse_exited():
	$case_2_icon.position = Vector2(384, 504)


func _on_case_1_button_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/case_1.tscn")


func _on_button_off_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/computer.tscn")
