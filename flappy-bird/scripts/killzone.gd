extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	# check if the child node exists
	if is_instance_valid(timer):
		body.hide() # hide the entered body once it entered this area
		timer.start()


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
