extends KinematicBody2D

var punto_a = Vector2(544, 422)
var punto_b = Vector2(564,696)
var velocidad = 9999
var destino := Vector2()
var distancia := Vector2()

func _ready():
	position = punto_a
	destino = punto_b
	distancia = (destino - position).normalized()


func _physics_process(delta):
	var movimiento = distancia * velocidad * delta
	if position.distance_to(destino) < 5:
		if destino == punto_b:
			destino = punto_a
		else:
			destino = punto_b
		distancia = (destino - position).normalized()
# warning-ignore:return_value_discarded
	move_and_slide(movimiento)
