extends Node2D

func _ready():
	if Blink.street_2:
		$car/spr_police_car.flip_h = 180
		$instructions_car.hide()
		$car.position = Vector2(7256, -1936)
		Blink.street_2 = false
