extends StaticBody2D

var randomNum: float = 0.0
@export var maxOffset: float = 150.00
@export var minOffset: float = 0.00


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	randomNum = randf_range(minOffset, maxOffset)
	position.y = randomNum
	print(randomNum)
