extends Node2D


func _process(_delta):
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
		if Blink.inventory_map:
			Blink.out = false
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/map.tscn")
	elif Input.is_action_pressed("object_1"):
			Blink.cup = false

func _ready():
	$coin_icon/lb_money.text = str(Blink.money)
	if Blink.cup:
# warning-ignore:standalone_expression
		$tm_inventory.hide()
		$tm_inventory2.show()
		$tm_inventory3.hide()
		$tm_inventory4.hide()
	else:
		$tm_inventory.show()
		$tm_inventory2.hide()
		$tm_inventory3.hide()
		$tm_inventory4.hide()

