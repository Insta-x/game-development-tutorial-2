extends Area2D


signal objective_reached()


func _on_body_entered(body: Node2D) -> void:
	objective_reached.emit()
