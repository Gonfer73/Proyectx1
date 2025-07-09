extends Node2D


func _input(_event):
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
		if Blink.in_clues:
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/case_!_2.tscn")
	elif Input.is_action_pressed("object_2"):
		if Blink.in_clues == false:
			Blink.cup = false
			$water_cup.hide()
		elif Blink.in_clues:
			Blink.info_possible = true
			Blink.cup = false
			$water_cup.hide()
			Blink.clues.insert(0, "Vaso de agua")
func _ready():
	$coin_icon/lb_money.text = str(Blink.money)
	if Blink.cup:
# warning-ignore:standalone_expression
		$water_cup.show()
	if Blink.identification:
		$identification.show()
	if Blink.knife:
		$knife.show()
