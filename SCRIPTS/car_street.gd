extends Node2D

var position_c = 0





func _input(_event):
		if Input.is_action_just_pressed("up_move"):
			Blink.update_speedmeter = true
# warning-ignore:unused_variable
			for i in range(5):
				if Blink.update_speedmeter and Blink.speed < 120:
					Blink.speed += 24
					$car_camera/speedmeter/speed.text = str(Blink.speed)
					$car_camera/speedmeter.frame += 1
					yield(get_tree().create_timer(1), "timeout")

func _process(_delta):
	position_c = $car.position + Vector2(-900, -400)
	if Input.is_action_just_released("up_move"):
		Blink.update_speedmeter = false
# warning-ignore:unused_variable
		for i in range(5):
			if Blink.update_speedmeter == false:
				Blink.speed -= 24
				$car_camera/speedmeter/speed.text = str(Blink.speed)
				$car_camera/speedmeter.frame -= 1
				yield(get_tree().create_timer(1), "timeout")
	if Blink.dying:
		$dead.show()
		$dead/E_icon.show()
	$dead.position = position_c
	if Blink.reading_instructions == false:
		$instructions_camera.current = false
		$car_camera.current = true
		$car.show()
		$car_camera/speedmeter.show()
		Blink.car_p = $car.position

func _ready():
	$car_camera/speedmeter.frame = 0
	if Blink.street_2:
		$car/spr_police_car.flip_h = 180
		$instructions_car.hide()
		$car.position = Vector2(7256, -1936)
		Blink.street_2 = false
