extends Node2D

var position_c = 0

func _ready():
	Blink.speed = 0
	$car_camera/speedmeter/speed.text = "0"
	$car_camera/speedmeter.frame = 0

func _process(_delta):
	Blink.car_rotation = $police_car.rotation_degrees
	Blink.position_p = $police_car.position
	position_c = $police_car.position + Vector2(-900, -400)
	Blink.car_p_2 = $police_car.position 

func _on_change_car_street_body_entered(_body):
# warning-ignore:return_value_discarded
	Blink.street_1 = true
	$ticket_machine.show()
	$ticket_machine/ticket_machine_camera.current = true
	Blink.reading_instructions = true


func _input(_event):
		if Input.is_action_just_pressed("up_move"):
			Blink.update_speedmeter = true
# warning-ignore:unused_variable
			for i in range(5):
				if Blink.reading_instructions == false:
					if Blink.update_speedmeter and Blink.speed < 120:
						Blink.speed += 24
						$car_camera/speedmeter/speed.text = str(Blink.speed)
						$car_camera/speedmeter.frame += 1
						yield(get_tree().create_timer(1), "timeout")
		if Input.is_action_pressed("acelareta"):
			yield(get_tree().create_timer(1), "timeout")
			Blink.reading_instructions = true
			Blink.dismounting = true
			get_tree().change_scene("res://SCENES/street_2.tscn")


func _physics_process(_delta):
	if Input.is_action_just_released("up_move"):
		Blink.update_speedmeter = false
# warning-ignore:unused_variable
		for i in range(5):
			if Blink.reading_instructions == false:
				if Blink.update_speedmeter == false and Blink.speed != 0:
					Blink.speed -= 24
					$car_camera/speedmeter/speed.text = str(Blink.speed)
					$car_camera/speedmeter.frame -= 1
					yield(get_tree().create_timer(1), "timeout")
	if Blink.dying:
		$dead.position = position_c
		$caught_criminal.position = position_c
		$dead.show()
	

