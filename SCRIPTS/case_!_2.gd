extends Node2D

func _ready():
	$crimes_lb_1/option_1.add_item("SELECIONE UNA OPCIÓN", 0)
	$crimes_lb_1/option_1.add_item("Homicidio", 1)
	$crimes_lb_1/option_1.add_item("Hurto", 2)
	$crimes_lb_1/option_1.add_item("Tráfico de estupefacientes", 3)
	$crimes_lb_1/option_1.add_item("Abuso", 4)
	$crimes_lb_1/option_1.add_item("Maltrato animal", 5)
	$crimes_lb_1/option_1.add_item("Desacato a la autoridad", 6)
	
	


func _on_check_box_0_pressed():
	if $crimes_lb_2/check_box_1.pressed == true:
		$crimes_lb_2/check_box_1.pressed = false


func _on_check_box_1_pressed():
	if $crimes_lb_2/check_box_0.pressed == true:
		$crimes_lb_2/check_box_0.pressed = false


func _on_check_box_2_pressed():
	if $crimes_lb_3/check_box_3.pressed == true:
		$crimes_lb_3/check_box_3.pressed = false


func _on_check_box_3_pressed():
	if $crimes_lb_3/check_box_2.pressed == true:
		$crimes_lb_3/check_box_2.pressed = false


func _on_check_box_4_pressed():
	if $crimes_lb_4/check_box_5.pressed == true:
		$crimes_lb_4/check_box_5.pressed = false


func _on_check_box_5_pressed():
	if $crimes_lb_4/check_box_4.pressed == true:
		$crimes_lb_4/check_box_4.pressed = false
