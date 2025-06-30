extends Node2D
var shoot



func _on_check_bulltet_body_entered(_body):
	$enemy2.hide()
	yield(get_tree().create_timer(5), "timeout")
	$enemy2.show()



func _on_check_bulltet_1_body_entered(_body):
	$enemy.hide()
	yield(get_tree().create_timer(5), "timeout")
	$enemy.show()


func _on_check_bulltet_p_body_entered(_body):
	Blink.bullet_player = true
