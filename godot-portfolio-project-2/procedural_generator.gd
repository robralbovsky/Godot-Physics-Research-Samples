extends Node3D

@export var box_scene : PackedScene = preload("res://FallingBox.tscn")

func _unhandled_input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_SPACE:
		print("Space detected: Spawning grid...")
		spawn_grid()

func spawn_grid():
	for x in range(5):
		for z in range(2):
			var new_box = box_scene.instantiate()
			new_box.position = Vector3(x * 2.5, 10, z * 2.5)
			add_child(new_box)
