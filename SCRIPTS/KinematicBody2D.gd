extends KinematicBody2D

export var bullet_scene : PackedScene
const w_speed = 0
var velocity = Vector2()
export var mainGameScene : PackedScene
var area = false

		
func _input(event):
		if event.is_action_pressed("escape"):
			if Guns.shoot:
				Guns.shoot = false
				Blink.guns = true
# warning-ignore:return_value_discarded
				get_tree().change_scene("res://SCENES/corridor.tscn")
		elif event.is_action_pressed("ui_accept"):  # normalmente tecla Z o barra espaciadora
			if Guns.shoot:
				var bullet = bullet_scene.instance()
				bullet.global_position = $appear_bullet.global_position
				get_parent().add_child(bullet)


func _ready():
	$wait_player.start(0.2) #espera 0,2 seg para evitar que al empezar el jugador ya toque el área

	
func _physics_process(_delta):
	if Input.is_action_pressed("right_move"):
		velocity.x = w_speed + 200
	elif Input.is_action_pressed("left_move"):
		velocity.x = w_speed - 200
	elif Input.is_action_pressed("up_move"):
		velocity.y = w_speed - 200
	elif Input.is_action_pressed("down_move"):
		velocity.y = w_speed + 200
	else:
		velocity.x = 0
		velocity.y = 0


# warning-ignore:return_value_discarded
	move_and_slide(velocity)


func _on_enter_computer_body_entered(_body):
	if area: #comprueba que area sea true para cambiar de escena cuando toque el Area2D

# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/computer.tscn")

func _on_enter_corridor_body_entered(_body):
	Blink.corridor = true
	if area: #comprueba que area sea true para cambiar de escena cuando toque el Area2D

# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/corridor.tscn")

func _on_enter_map_body_entered(_body):
	if area: #comprueba que area sea true para cambiar de escena cuando toque el Area2D
		Blink.corridor = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/map.tscn")

# warning-ignore:unused_argument
func _on_enter_out_body_entered(body):
	Blink.corridor = false
	Blink.out = true
	if area:
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/street.tscn")



# warning-ignore:unused_argument
func _on_car_enter_body_entered(body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/lock.tscn")


# warning-ignore:unused_argument
func _on_enter_police_body_entered(body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/map.tscn")
	


# warning-ignore:unused_argument
func _on_exit_bars_body_entered(body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/corridor.tscn")


# warning-ignore:unused_argument
func _on_enter_bars_body_entered(body):
	Blink.bars = true
# warning-ignore:return_value_discarded
	if area:
		get_tree().change_scene("res://SCENES/prision.tscn")


func _on_wait_player_timeout():
	area = true #la var area a true tras esperar


func _on_enter_water_body_entered(_body):
	Blink.water = true



func _on_enter_private_body_entered(_body):
	if area:
		Blink.private = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/private.tscn")


func _on_exit_private_body_entered(_body):
	if area:
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/corridor.tscn")


func _on_get_knife_body_entered(_body):
	Blink.get_knife = true


func _on_get_knife_body_exited(_body):
	Blink.get_knife = true


func _on_check_bulltet_body_entered(_body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/dead.tscn")
