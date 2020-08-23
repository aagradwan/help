extends Spatial
signal level_ended()



func _on_gool_body_entered(body):
	if body is Player :
		emit_signal("level_ended")
