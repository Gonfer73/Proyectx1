extends Node2D




func _on_dennie_button_pressed():
	Blink.bad_button = true
	Blink.talking = false
	$prisioner_talk_label.hide()


func _on_accept_button_pressed():
	if Blink.knife:
		Blink.knife = false
		Blink.money += 100
		$prisioner_talk_label.hide()
		$prisioner_talk_label2.show()
		$prisioner_talk_label3.hide()
	elif Blink.knife == false:
		$prisioner_talk_label.hide()
		$prisioner_talk_label2.hide()
		$prisioner_talk_label3.show()
