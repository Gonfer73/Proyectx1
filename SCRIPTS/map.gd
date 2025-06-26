extends Node2D



func _process(_delta):
	Blink.position_n = $npcs/npc_4.position
	Blink.position_p = $player.position
	
func _input(_event):
	if Input.is_action_pressed("ui_accept"):
		if Blink.npc_1:
			$npcs/npc_1_talk.hide()
		elif Blink.npc_4:
			$npcs/npc_4.velocidad = 9999
			$npcs/npc_4_talk.hide()
	elif Input.is_action_pressed("inventory"):
		Blink.inventory_map = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")

func _ready():
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
	$npcs/npc_1_talk.show()


func _on_area_npc_4_body_entered(_body):
	$npcs/npc_4.velocidad = 0
	Blink.npc_4 = true
	$npcs/npc_4_talk.show()
	$npcs/npc_4_talk/npc_4_icon/text_npc_4_1.hide()
	$npcs/npc_4_talk/npc_4_icon/text_npc_4_2.hide()
	
