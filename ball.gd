extends RigidBody2D

@export var hitbox: CollisionShape2D

func _draw() -> void:
	draw_circle(hitbox.position, 5, Color("WHITE"))
