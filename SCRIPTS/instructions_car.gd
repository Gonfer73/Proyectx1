extends Node2D




func _process(_delta):
	if Input.is_action_pressed("ui_accept"):
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/car_street.tscn")

func _ready():
	$shift_icon/wait_1.start(1)
	$space_icon_2/wait_2.start(1)
	$wait_3.start(1)

	

	

func _on_wait_1_timeout():
	while true:
		$shift_icon/finger_pointing.position = Vector2(-1005, 160)
		for i in range(6):
			$shift_icon/speedmeter.frame = i
			timer_2()
		$shift_icon/finger_pointing.position = Vector2(-1004, 55)
# warning-ignore:unused_variable
		for i in range(6):
			$shift_icon/speedmeter.frame -= 1
			timer_1()


func _on_wait_2_timeout():
	print("HELLO WORLD")
	while true:
		$space_icon_2/finger_pointing_2.position = Vector2(-994, 205)
		$space_icon_2/speedmeter_2.frame = 1
		timer_2()
		$space_icon_2/finger_pointing_2.position = Vector2(-994, 91)
		$space_icon_2/speedmeter_2.frame = 0
		timer_2()


func _on_wait_3_timeout():
	print("HELLO WORLD")
	while true:
		$icon_w.frame = 1
		$car_demostration.rotation_degrees = 0
		timer_05()
		$icon_w.frame = 0
		timer_1()
		$icon_s.frame = 1
		$car_demostration.rotation_degrees = 180
		timer_05()
		$icon_s.frame = 0 
		timer_1()
		$icon_a.frame = 1
		$car_demostration.rotation_degrees = -90
		timer_05()
		$icon_a.frame = 0
		timer_1()
		$icon_d.frame = 1
		$car_demostration.rotation_degrees = 90
		timer_05()
		$icon_d.frame = 0
		timer_05()
		
		
		
func timer_2():
# warning-ignore:return_value_discarded
	get_tree().create_timer(2)

func timer_1():
# warning-ignore:return_value_discarded
	get_tree().create_timer(1)
	
func timer_05():
# warning-ignore:return_value_discarded
	get_tree().create_timer(0.5)

		
