extends Area2D



func _on_body_entered(body: CharacterBody2D) -> void:
	print("[DEBUG] Entered Body: ", body)
	if body:
		get_tree().change_scene_to_file("res://scenes/gameover.tscn")
