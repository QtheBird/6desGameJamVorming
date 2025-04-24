extends CharacterBody2D

var previousPosition= Vector2(0,0)
var currentPosition = Vector2(0,0)
var stepSize = 64

func _input(event):
	#als pijltjestoetsen
	if event.is_action_pressed("ui_down"):
		#player must move
		previousPosition = currentPosition
		currentPosition.y += stepSize
	if event.is_action_pressed("ui_up"):
		#player must move
		previousPosition = currentPosition
		currentPosition.y -= stepSize
	if event.is_action_pressed("ui_left"):
		#player must move
		previousPosition = currentPosition
		currentPosition.x -= stepSize
	if event.is_action_pressed("ui_right"):
		#player must move
		previousPosition = currentPosition
		currentPosition.x += stepSize
	position = currentPosition


func _on_area_2d_area_entered(area):
	currentPosition = previousPosition
	position = currentPosition
