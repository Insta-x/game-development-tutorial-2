extends RigidBody2D


@export var thrust_power: float = 1200.0


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("thrust"):
		apply_central_force(Vector2.RIGHT.rotated(global_rotation) * thrust_power)


func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	var turn_direction := Input.get_action_strength("turn_right") - Input.get_action_strength("turn_left")
	
	state.angular_velocity = PI * turn_direction
