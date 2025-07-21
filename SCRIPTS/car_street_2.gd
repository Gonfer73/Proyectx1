extends Node2D

var position_c = 0

func _ready():
	Blink.speed = 0
	$car_camera/speedmeter/speed.text = "0"
	$car_camera/speedmeter.frame = 0

func _process(_delta):
	position_c = $police_car.position + Vector2(-900, -400)
	Blink.car_p_2 = $police_car.position 

func _on_change_car_street_body_entered(_body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/car_street.tscn")


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


func _physics_process(_delta):
	if Input.is_action_just_released("up_move"):
		Blink.update_speedmeter = false
# warning-ignore:unused_variable
		for i in range(5):
			if Blink.update_speedmeter == false and Blink.speed != 0:
				Blink.speed -= 24
				$car_camera/speedmeter/speed.text = str(Blink.speed)
				$car_camera/speedmeter.frame -= 1
				yield(get_tree().create_timer(1), "timeout")
	if Blink.dying:
		$dead.position = position_c
		$caught_criminal.position = position_c
		$dead.show()
	

