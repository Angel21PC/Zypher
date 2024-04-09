extends Node2D

var minion_scene = preload("res://characters/minion.tscn")
var my_position = self.position

func _on_timer_timeout():
	spawn_minion()

func spawn_minion():
	var minion = minion_scene.instantiate()
	minion.position = my_position
	minion.add_to_group("minions")
	add_child(minion)
	var objetivo = get_parent().get_node("Objetivo")
	minion.asignar_objetivo(objetivo)
	
