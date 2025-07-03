extends Node2D

var reading_instructions = false


func _input(_event):
	if Input.is_action_pressed("ui_accept"):
		reading_instructions = true
		
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/car_street.tscn")

func _ready():
	$shift_icon/wait_1.start()
	$space_icon_2/wait_2.start()
	$wait_3.start()
	$icon_space_2_pass.play()


func _on_wait_2_timeout():
	while reading_instructions == true:
		$shift_icon/finger_pointing.position = Vector2(-1004, 222)
# warning-ignore:unused_variable
		for i in range(6):
			$shift_icon/speedmeter.frame += 1
			yield(get_tree().create_timer(1), "timeout")
		$shift_icon/finger_pointing.position = Vector2(-1004, 55)
# warning-ignore:unused_variable
		for i in range(6):
			$shift_icon/speedmeter.frame -= 1
			yield(get_tree().create_timer(1), "timeout")


func _on_wait_1_timeout():
	while reading_instructions == true:
		
		$space_icon_2/finger_pointing_2.position = Vector2(-1004, 195)
		$space_icon_2/speedmeter_2.frame = 1
		yield(get_tree().create_timer(2), "timeout")
		$space_icon_2/finger_pointing_2.position = Vector2 (-1004, 91)
		$space_icon_2/speedmeter_2.frame = 0
		yield(get_tree().create_timer(1), "timeout")


func _on_wait_3_timeout():
	while reading_instructions == true:
		$car_demostration.rotation_degrees = 0
		$icon_w.frame = 1
		yield(get_tree().create_timer(1), "timeout")
		$icon_w.frame = 0
		$car_demostration.rotation_degrees = 180
		$icon_s.frame = 1
		yield(get_tree().create_timer(1), "timeout")
		$icon_s.frame = 0
		$car_demostration.rotation_degrees = 90
		$icon_d.frame = 1
		yield(get_tree().create_timer(1), "timeout")
		$icon_d.frame = 0
		$car_demostration.rotation_degrees = 270
		$icon_a.frame = 1
		yield(get_tree().create_timer(1), "timeout")
		$icon_a.frame = 0
		
