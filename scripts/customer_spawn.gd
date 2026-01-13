extends Node2D
class_name  CustomerSpawn
const CustomerScene = preload("res://scenes/customer.tscn")

func spawn_customer(order_data):
	var customer = CustomerScene.instantiate()
	customer.global_position = $Marker2D.global_position
	get_parent().add_child(customer)
	customer.setup(order_data)
