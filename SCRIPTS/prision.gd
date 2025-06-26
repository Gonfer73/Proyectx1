extends Node2D


func _ready():
	if Blink.inventory_bars:
		$player.position = Blink.position_p
		Blink.inventory_bars = false
	
func _process(_delta):
	Blink.position_p = $player.position
	if Input.is_action_pressed("inventory"):
		Blink.inventory_bars = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")

