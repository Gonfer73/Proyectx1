extends Node2D


func _input(_event):
	if Input.is_action_pressed("action"):
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/private.tscn")
