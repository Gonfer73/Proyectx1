extends KinematicBody2D

var punto_a = Vector2(896, -366)
var punto_b = Vector2(896, -2250)
var punto_c = Vector2(7000, -2250)
var punto_d = Vector2(7050, -64)
var velocidad = 35555
var destino := Vector2()
var direccion := Vector2()


func _ready():
	$spr_npc_car_1.frame = 0
	position = punto_a
	destino = punto_d
	direccion = (destino - position).normalized()


func _physics_process(delta):
	if Blink.reading_instructions == false:
		var movimiento = direccion * velocidad * delta
		direccion = (destino - position).normalized()
		if position.distance_to(destino) < 5:
			if destino == punto_a:
				$spr_npc_car_1.frame = 0
				destino = punto_d
			elif destino == punto_b:
				destino = punto_a
				$spr_npc_car_1.frame = 2
				$spr_npc_car_1.flip_h = 0
			elif destino == punto_c:
				$spr_npc_car_1.frame = 0
				$spr_npc_car_1.flip_h = 180
				destino = punto_b
			elif destino == punto_d:
				destino = punto_c
				$spr_npc_car_1.frame = 1
			direccion = (destino - position).normalized()


	# warning-ignore:return_value_discarded
		move_and_slide(movimiento)



# warning-ignore:unused_argument

		
