extends Camera2D

var is_mouse_button_pressed = false
var last_mouse_pos = Vector2.ZERO

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_MIDDLE and event.pressed:
			is_mouse_button_pressed = true
			last_mouse_pos = get_viewport().get_mouse_position()
		elif event.button_index == MOUSE_BUTTON_MIDDLE and !event.pressed:
			is_mouse_button_pressed = false

	if is_mouse_button_pressed and event is InputEventMouseMotion:
		var current_mouse_pos = get_viewport().get_mouse_position()
		var delta = last_mouse_pos - current_mouse_pos
		global_position += delta
		last_mouse_pos = current_mouse_pos
