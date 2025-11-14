extends Node

@onready var score: Label = $"../Labels/Score"

var scoreTotal = 0

func add_point():
	scoreTotal += 1
	score.text = str(scoreTotal)
