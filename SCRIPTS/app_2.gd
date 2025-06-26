extends Node2D


func _process(_delta):
	Blink.pl_nm = $player_name.text
	Blink.pl_age = $player_age.text
	Blink.pl_nationality = $player_nationality.text



func _on_button_off_app_1_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/computer.tscn")
