extends Node2D





func _input(_event):
	if Input.is_action_pressed("action") and Blink.can_pass_dead:
			Blink.dead = true
			Blink.private = true
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/private.tscn")
	
