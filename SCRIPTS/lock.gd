extends Node2D

var key = false
var wait = false


	

func _ready():
	$lock.frame = 0

func _input(_event):
	if Input.is_action_pressed("action"):
		$icon_e.hide()
		$icon_d.show()
		key = true
		$lock.frame = 1
	elif Input.is_action_pressed("rotate_key") and key:
		if wait == false:
			$lock.frame = 2
			$icon_d.playing = false
			$icon_d.frame = 0
			wait = true
			$wait.start(2)
# warning-ignore:return_value_discarded
	elif Input.is_action_just_released("rotate_key") and key:
		$icon_d.playing = true
		wait = false
		$lock.frame = 1
	


func _on_wait_timeout():
	get_tree().change_scene("res://SCENES/car_street.tscn")
