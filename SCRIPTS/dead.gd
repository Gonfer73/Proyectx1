extends Node2D


func _process(_delta):
	if Blink.can_pass_dead == false:
		yield(get_tree().create_timer(1), "timeout")
		Blink.can_pass_dead = true
		
func _input(_event):
	if Input.is_action_pressed("action") and Blink.can_pass_dead:
			Blink.dead = true
			Blink.private = true
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/private.tscn")
	
