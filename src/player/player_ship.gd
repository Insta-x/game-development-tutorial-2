extends RigidBody2D


signal dead()


@export var thrust_power: float = 1200.0
@onready var thrust_particles: GPUParticles2D = $ThrustParticles


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("thrust"):
		apply_central_force(Vector2.RIGHT.rotated(global_rotation) * thrust_power)
	
	thrust_particles.emitting = Input.is_action_pressed("thrust")


func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	var turn_direction := Input.get_action_strength("turn_right") - Input.get_action_strength("turn_left")
	
	state.angular_velocity = PI * turn_direction


func _on_hurt_box_body_entered(body: Node2D) -> void:
	hide()
	dead.emit()
