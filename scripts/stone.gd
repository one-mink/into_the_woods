extends Area2D

class_name Stone
static var count = 0

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	Stone.count += 1
	print(Stone.count)
