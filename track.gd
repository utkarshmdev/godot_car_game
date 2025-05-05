extends Node3D

@export var tree_scene: PackedScene
@export var area_size := Vector3(100, 0, 100)
@export var count := 50

func _ready():
	for i in range(count):
		var tree = tree_scene.instantiate()
		tree.position = Vector3(
			randf() * area_size.x,
			0,
			randf() * area_size.z
		)
		add_child(tree)
