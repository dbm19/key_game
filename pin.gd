extends Node2D

var pin_line
var rng

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pin_line = get_node("Sprite2D/PinLine")
	rng = RandomNumberGenerator.new()
	
	pin_line.position.y = rng.randf_range(0.0, 0.5)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
