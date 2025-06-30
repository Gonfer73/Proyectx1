extends KinematicBody2D

var punto_a = Vector2(500,30)
var punto_b = Vector2(500,820)
var punto_inicio = Vector2(500, 425)
var velocidad = 20000
var destino := Vector2()
var direccion := Vector2()


func _ready():
	position = punto_inicio
	destino = punto_b
	direccion = (destino - position).normalized()


func _physics_process(delta):
	
	var movimiento = direccion * velocidad * delta	
	if position.distance_to(destino) < 5:
		if destino == punto_b:
			destino = punto_a
		else:
			destino = punto_b
		direccion = (destino - position).normalized()


# warning-ignore:return_value_discarded
	move_and_slide(movimiento)





func _on_check_bulltet_body_entered(_body):
	print("Hello world")
	hide()
	$wait_enemy.start(5)
	show()
