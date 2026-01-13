extends Node2D

signal customer_done

func finish_work():
	emit_signal("customer_done")
	queue_free()
	
var art = ""
var color = Color.WHITE
func setup(data):
	art = data["art"]
	color = data["color"]
