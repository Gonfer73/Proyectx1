extends Node2D

func _ready():
	$turn_page_2.flip_h = 180

func _on_turn_page_button_mouse_entered():
	$turn_page.show()


func _on_turn_page_button_mouse_exited():
	$turn_page.hide()


func _on_turn_page_button_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/case_!_2.tscn")


func _on_turn_page_button_2_mouse_entered():
	$turn_page_2.show()


func _on_turn_page_button_2_mouse_exited():
	$turn_page_2.hide()


func _on_turn_page_button_2_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/app_3.tscn")
