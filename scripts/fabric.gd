extends Node2D

var minion_scene = preload("res://characters/minion.tscn")

func _on_timer_timeout():
	spawn_minion(Vector2(100, 100))

func spawn_minion(position):
	var minion = minion_scene.instantiate()
	add_child(minion)
	var objetivo = get_parent().get_node("Objetivo")
	minion.asignar_objetivo(objetivo)
	
