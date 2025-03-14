extends Control

@onready var score_label: Label = $Score

func _ready():
	global.load_data()
	$Score.text = global.get_coins_as_text()

func _on_coin_coin_collected():
	global.data["coins"] += 1
	score_label.text = global.get_coins_as_text()
	global.save_data()
