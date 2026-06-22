extends Control

# This script must be attached to the "Main" node
@onready var my_button = $Button
@onready var my_text_edit = $TextEdit

func _ready():
	# Cleanly connect the signal
	if not my_button.pressed.is_connected(_on_button_pressed):
		my_button.pressed.connect(_on_button_pressed)
		print("Ready! Signal connected safely.")

func _on_button_pressed():
	print("SUCCESS: The button was clicked!")
	
	# Visual feedback
	my_button.modulate = Color.GREEN
	await get_tree().create_timer(0.2).timeout
	my_button.modulate = Color.WHITE
	
	# Log the time to the TextEdit
	var time = Time.get_time_string_from_system()
	my_text_edit.text += "Action Logged at " + time + "\n"
