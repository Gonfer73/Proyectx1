extends Node2D



func _ready():
	$score.text = str(Blink.office_scr)
	


func _on_button_off_pressed():
		Blink.button = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/map.tscn")
		
func _on_button_app_1_pressed():
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/app_1.tscn")



func _on_button_app_2_pressed():
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/app_2.tscn")


func _on_button_app_3_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/app_3.tscn")
