extends Node2D

const CustomerScene = preload("res://scenes/customer.tscn")

var customers = [
	{ "art": "kaleidoscope", "color": Color.BLUE },
	{ "art": "window", "color": Color.ORANGE }
]

var current_index = 0
var current_customer = null

func spawn_customer():
	if current_index >= customers.size():
		print("All customers done")
		return

	current_customer = CustomerScene.instantiate()
	add_child(current_customer)

	# OPTIONAL: pass data
	current_customer.setup(customers[current_index])

	# LISTEN for completion
	current_customer.customer_done.connect(_on_customer_done)

func _on_customer_done():
	current_index += 1
	spawn_customer()

func _ready():
	spawn_customer()

func _on_next_pressed() -> void:
	current_customer.finish_work()
