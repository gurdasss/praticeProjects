extends Node2D


@onready var scores: Label = $Scores
@onready var bird: CharacterBody2D = $Bird

var pipeScene = preload("res://scenes/pipe.tscn")
var pipeObj: Node = self.generatePipe() # initilize the pipe

var currentScore: int = 0

func _ready() -> void:
	add_child(pipeObj)

# generate a pipe instance with a random speed of each new pipe instance
func generatePipe() -> Node:
	var currentObj: Node = pipeScene.instantiate()
	var randomSpeed: float = randf_range(currentObj.get("MIN_SPEED"), currentObj.get("MAX_SPEED"))
	currentObj.set("moveSpeed", randomSpeed)
	return currentObj

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# check if the pipe instance exist and
	# also increment the score once a pipe instance gets destroyed

	if not is_instance_valid(pipeObj):
		currentScore += 1
		scores.text = str(currentScore)
		
		pipeObj = generatePipe()
		add_child(pipeObj)
