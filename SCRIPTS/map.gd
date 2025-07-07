extends Node2D




func _process(_delta):
	if Input.is_action_pressed("action") and Blink.water:
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://SCENES/water_tower.tscn")
	if Input.is_action_pressed("action") and Blink.npc_1:
			Blink.talking = true
			$npcs/npc_1_talk.show()
			$E_icon.hide()
	if Input.is_action_pressed("action") and Blink.npc_2:
			Blink.talking = true
			$npcs/npc_2_talk.show()
			$E_icon.hide()
	if Input.is_action_pressed("action") and Blink.npc_3:
			Blink.talking = true
			$npcs/npc_3_talk.show()
			$E_icon.hide()
	if Input.is_action_pressed("action") and Blink.npc_4:
		Blink.talking = true
		$E_icon.hide()
		$npcs/npc_4.velocidad = 0
		if Blink.talk == 2:
			$npcs/npc_4_talk.show()
			$npcs/npc_4_talk/npc_4_icon/text_npc_4_0.hide()
			$npcs/npc_4_talk/npc_4_icon/text_npc_4_1.hide()
			$npcs/npc_4_talk/npc_4_icon/text_npc_4_2.hide()
			$npcs/npc_4_talk/npc_4_icon/text_npc_4_3.show()
		elif Blink.talk == 1:
			$npcs/npc_4_talk.show()
		else:
			$npcs/npc_4_talk.show()
			$npcs/npc_4_talk/npc_4_icon/text_npc_4_1.hide()
			$npcs/npc_4_talk/npc_4_icon/text_npc_4_2.hide()
			$npcs/npc_4_talk/npc_4_icon/text_npc_4_3.hide()
		
		
	Blink.position_n = $npcs/npc_4.position
	Blink.position_p = $player.position
	
func _input(_event):
	if Input.is_action_pressed("ui_accept"):
		if Blink.npc_1:
			Blink.talking = false
			$npcs/npc_1_talk.hide()
			$E_icon.show()
		elif Blink.npc_2:
			Blink.talking = false
			$npcs/npc_2_talk.hide()
			$E_icon.show()
		elif Blink.npc_4:
			Blink.talking = false
			$npcs/npc_4.velocidad = 9999
			$npcs/npc_4_talk.hide()
			$E_icon.show()
		elif Blink.npc_3:
			Blink.talking = false
			$npcs/npc_3_talk.hide()
			$E_icon.show()
	elif Input.is_action_pressed("inventory"):
		Blink.inventory_map = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")

func _ready():
	$npcs/npc_2_talk.hide()
	$npcs/npc_3_talk.hide()
	$npcs/npc_4_talk.hide()
	$npcs/npc_1_talk.hide()
	if Blink.inventory_map:
		$npcs/npc_4.position = Blink.position_n 
		$player.position = Blink.position_p
		Blink.inventory_map = false
	elif Blink.button == true:
		$player.position = Vector2(160, 650)
		Blink.button = false
	elif Blink.water == true:
		$player.position = Vector2(448, 544)
		Blink.water = false
	elif Blink.corridor == true:
		$player.position = Vector2(150, 100)
		Blink.corridor = false
	elif Blink.out == true:
		$player.position = Vector2(1513, 159)
		Blink.out = false
	




func _on_area_npc_1_body_entered(_body):
	Blink.npc_1 = true
	$E_icon.show()
	$E_icon.play()
	


func _on_area_npc_4_body_entered(_body):
	Blink.npc_4 = true
	$E_icon.show()
	$E_icon.frame = 0
	
	


# warning-ignore:unused_argument
func _on_area_npc_1_body_exited(_body):
	Blink.npc_1 = false
	$E_icon.hide()


func _on_area_npc_4_body_exited(_body):
	Blink.npc_4 = false
	$E_icon.hide()


func _on_area_npc_3_body_entered(_body):
	Blink.npc_3 = true
	$E_icon.show()
	$E_icon.play()
	



func _on_area_npc_3_body_exited(_body):
	Blink.npc_3 = false
	$E_icon.hide()


func _on_area_npc_2_body_entered(_body):
	Blink.npc_2 = true
	$E_icon.show()
	$E_icon.play()


func _on_area_npc_2_body_exited(_body):
	Blink.npc_2 = false
	$E_icon.hide()

func _on_enter_water_body_exited(body):
	Blink.water = false
	$E_icon.hide()


func _on_enter_water_body_entered(_body):
	Blink.water= true
	$E_icon.show()
	$E_icon.play()
