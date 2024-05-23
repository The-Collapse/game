extends Camera2D

var is_mouse_button_pressed = false
var last_mouse_pos = Vector2.ZERO
var player_position = Vector2.ZERO
	
func _input(event):
	if event is InputEventMouseButton:
		if event.is_action_pressed("movecam"):
			is_mouse_button_pressed = true
			last_mouse_pos = get_viewport().get_mouse_position()
		elif !event.is_action_pressed("movecam"):
			is_mouse_button_pressed = false

	if is_mouse_button_pressed and event is InputEventMouseMotion:
		var current_mouse_pos = get_viewport().get_mouse_position()
		var delta = last_mouse_pos - current_mouse_pos
		global_position += delta
		last_mouse_pos = current_mouse_pos
