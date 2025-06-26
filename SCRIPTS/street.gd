extends Node2D


func _ready():
	if Blink.inventory_str:
		$player.position = Blink.position_p
		Blink.inventory_str = false

func _process(_delta):
	Blink.position_p = $player.position

# warning-ignore:unused_argument
func _input(event):
	if Input.is_action_pressed("inventory"):
		Blink.inventory_str = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")
