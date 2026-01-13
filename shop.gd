extends Node2D
var customers = [
	{
		"art": "kaleidoscope",
		"color": Color.BLUE,
		"dialogue": [
			"This is broken glass.",
			"I want a kaleidoscope.",
			"In blue."
		]
	}
]

var index = 0

func start_customer():
	$CustomerSpawn.spawn_customer(customers[index])

		
