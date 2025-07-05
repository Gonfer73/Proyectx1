extends KinematicBody2D

var punto_a = Vector2(4064, 384)
var punto_b = Vector2(4064, -2688)
var velocidad = 35555
var destino := Vector2()
var direccion := Vector2()

func _ready():
	$spr_npc_car_2.frame = 0
	position = punto_a
	destino = punto_b
	direccion = (destino - position).normalized()
	
func _physics_process(delta):
	if Blink.reading_instructions == false:
		var movimiento = direccion * velocidad * delta
		direccion = (destino - position).normalized()
		if position.distance_to(destino) < 5:
			if destino == punto_a:
				$spr_npc_car_2.frame = 1
				destino = punto_b
			elif destino == punto_b:
				destino = punto_a
				$spr_npc_car_2.frame = 0
				
	# warning-ignore:return_value_discarded
		move_and_slide(movimiento)



# warning-ignore:unused_argument
func _on_npc_crash_body_entered(body):
	if Blink.reading_instructions == false:
		queue_free()
	# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/dead.tscn")
