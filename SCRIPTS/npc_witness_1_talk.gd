extends Node2D


func _input(_event):
	if Input.is_action_pressed("ui_accept"):
		hide()
		Blink.talking = false

func _on_ask_1_pressed():
	$icon_npc_witness_1/text_3_npc_witness_1.hide()
	$icon_npc_witness_1/text_2_npc_witness_1.show()
	$icon_npc_witness_1/ask_1.hide()


func _on_ask_2_pressed():
	$icon_npc_witness_1/text_2_npc_witness_1.hide()
	$icon_npc_witness_1/text_3_npc_witness_1.show()
	$icon_npc_witness_1/ask_2.hide()
