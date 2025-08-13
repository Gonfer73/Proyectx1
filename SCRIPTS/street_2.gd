extends Node2D




# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _process(_delta):
	if Blink.car_enter and Input.is_action_pressed("action"):
		Blink.car_enter = false
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/lock.tscn")


func _ready():
	if Blink.dismounting:
		$player/street_camera/e_icon.show()
		$police_car.rotation_degrees = Blink.car_rotation
		$police_car.position = Blink.position_p
		if Blink.car_rotation < 90 and Blink.car_rotation > -90:
			$player.position = Blink.position_p + Vector2(0, Blink.car_rotation + 60)
		else:
			$player.position = Blink.position_p + Vector2(Blink.car_rotation + 60, 0)
func _on_car_enter_body_entered(_body):
	$player/street_camera/e_icon.show()
	Blink.car_enter = true


func _on_car_enter_body_exited(_body):
	$player/street_camera/e_icon.hide()
	Blink.car_enter = false
