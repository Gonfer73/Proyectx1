extends Node2D



func _on_change_car_street_body_entered(_body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/car_street.tscn")
