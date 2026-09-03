extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		Player.hearts -= 1
		# await get_tree().create_timer(2.0).timeout
		print("[DEBUG] Player hearts: ", Player.hearts)
