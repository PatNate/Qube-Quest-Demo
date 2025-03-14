extends Control

@onready var popup = $Window
@onready var popup2 = $ShopWindow

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")
	pass

func _on_x_pressed():
	popup.hide()

func _on_tutorial_button_down():
	popup.show()
