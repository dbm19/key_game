extends Node2D

var rng
var keys = ["Key1", "Key2", "Key3", "Key4"]
var correct_key

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	keys = ["Key1", "Key2", "Key3", "Key4"]
	
	rng = RandomNumberGenerator.new()
	
	correct_key = keys[rng.randi_range(0, 3)]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
