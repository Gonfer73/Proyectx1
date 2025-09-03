extends Node2D


var warning = false

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
		$lb_warning_c.hide()
		warning = false


func _on_door_d_body_entered(_body):
	if warning == false:
		warning = true
		$lb_warning_d.show()
		yield(get_tree().create_timer(1), "timeout")
		$lb_warning_d.hide()
		warning = false
