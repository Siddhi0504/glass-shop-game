extends CharacterBody2D

var art_type = ""
var color = Color.WHITE
var dialogue = []

func setup(order_data):
	art_type = order_data.art
	color = order_data.color
	dialogue = order_data.dialogue
