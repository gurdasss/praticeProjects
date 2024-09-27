extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var collision_shape: CollisionShape2D = $CollisionShape2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("fly"):
		velocity.y = JUMP_VELOCITY
	
	#if is_on_floor():
		#collision_shape.disabled = true

	move_and_slide()
