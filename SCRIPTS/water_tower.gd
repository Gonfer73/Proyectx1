extends Node2D


func _input(_event):
	if Input.is_action_pressed("escape"):
		Blink.water = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/map.tscn")

func _on_water_button_pressed():
	Blink.water = true
	Blink.cup = true
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/map.tscn")
