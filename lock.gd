extends Node2D

var distance_to_shear_line

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	distance_to_shear_line = get_node("LockSprite/KeyHoleSprite/KeyHoleMarker").position - get_node("LockSprite/ShearLine/ShearLineMarker").position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
