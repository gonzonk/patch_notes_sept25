extends CharacterBody2D

const speed = 70
@onready var player: CharacterBody2D = $"."


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	var x_dir := Input.get_axis('left', 'right')
	var y_dir := Input.get_axis('up', 'down');
	
	player.position.x += x_dir * speed * delta
	player.position.y += y_dir * speed * delta
	move_and_slide()
