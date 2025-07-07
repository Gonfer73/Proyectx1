extends Node2D



func _input(_event):
	if Input.is_action_pressed("inventory"):
		Blink.inventory_bars = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")

func _ready():
	if Blink.inventory_bars:
		$player.position = Blink.position_p
		Blink.inventory_bars = false
	
func _process(_delta):
	if Blink.bad_button:
		$E_icon.show()
		Blink.bad_button = false
	if Input.is_action_pressed("action") and Blink.prisioner:
		Blink.talking = true
		$E_icon.hide()
		$prisioners/prisioner_1/prisioner_talk.show()
		$prisioners/prisioner_1/prisioner_talk/prisioner_talk_label.show()
		$prisioners/prisioner_1/prisioner_talk/prisioner_talk_label2.hide()
		$prisioners/prisioner_1/prisioner_talk/prisioner_talk_label3.hide()
	if Input.is_action_pressed("ui_accept"):
		Blink.talking = false
		$E_icon.show()
		$prisioners/prisioner_1/prisioner_talk.hide()
		
	Blink.position_p = $player.position
	
		



# warning-ignore:unused_argument
func _on_talk_prisioner_body_entered(_body):
	$E_icon.show()
	$E_icon.play()
	Blink.prisioner = true




func _on_talk_prisioner_body_exited(_body):
	$E_icon.hide()
	Blink.prisioner = false
