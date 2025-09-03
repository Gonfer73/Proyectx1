extends Node2D




func _on_exit_street_body_entered(_body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/street_2.tscn")


func _on_enter_lift_1_body_entered(_body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/corridor_1.tscn")


func _on_enter_lift_2_body_entered(_body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/corridor_1.tscn")
