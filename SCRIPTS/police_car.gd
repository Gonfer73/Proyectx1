extends KinematicBody2D


const w_speed = 0
var velocity = Vector2()
var wait = false

func _ready():
	$speedmeter.frame = 0
	$coll_police_car_h.disabled = false
	$coll_police_car_v.disabled = true

func _process(_delta):
	if $speedmeter.frame == 0 : 
		velocity.x = 0
		velocity.y = 0
	$speedmeter/speed.text = str($speedmeter.frame * 24)

func _timer_2s():
	yield(get_tree().create_timer(2), "timeout")


func _input(_event):
	if Input.is_action_pressed("ui_accept"):
		if $speedmeter.frame == 1:
			$speedmeter.frame = 0
			velocity.x = 0
			velocity.y = 0
			
		else:
			$speedmeter.frame = 0
			_timer_2s()
	elif Input.is_action_pressed("acelareta"):
		$speedmeter.frame += 1
		yield(get_tree().create_timer(2), "timeout")
	elif Input.is_action_just_released("acelareta"):
# warning-ignore:unused_variable
		for i in range(6):
			$speedmeter.frame -= 1
			yield(get_tree().create_timer(1), "timeout")
func _physics_process(_delta):
	if Input.is_action_pressed("right_move"):
		$coll_police_car_v.disabled = true
		$coll_police_car_h.disabled = false
		velocity.y = 0
		velocity.x = w_speed + int($speedmeter/speed.text) * 3
		$spr_police_car.set_frame(0)
		$spr_police_car.flip_h = 0
	elif Input.is_action_pressed("left_move"):
		$coll_police_car_v.disabled = true
		$coll_police_car_h.disabled = false
		velocity.y = 0
		velocity.x = w_speed - int($speedmeter/speed.text) * 3
		$spr_police_car.flip_h = 180
		$spr_police_car.set_frame(0)
	elif Input.is_action_pressed("up_move"):
		$coll_police_car_h.disabled = true
		$coll_police_car_v.disabled = false
		velocity.x = 0
		velocity.y = w_speed - int($speedmeter/speed.text) * 3
		$spr_police_car.set_frame(1)
	elif Input.is_action_pressed("down_move"):
		$coll_police_car_h.disabled = true
		$coll_police_car_v.disabled = false
		velocity.x = 0
		velocity.y = w_speed + int($speedmeter/speed.text) * 3
		$spr_police_car.set_frame(2)


# warning-ignore:return_value_discarded
	move_and_slide(velocity)

# warning-ignore:unused_argument
func _on_buildings_7_body_entered(body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/dead.tscn")


# warning-ignore:unused_argument
func _on_buildings_6_body_entered(body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/dead.tscn")


# warning-ignore:unused_argument
func _on_buildings_5_body_entered(body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/dead.tscn")


# warning-ignore:unused_argument
func _on_buildings_4_body_entered(body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/dead.tscn")


# warning-ignore:unused_argument
func _on_buildings_3_body_entered(body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/dead.tscn")


# warning-ignore:unused_argument
func _on_buildings_2_body_entered(body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/dead.tscn")


# warning-ignore:unused_argument
func _on_buildings_1_body_entered(body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/dead.tscn")
