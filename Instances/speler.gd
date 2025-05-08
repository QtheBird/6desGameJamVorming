extends CharacterBody2D

var previousPosition= Vector2(0,0)
var currentPosition = Vector2(0,0)
var stepSize = 64
@onready var gameOver = $CanvasLayer/gameOver
var inputsAllowed = true
@onready var snapSound = $snapSound

func _input(event):
	if inputsAllowed:
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
	if area is Obstakel:
		currentPosition = previousPosition
		position = currentPosition
		snapSound.play()
	elif area is Danger:
		gameOver.visible = true
		inputsAllowed = false
