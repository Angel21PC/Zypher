extends Area2D

# Velocidad a la que el minion se moverá hacia el objetivo.
var velocidad = 100.0
# Referencia al objetivo hacia el cual el minion se moverá.
var objetivo: Area2D = null

func _ready():
	# Conecta señales o realiza configuraciones iniciales aquí si es necesario.
	pass

func _process(delta: float) -> void:
	# Mueve el minion hacia el objetivo si el objetivo ha sido asignado.
	if objetivo:
		var direccion = objetivo.global_position - global_position
		global_position += direccion.normalized() * velocidad * delta

# Esta función puede ser llamada desde el exterior para asignar el objetivo.
func asignar_objetivo(nuevo_objetivo: Area2D):
	objetivo = nuevo_objetivo
