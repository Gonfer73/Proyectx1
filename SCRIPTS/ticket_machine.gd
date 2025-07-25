extends Node2D








func _on_introduce_id_button_pressed():
	$introduce_id.frame = 1
	$introduce_id.playing = false
	Blink.introduced = true
	$ticket_machine/ticket_machine_lb.text = "      ESPERE"
#	yield(get_tree().create_timer(10), "timeout")
	$ticket_machine/ticket_machine_lb.text = "       COJA \n     SU PAPEL"
	if Blink.ticket:
# warning-ignore:return_value_discarded
	
		get_tree().change_scene("res://SCENES/car_street_2.tscn")
