extends Node2D

var distance_to_shear_line
var pin_line_1
var pin_line_2
var pin_line_3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	distance_to_shear_line = get_node("LockSprite/KeyHoleSprite/KeyHoleMarker").position - get_node("LockSprite/ShearLine/ShearLineMarker").position
	pin_line_1 = get_node("LockSprite/Pin/Sprite2D/PinLine")
	pin_line_2 = get_node("LockSprite/Pin2/Sprite2D/PinLine")
	pin_line_3 = get_node("LockSprite/Pin3/Sprite2D/PinLine")

	Global.pin_line_position_1 = pin_line_1.position.y
	Global.pin_line_position_2 = pin_line_2.position.y 
	Global.pin_line_position_3 = pin_line_3.position.y

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
