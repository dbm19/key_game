extends Node2D

var key_tooth_1_scene
var key_tooth_2_scene
var key_tooth_3_scene
var key_tooth_1_scene_instance
var key_tooth_2_scene_instance
var key_tooth_3_scene_instance
var key_tooth_1_marker
var key_tooth_2_marker
var key_tooth_3_marker

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	key_tooth_1_scene = preload("res://key_tooth.tscn")
	key_tooth_2_scene = preload("res://key_tooth.tscn")
	key_tooth_3_scene = preload("res://key_tooth.tscn")
	key_tooth_1_marker = get_node("KeyTooth1Marker")
	key_tooth_2_marker = get_node("KeyTooth2Marker")
	key_tooth_3_marker = get_node("KeyTooth3Marker")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.pin_line_position_1 && Global.pin_line_position_2 && Global.pin_line_position_3:
		set_positions()

func set_positions():
	key_tooth_1_scene_instance = key_tooth_1_scene.instantiate()
	key_tooth_2_scene_instance = key_tooth_2_scene.instantiate()
	key_tooth_3_scene_instance = key_tooth_3_scene.instantiate()
	
	key_tooth_1_scene_instance.position.y += Global.pin_line_position_1 * 100
	key_tooth_2_scene_instance.position.y += Global.pin_line_position_2 * 100
	key_tooth_3_scene_instance.position.y += Global.pin_line_position_3 * 100
	
	key_tooth_1_scene_instance.position.x = key_tooth_1_marker.position.x
	key_tooth_2_scene_instance.position.x = key_tooth_2_marker.position.x
	key_tooth_3_scene_instance.position.x = key_tooth_3_marker.position.x
	
	add_child(key_tooth_1_scene_instance)
	add_child(key_tooth_2_scene_instance)
	add_child(key_tooth_3_scene_instance)
