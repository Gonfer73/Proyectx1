extends Node2D

var area = false

func _ready():
	yield (get_tree().create_timer(1), "timeout")
	area = true

func _process(_delta):
	if area:
		if Input.is_action_pressed("action"):
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/map.tscn")
