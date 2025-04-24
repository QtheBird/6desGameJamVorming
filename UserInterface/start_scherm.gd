extends Control

var level1 = preload("res://levels/level_1.tscn")

func _on_button_pressed():
	get_tree().change_scene_to_packed(level1)
