extends Node2D


func _process(_delta):
	$icon_e.play()
	$right_arrow.play()
	if Input.is_action_pressed("action"):
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")
func _input(_event):
	if Input.is_action_pressed("right_arrow"):
		print("HELLO WORLD")
