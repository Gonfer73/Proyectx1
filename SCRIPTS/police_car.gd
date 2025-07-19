extends KinematicBody2D


var rotation_speed = 1

var velocity = Vector2()
var rotation_dir = 0
var w_speed = 0
var wait = false





func get_input():
	rotation_dir = 0
	velocity = Vector2()
	if Blink.reading_instructions == false:
		if Input.is_action_pressed("right_move") and Blink.dying == false and Blink.speed != 0:
			rotation_dir += 1
		if Input.is_action_pressed("left_move") and Blink.dying == false and Blink.speed != 0:
			rotation_dir -= 1
		if Input.is_action_pressed("down_move"):
			velocity = Vector2(-(Blink.speed * 5), 0).rotated(rotation)
		if Input.is_action_pressed("up_move"):
			velocity = Vector2((Blink.speed * 5), 0).rotated(rotation)


func _process(_delta):
	if Blink.reading_instructions:
		Blink.speed = 0
	Blink.position_p = position
	velocity = Vector2((Blink.speed * 5), 0).rotated(rotation)


func _physics_process(delta):
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	velocity = Vector2((Blink.speed * 5), 0).rotated(rotation)
	velocity = move_and_slide(velocity)

# warning-ignore:unused_argument



func _on_enter_car_street_2_body_entered(_body):
	Blink.street_2 = true
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/car_street_2.tscn")
	


# warning-ignore:unused_argument



func _on_npc_crash_body_entered(_body):
	if Blink.reading_instructions == false:
		Blink.dying = true
		rotation_dir = 0
		yield(get_tree().create_timer(10), "timeout")
		Blink.can_pass_dead = true
		
	# warning-ignore:return_value_discarded


func _on_buildings_touch_body_entered(_body):
	Blink.dying = true
	rotation_dir = 0
	yield(get_tree().create_timer(10), "timeout")
	Blink.can_pass_dead = true
