extends Node2D

func _input(_event):
	if Input.is_action_pressed("inventory"):
		Blink.inventory_private = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")
	if Input.is_action_pressed("action"):
		if Blink.tap:
			if Blink.tap_frame == 0:
				$tap/tap_sprite.frame = 1
				Blink.tap_frame = 1
			elif Blink.tap_frame == 1:
				$tap/tap_sprite.frame = 0
				Blink.tap_frame = 0
			

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
		


func _on_tap_activate_body_entered(_body):
	Blink.tap = true


func _on_tap_activate_body_exited(_body):
	Blink.tap = false
