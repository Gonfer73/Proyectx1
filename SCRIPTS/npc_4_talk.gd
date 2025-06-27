extends Node2D



func _ready():
	$npc_4_icon/space_bar_icon.play()


func _on_ask_1_pressed():
	$npc_4_icon/text_npc_4_0.hide()
	$npc_4_icon/text_npc_4_1.show()
	$npc_4_icon/text_npc_4_2.hide()
	$npc_4_icon/ask_1.hide()
	Blink.talk += 1
	


func _on_ask_2_pressed():
	$npc_4_icon/text_npc_4_0.hide()
	$npc_4_icon/text_npc_4_1.hide()
	$npc_4_icon/text_npc_4_2.show()
	$npc_4_icon/ask_2.hide()
	Blink.talk += 1
