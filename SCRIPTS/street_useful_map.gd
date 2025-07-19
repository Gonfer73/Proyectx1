extends Node2D

func _ready():
	$street_1/right_arrow.play()
	$street_2/left_arrow.play()
	$icon_e.play()

func _process(_delta):
	
	if Input.is_action_pressed("action"):
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")
func _input(_event):
	if Input.is_action_pressed("right_arrow"):
		$street_1.hide()
		$street_2.show()
	if Input.is_action_pressed("left_arrow"):
		$street_1.show()
		$street_2.hide()
