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
				Blink.tap_state = "ON"
			elif Blink.tap_frame == 1:
				$tap/tap_sprite.frame = 0
				Blink.tap_frame = 0
				Blink.tap_state = "OFF"
		if Blink.cooker:
			if Blink.cooker_frame == 0:
				$cooker/cooker_sprite.frame = 1
				Blink.cooker_frame = 1
				Blink.cooker_state = "ON"
			elif Blink.cooker_frame == 1:
				$cooker/cooker_sprite.frame = 0
				Blink.cooker_frame = 0
				Blink.cooker_state = "OFF"
		if Blink.fridge:
			Blink.fridge_interior = true
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/fridge_interior.tscn")
			

func _process(_delta):
	Blink.position_p = $player.position
	if Input.is_action_pressed("action") and Blink.get_knife:
		$knife.hide()
		Blink.with_knife = true
		Blink.knife = true

func _ready():
	if Blink.dead:
		$player.position = Vector2(60, 60)
		Blink.dead = false
	if Blink.fridge_interior:
		$player.position = Vector2(1120, 104)
		Blink.fridge_interior = false
	if Blink.tap_state == "ON":
		$tap/tap_sprite.frame = 1
		Blink.tap_frame = 1
	elif Blink.tap_state == "OFF":
		$tap/tap_sprite.frame = 0
		Blink.tap_frame = 0
	if Blink.cooker_state == "ON":
		$cooker/cooker_sprite.frame = 1
		Blink.cooker_frame = 1
	elif Blink.cooker_state == "OFF":
		$cooker/cooker_sprite.frame = 0
		Blink.cooker_frame = 0
	if Blink.inventory_private:
		$player.position = Blink.position_p 
		Blink.inventory_private = false
		
	if Blink.with_knife:
		$knife.hide()
		


func _on_tap_activate_body_entered(_body):
	Blink.tap = true
	$E_icon.show()
	$E_icon.play()


func _on_tap_activate_body_exited(_body):
	Blink.tap = false
	$E_icon.hide()


func _on_cooker_activate_body_entered(_body):
	Blink.cooker = true
	$E_icon.show()
	$E_icon.play()


func _on_cooker_activate_body_exited(_body):
	Blink.cooker = false
	$E_icon.hide()


func _on_fridge_activate_body_entered(_body):
	Blink.fridge = true
	$E_icon.show()
	$E_icon.play()



func _on_fridge_activate_body_exited(_body):
	Blink.fridge = false
	$E_icon.hide()


func _on_get_knife_body_entered(_body):
	Blink.get_knife = true
	$E_icon.show()
	$E_icon.play()


func _on_get_knife_body_exited(_body):
	Blink.get_knife = false
	$E_icon.hide()
