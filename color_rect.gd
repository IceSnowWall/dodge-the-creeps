extends ColorRect

#eu alterei as cores manualmente no ColorRect
@export var start_color = Color.AQUAMARINE
@export var end_color = Color.FIREBRICK

var _tween: Tween

func reset_color():
	if _tween and _tween.is_running():
		_tween.kill()
	
	color = start_color
	
func start_tween():
	if _tween and _tween.is_running():
		_tween.kill()
	
	_tween = create_tween().set_loops()
	_tween.tween_property(self, "color", end_color, 30.0)
	_tween.tween_property(self, "color", start_color, 30.0)
	
