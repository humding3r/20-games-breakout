extends AnimatableBody2D

@export var ball_spawn: Marker2D
@export var ball: PackedScene

const SPEED: float = 5.0

func _physics_process(delta: float) -> void:
	var direction: int = Input.get_axis("move_left", "move_right")
	move_and_collide(Vector2(direction * SPEED, 0))
