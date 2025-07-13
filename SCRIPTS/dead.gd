extends Node2D




func _ready():
		yield(get_tree().create_timer(3), "timeout")
		$E_icon.show()
		Blink.can_pass_dead = true
		
func _input(_event):
	if Input.is_action_pressed("action") and Blink.can_pass_dead:
			Blink.dead = true
			Blink.private = true
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/private.tscn")
	
