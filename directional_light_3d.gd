extends DirectionalLight3D

@export var rotation_speed := 10.0

func _process(delta):
	rotate_x(deg2rad(rotation_speed * delta))
