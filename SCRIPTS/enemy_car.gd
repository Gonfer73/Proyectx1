extends KinematicBody2D

var punto_a = Vector2(1072, -366)
var punto_b = Vector2(6912, -288)
var punto_c = Vector2(6936, -2472)
var punto_d = Vector2(1080, -2472)
var velocidad = 35555
var destino := Vector2()
var direccion := Vector2()


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
				$spr_enemy_car.frame = 1
				$spr_enemy_car.flip_h = 0
				destino = punto_d
			elif destino == punto_b:
				destino = punto_a
				$spr_enemy_car.frame = 0
				$spr_enemy_car.flip_h = 180
			elif destino == punto_c:
				$spr_enemy_car.frame = 2
				destino = punto_b
			elif destino == punto_d:
				destino = punto_c
				$spr_enemy_car.frame = 0
			direccion = (destino - position).normalized()


# warning-ignore:return_value_discarded
		move_and_slide(movimiento)



func _on_catch_p_body_entered(_body):
	if Blink.reading_instructions == false:
		queue_free()
	# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/caught_criminal.tscn")
