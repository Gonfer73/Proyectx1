extends Node2D

var button = false



func _on_button_1_pressed():
	if button == false:
		button = true
		$warning_lb.show()
		yield(get_tree().create_timer(1), "timeout")
		$warning_lb.hide()
		button = false


func _on_button_2_pressed():
	if button == false:
		button = true
		$warning_lb.show()
		yield(get_tree().create_timer(1), "timeout")
		$warning_lb.hide()
		button = false


func _on_button_4_pressed():
	if button == false:
		button = true
		$warning_lb.show()
		yield(get_tree().create_timer(1), "timeout")
		$warning_lb.hide()
		button = false


func _on_button_3_pressed():
	if button == false:
		get_tree().change_scene("res://SCENES/corridor_1.tscn")
