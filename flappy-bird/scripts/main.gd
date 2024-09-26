extends Node2D

var pipeScene = preload("res://scenes/pipe.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(pipeScene.instantiate())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
