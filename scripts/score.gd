extends Node

var points = 0
var label: Label
func _ready():
	# Conecta señales o realiza configuraciones iniciales aquí si es necesario.
	pass

# Called when the node enters the scene tree for the first time.
func _process(delta: float) -> void:
	label = get_node("HBoxContainer/Label2")
	var minions = get_tree().get_nodes_in_group("minions")
	
	print(label)
	#var label = get_parent().get_node("Label2")
	for minion in minions:
		minion.connect("add_point", add_point)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func add_point(delta):
	points += 1
	label.text = str(points)
	print(points)
	#label.text = points
	pass
