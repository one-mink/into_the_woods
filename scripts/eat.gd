extends Area2D

func _on_body_entered(body: Area2D):
	if body.is_in_group("stick"):
		print("ok")
		pass
		
