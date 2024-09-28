extends Node2D

var pipeScene = preload("res://scenes/pipe.tscn")

func generatePipes():
	var pipeObj: Node = pipeScene.instantiate()
	var rMinOffset: float = randf_range(pipeObj.get("MIN_OFFSET"), pipeObj.get("MAX_OFFSET"))
	var rMaxOffset: float = randf_range(pipeObj.get("MIN_OFFSET"), pipeObj.get("MAX_OFFSET"))
	add_child(pipeObj)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	generatePipes()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
