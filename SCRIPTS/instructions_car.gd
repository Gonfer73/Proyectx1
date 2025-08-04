extends Node2D

var rotating = false
var moving = true

func _input(event):
	if event.is_action_pressed("ui_accept"):
		Blink.reading_instructions = false
		hide()

func _ready():
	$icon_a.frame = 1
	$icon_d.frame = 0
# warning-ignore:unused_variable
	for i in range(45):
		$car_demostration_2.rotation_degrees -= 2
		yield(get_tree().create_timer(0.03), "timeout")
	$icon_a.frame = 0
	$icon_d.frame = 1
# warning-ignore:unused_variable
	for i in range(90):
		$car_demostration_2.rotation_degrees += 2
		yield(get_tree().create_timer(0.03), "timeout")
	rotating = true

func _process(_delta):
	_move()
	_rotate()

func _move():
	if moving and Blink.reading_instructions:
		moving = false
		$icon_w.frame = 1
		$icon_s.frame = 0
	# warning-ignore:unused_variable
		for i in range(160):
			if Blink.reading_instructions == false:
				if Input.is_action_pressed("acelareta"):
					print(Blink.reading_instructions)
				$car_demostration_1.position -= Vector2(0,2)
				yield(get_tree().create_timer(0.005), "timeout")
		$icon_w.frame = 0
		$icon_s.frame = 1
	# warning-ignore:unused_variable
		for i in range(160):
			if Blink.reading_instructions == false:
				$car_demostration_1.position += Vector2(0,2)
				yield(get_tree().create_timer(0.005), "timeout")
		moving = true

func _rotate():
	if rotating and Blink.reading_instructions:
		rotating = false
		$icon_a.frame = 1
		$icon_d.frame = 0
# warning-ignore:unused_variable
		for i in range(90):
			if Blink.reading_instructions == false:
				$car_demostration_2.rotation_degrees -= 2
				yield(get_tree().create_timer(0.03), "timeout")
		$icon_a.frame = 0
		$icon_d.frame = 1
# warning-ignore:unused_variable
		for i in range(90):
			if Blink.reading_instructions == false:
				$car_demostration_2.rotation_degrees += 2
				yield(get_tree().create_timer(0.03), "timeout")
		rotating = true
