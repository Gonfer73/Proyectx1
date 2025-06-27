extends Node2D


func _input(_event):
	if Input.is_action_pressed("escape"):
		Blink.water = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/map.tscn")

func _on_water_button_pressed():
	Blink.water = true
	Blink.cup = true
	$water_cup.play()
	$cup_wait.start(1)

	


func _on_cup_wait_timeout():
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/map.tscn")
