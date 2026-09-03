extends Area2D

class_name Stick
static var count = 0

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("dog"):
		queue_free()
		Dog.sitting = true
	
	if body.is_in_group("player"):
		queue_free()
		Stick.count += 1
		print(Stick.count)
