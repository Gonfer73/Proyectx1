extends Node2D


var warning = false

func _process(_delta):
	Blink.position_p = $player.position

func _ready():
	if Blink.inventory_cor_1:
		Blink.inventory_cor_1 = true
		$player.position = Blink.position_p
		

func _input(_event):
	if Input.is_action_pressed("inventory"):
		Blink.inventory_cor_1 = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")

func _on_door_a_body_entered(_body):
	if warning == false:
		warning = true
		$lb_warning_a.show()
		yield(get_tree().create_timer(1), "timeout")
		$lb_warning_a.hide()
		warning = false

func _on_door_b_body_entered(_body):
	if warning == false:
		warning = true
		$lb_warning_b.show()
		yield(get_tree().create_timer(1), "timeout")
		$lb_warning_b.hide()
		warning = false


func _on_door_c_body_entered(_body):
	if warning == false:
		warning = true
		$lb_warning_c.show()
		yield(get_tree().create_timer(1), "timeout")
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/house_building_1.tscn")
		$lb_warning_c.hide()
		warning = false


func _on_door_d_body_entered(_body):
	if warning == false:
		warning = true
		$lb_warning_d.show()
		yield(get_tree().create_timer(1), "timeout")
		$lb_warning_d.hide()
		warning = false


func _on_enter_lift_1_body_entered(_body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/lift_building_1.tscn")


func _on_enter_lift_2_body_entered(_body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/lift_building_1.tscn")
