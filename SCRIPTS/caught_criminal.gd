extends Node2D


func _ready():
	yield(get_tree().create_timer(7), "timeout")
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/street.tscn")
