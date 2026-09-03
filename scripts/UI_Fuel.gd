extends Label

func _process(delta: float) -> void:
	text = str("Fuel Amount Needed: ", Fuel.fuel_needed)
