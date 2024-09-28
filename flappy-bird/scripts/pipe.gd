extends Node2D

const MAX_OFFSET: float = 200.00
const MIN_OFFSET: float = 150.00

func _ready() -> void:
	pass
   
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# destroy a pipe instance once they are out of the main window.
	if position.x <= -240:
		queue_free()
		print("Pipe was destryoed")

	position.x -= 1
