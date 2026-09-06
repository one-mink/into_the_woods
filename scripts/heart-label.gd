extends Label

func _process(delta: float) -> void:
	text = "Hearts: " + str(Player.hearts)
