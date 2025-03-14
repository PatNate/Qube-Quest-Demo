extends Area2D

signal coin_collected

func _on_body_entered(body):
	if body.is_in_group("Player"):
		print("Coin collected!")  # Debugging print to check if the signal is being emitted
		emit_signal("coin_collected")
		queue_free()
