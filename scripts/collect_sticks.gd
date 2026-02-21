extends Area2D

class_name Stick
static var count = 0

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	Stick.count += 1
	print(Stick.count)
