extends RigidBody2D

@export var hitbox: CollisionShape2D

const SPEED: float = 300.0

func _draw() -> void:
	draw_circle(hitbox.position, hitbox.shape.radius, Color("WHITE"))

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("launch") and freeze:
		var temp: Vector2 = global_position
		freeze = false
		top_level = true
		global_position = temp
		apply_central_impulse(Vector2(SPEED, -SPEED))

func _physics_process(delta: float) -> void:
	var collision_info: KinematicCollision2D = move_and_collide(Vector2.ZERO)
	if collision_info:
		linear_velocity = linear_velocity.bounce(collision_info.get_normal())
