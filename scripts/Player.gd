extends Entity

var target = position

func _input(event):
	if event.is_action_pressed("move"):
		target = get_global_mouse_position()

func _physics_process(delta):
	var player := $"."
	velocity = position.direction_to(target) * speed
	look_at(get_global_mouse_position())
	player.rotation += 190
	if position.distance_to(target) > 10:
		move_and_slide()
