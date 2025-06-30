extends Node2D


func _input(_event):
	print(Blink.bars)
	if Input.is_action_pressed("inventory"):
		if Blink.inventory_cor:
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/corridor.tscn")
		if Blink.inventory_bars:
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/prision.tscn")
		if Blink.inventory_str:
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/street.tscn")
		if Blink.inventory_private:
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/private.tscn")
		if Blink.inventory_map:
			Blink.out = false
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/map.tscn")
	elif Input.is_action_pressed("object_2"):
			Blink.cup = false
			$water_cup.hide()

func _ready():
	$coin_icon/lb_money.text = str(Blink.money)
	if Blink.cup:
# warning-ignore:standalone_expression
		$water_cup.show()
	if Blink.identification:
		$identification.show()
	if Blink.knife:
		$knife.show()
