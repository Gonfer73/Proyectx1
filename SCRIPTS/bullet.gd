extends KinematicBody2D

export var speed = 300


func _process(delta):
	position.x -= delta * speed
	
	if position.x < -10:
		queue_free()
