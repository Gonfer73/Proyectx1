extends KinematicBody2D


export var speed = 300


func _process(delta):
	if Blink.bullet_player == false:
		position.x -= delta * speed
	elif Blink.bullet_player:
		position.x = 0
	
	if position.x < 760:
		queue_free()
