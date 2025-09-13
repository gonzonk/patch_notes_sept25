extends CharacterBody2D

func _physics_process(delta: float) -> void:
	var player_position = $"../../Player".global_position
	
	var direction = global_position.direction_to(player_position)
	velocity = direction * 40
	move_and_slide()
