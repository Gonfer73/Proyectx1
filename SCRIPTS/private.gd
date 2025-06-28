extends Node2D

func _input(_event):
	if Input.is_action_pressed("inventory"):
		Blink.inventory_private = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")

func _process(_delta):
	Blink.position_p = $player.position
	if Input.is_action_pressed("action") and Blink.get_knife:
		$knife.hide()
		Blink.with_knife = true
		Blink.knife = true

func _ready():
	if Blink.inventory_private:
		$player.position = Blink.position_p 
		Blink.inventory_private = false
		
	if Blink.with_knife:
		$knife.hide()
		
