extends Node2D




func _on_exit_street_body_entered(_body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/street_2.tscn")
