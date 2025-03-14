extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	if body.is_in_group("Player"):
		print("Skill Issue")
		Engine.time_scale = 0.5
		timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1
	global.data["coins"] /= 2
	Score.text = global.get_coins_as_text()
	global.save_data()
	get_tree().change_scene_to_file("res://scenes/game_over_screen.tscn")
