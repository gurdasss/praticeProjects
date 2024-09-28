extends Node2D

const MAX_OFFSET: float = 200.00
const MIN_OFFSET: float = 150.00
const MAX_SPEED: float = 300.00
const MIN_SPEED: float = 100.00


var moveSpeed: float = 150.00:
	set(newSpeed):
		moveSpeed = clamp(newSpeed, MIN_SPEED, MAX_SPEED)

func _ready() -> void:
	position.y = randf_range(MIN_OFFSET, MAX_OFFSET)
   
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# destroy the pipe instance once they are out of the main window.
	if position.x <= -240:
		queue_free()

	position.x -= moveSpeed * delta
