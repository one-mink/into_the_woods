extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if Mushroom.count > 0:
		Fuel.fuel += Mushroom.count * 10
		Mushroom.count = 0
		print("[DEBUG] Fuel: ", Fuel.fuel)
		print("[DEBUG] Mushrooms: ", Mushroom.count)
	
