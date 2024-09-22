extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and position.y < 100:
		velocity.y = JUMP_VELOCITY
		animated_sprite.play("fly")
		print(position.y)
	
	if is_on_floor():
		floor_snap_length = 0.0
		animated_sprite.stop()

	move_and_slide()
