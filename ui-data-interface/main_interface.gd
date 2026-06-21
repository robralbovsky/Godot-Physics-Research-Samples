extends Control

# We define a variable to track state
var count: int = 0

# Get references to our nodes so the script can control them
@onready var label = $VBoxContainer/CounterLabel
@onready var button = $VBoxContainer/IncrementButton

func _ready():
	# Connect the button's "pressed" signal to our function
	button.pressed.connect(_on_button_pressed)
	label.text = "Count: 0"

# This function runs every time the signal is received
func _on_button_pressed():
	count += 1
	label.text = "Count: " + str(count)
	print("Signal received: Count is now ", count)
