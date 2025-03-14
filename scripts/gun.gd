extends Node2D

const BULLET = preload("res://scenes/bullet.tscn")

@onready var marker: Marker2D = $Marker2D

func _process(delta):
	look_at(get_global_mouse_position())
	
	rotation_degrees = fposmod(rotation_degrees, 360)
	if rotation_degrees > 90 and rotation_degrees < 270:
		scale.y = - 1
	else: scale.y = 1

	if Input.is_action_just_pressed("fire"):
		var Bullet_instance = BULLET.instantiate()
		get_tree().root.add_child(Bullet_instance)
		Bullet_instance.global_position = marker.global_position
		Bullet_instance.rotation = rotation
