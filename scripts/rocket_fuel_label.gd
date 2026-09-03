extends Label

func _process(delta: float) -> void:
	text = str("Fueltank: ", Fuel.fuel_tank)
