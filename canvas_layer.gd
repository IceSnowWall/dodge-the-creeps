extends CanvasLayer



func _ready():
	var tween = create_tween().set_loops()
	
	tween.tween_property($ColorRect, "modulate", Color.AQUAMARINE, 1.0).set_delay(10)
	tween.tween_property($ColorRect, "modulate", Color.CHARTREUSE, 1.0).set_delay(10)
	
