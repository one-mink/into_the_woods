extends Area2D

class_name Mushroom
static var count = 0

func _on_body_entered(body: Node2D) -> void:

	if body.is_in_group("player"):
		queue_free()
		count += 1
		print("[DEBUG] Mushrooms: ", count)
		
