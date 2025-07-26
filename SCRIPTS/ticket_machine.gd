extends Node2D


func _on_introduce_id_button_pressed():
	$introduce_id.frame = 1
	$introduce_id.playing = false
	$ticket_machine/ticket_machine_lb.text = "      ESPERE"
	$ticket.show()
# warning-ignore:unused_variable
	for i in range(183):
		$ticket.position += Vector2(0, 1)
		yield(get_tree().create_timer(0.1), "timeout")
#	yield(get_tree().create_timer(10), "timeout")
	$ticket_machine/ticket_machine_lb.text = "       COJA \n     SU PAPEL"
	Blink.introduced = true

func _on_take_ticket_pressed():
	if Blink.introduced:
		if Blink.street_2:
			Blink.reading_instructions = false
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/car_street_2.tscn")
		if Blink.street_1:
			Blink.reading_instructions = false
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/car_street.tscn")
