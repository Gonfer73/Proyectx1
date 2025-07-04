extends Node2D

var l2
var l3
var l4
var l5
var l6
var l7
var l8
var l9


func _ready():
	
	
	randomize()
	var nom_array = ["Gonzalo","Alfredo","María","Juan","Juana","Carla","Joaquina","Sergio","Debla","Santiago","Rocío"] #lista de nombres
	var nom = nom_array[int(rand_range(0, 10))] #nombre
	var primap_array = ["Ferrer","García","Estella","Pérez","Felípez","Escudero","Caballero","Fernández","Gómez","Vázquez","Álvarez"] #lista de apellidos 1
	var primap = primap_array[int(rand_range(0, 10))] #primer apellido
	var segunap_array = ["Ferrer","García","Estella","Pérez","Felípez","Escudero","Caballero","Fernández","Gómez","Vázquez","Álvarez"] #lista de apellidos 2
	var segunap = segunap_array[int(rand_range(0, 10))] #segundo apellido
	l2 = int(rand_range(120, 350)) #num proceso
	l3 = str(nom) + " " + str(primap) + " " + str(segunap) #nombre completo
	var letr_array = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
	var letr = letr_array[int(rand_range(0,25))] #letra dni
	var num = int(rand_range(00000000, 99999999)) #num dni
	l4 =  str(num) + letr #num y letra dni
	l5 = int(rand_range(1, 28)) #día nacido
	var meses_array = ["enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre"] #lista de meses
	l6 = meses_array[int(rand_range(0, 11))] #mes nacido
	l7 = int(rand_range(1926, 2007)) #año nacido
	l8 = 2025-l7 #edad
	var nacionalidad_array = ["Español/a","Español/a","Español/a","Español/a","Español/a","Español/a","Español/a","Español/a","Español/a","Francés/esa","Inglés/esa","Marroquí","Alemán/ana","Sueco/a","Suizo/a","Argentino/a","Peruano/a","Estadounidense","Chino/a"] #lista de nacionalidades
	l9 = nacionalidad_array[int(rand_range(0, 10))] #nacionalidad
	
	$l_2.text = str(l2)
	$l_3.text = str(l3)
	$l_4.text = str(l4)
	$l_5.text = str(l5)
	$l_6.text = str(l6)
	$l_7.text = str(l7)
	$l_8.text = str(l8)
	$l_9.text = str(l9)
	

	
	


func _on_button_off_app_1_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://SCENES/computer.tscn")
	







func _on_send_button_pressed():
		print(l2)
		if $input_l_2.text.to_lower() == str(l2).to_lower():
			if $input_l_3.text.to_lower() == str(l3).to_lower():
				if $input_l_4.text.to_lower() == str(l4).to_lower():
					if $input_l_5.text.to_lower() == str(l5).to_lower():
						if $input_l_6.text.to_lower() == str(l6).to_lower():
							if $input_l_7.text.to_lower() == str(l7).to_lower():
								if $input_l_8.text.to_lower() == str(l8).to_lower():
									if $input_l_9.text.to_lower() == str(l9).to_lower():
										Blink.prisioners_nm.append(l3)
										Blink.office_scr = Blink.office_scr +1
										$score.text = str(Blink.office_scr)
										$send_button.text = "DATOS RECOPILADOS CORRECTAMENTE"
										yield(get_tree().create_timer(1), "timeout") 
# warning-ignore:return_value_discarded
										get_tree().change_scene("res://SCENES/computer.tscn")
										
		else:
			$send_button.text = "SU INTELIGENCIA ES ENTRE NULA Y NULA"
