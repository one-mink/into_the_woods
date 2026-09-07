extends Label

func _process(delta: float) -> void:
	text = "Fuel needed: "  + str(50 - Fuel.fuel_tank) + "\nFuel in Bagpack: " + str(Fuel.fuel) + "\nMushrooms: " + str(Mushroom.count)
	
	
