extends VehicleBody3D

@export var engine_power := 1800.0
@export var steering_angle := 0.5
@export var brake_power := 40.0

func _physics_process(_delta):
	var steer = Input.get_action_strength("right") - Input.get_action_strength("left")
	var accel = Input.get_action_strength("accelerate") - Input.get_action_strength("brake")

	steering = steer * steering_angle
	engine_force = accel * engine_power
	brake = brake_power if abs(accel) < 0.1 else 0
