extends KinematicBody2D

var punto_a = Vector2(1072, -366)
var punto_b = Vector2(6912, -288)
var punto_c = Vector2(6936, -2472)
var punto_d = Vector2(1080, -2472)
var velocidad = 36666
var destino := Vector2()
var direccion := Vector2()


func _process(_delta):
	if position.distance_to(destino) < 600:
		if destino == punto_a:
# warning-ignore:unused_variable
			for i in range(90):
				if rotation_degrees < 0:
					rotation_degrees += 1
					yield(get_tree().create_timer(1), "timeout")
		elif destino == punto_b:
	# warning-ignore:unused_variable
				for i in range(90):
					if rotation_degrees < -90:
						rotation_degrees += 1
						yield(get_tree().create_timer(1), "timeout")
		elif destino == punto_d:
# warning-ignore:unused_variable
			for i in range(90):
				if rotation_degrees < 90:
					rotation_degrees += 1
					yield(get_tree().create_timer(1), "timeout")
		elif destino == punto_c:
# warning-ignore:unused_variable
			for i in range(90):
				if rotation_degrees < 180 and rotation_degrees > 0:
					rotation_degrees += 1
					yield(get_tree().create_timer(1), "timeout")
			

func _ready():
	$spr_enemy_car.frame = 1
	position = punto_a
	destino = punto_d
	direccion = (destino - position).normalized()


func _physics_process(delta):
	if Blink.reading_instructions == false:
		var movimiento = direccion * velocidad * delta
		direccion = (destino - position).normalized()
		if position.distance_to(destino) < 5:
			if destino == punto_a:
				destino = punto_d
			elif destino == punto_b:
				destino = punto_a
			elif destino == punto_c:
				destino = punto_b
			elif destino == punto_d:
				destino = punto_c
			direccion = (destino - position).normalized()


# warning-ignore:return_value_discarded
		move_and_slide(movimiento)



func _on_catch_p_body_entered(_body):
	if Blink.reading_instructions == false:
		$timer_enemy.start()
