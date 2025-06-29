extends Node2D


export var bullet_scene: PackedScene

func _ready():
				var bullet = bullet_scene.instance()
				bullet.global_position = $appear_bullet_2.global_position
				get_parent().call_deferred("add_child", bullet)
				$timer_shoot.start(5)


func _on_timer_shoot_timeout():
				var bullet = bullet_scene.instance()
				bullet.global_position = $appear_bullet_2.global_position
				get_parent().call_deferred("add_child", bullet)
				$timer_shoot.start(5)
