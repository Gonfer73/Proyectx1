extends Node2D

var area = false



func _ready():
	if Blink.inventory_cor:
		$player.position = Blink.position_p
		Blink.inventory_cor = false
	$wait.start(0.01)#espera 0,01 seg para evitar que al empezar el jugador ya toque el área

	
func _process(_delta):
	Blink.position_p = $player.position

# warning-ignore:unused_argument
func _input(_event):
	if Input.is_action_pressed("inventory"):
		Blink.inventory_cor = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/inventory.tscn")

func _on_enter_guns_body_entered(_body):
	if area:
		Blink.guns = true
		Blink.shoot = true
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://SCENES/guns.tscn")


func _on_wait_timeout():
	area = true #la var area a true tras esperar
	if Blink.guns == true:
		$player.position = Vector2(750, 150)
		Blink.guns = false
	elif Blink.bars == true:
		$player.position = Vector2(117, 105)
		Blink.bars = false
	elif Blink.private:
		$player.position = Vector2(803, 88)
		Blink.private = false
