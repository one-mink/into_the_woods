extends Node2D


func _on_button_pressed() -> void:
	Fuel.fuel = 0
	get_tree().change_scene_to_file("res://scenes/world.tscn")
