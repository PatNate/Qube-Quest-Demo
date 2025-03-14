extends Node2D

func _on_back_button_down():
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")

func _on_restart_button_down():
	get_tree().change_scene_to_file("res://scenes/world.tscn")
