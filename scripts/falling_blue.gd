extends RigidBody2D

func _on_area_2d_body_entered(body):
	if body is CharacterBody2D:
		$Fall_start.start()

func _on_fall_start_timeout():
	set_deferred("freeze", false)
	$AnimatedSprite2D.play()
	$AnimatedSprite2D2.play()
	$Timer.start()

func _on_timer_timeout():
	$AnimatedSprite2D.stop()
	$AnimatedSprite2D2.stop()
	get_tree().queue_free()
