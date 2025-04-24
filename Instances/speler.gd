extends CharacterBody2D

var currentPosition = Vector2(0,0)
var stepSize = 64

func _input(event):
	#als pijltjestoetsen
	if event.is_action_pressed("ui_down"):
		#player must move
		currentPosition.y += stepSize
	if event.is_action_pressed("ui_up"):
		#player must move
		currentPosition.y -= stepSize
	if event.is_action_pressed("ui_left"):
		#player must move
		currentPosition.x -= stepSize
	if event.is_action_pressed("ui_right"):
		#player must move
		currentPosition.x += stepSize
	position = currentPosition


func _on_area_2d_area_entered(area):
	print("speler botst")
