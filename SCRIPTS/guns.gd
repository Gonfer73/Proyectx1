extends Node2D


func _ready():
	Blink.shooting = true
	Blink.shoot = true




func _on_check_bulltet_body_entered(_body):
	$enemy2.hide()
	$timer_1.start(2)
	
	



func _on_check_bulltet_1_body_entered(_body):
	$enemy.hide()
	$timer_0.start(2)
	


func _on_check_bulltet_p_body_entered(_body):
	Blink.bullet_player = true


func _on_timer_1_timeout():
	$enemy2.show()


func _on_timer_0_timeout():
	$enemy.show()
