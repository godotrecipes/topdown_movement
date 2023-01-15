extends CharacterBody2D

var speed = 400  # move speed in pixels/sec

func _physics_process(delta):
	look_at(get_global_mouse_position())
	var move_input = Input.get_axis("down", "up")
	velocity = transform.x * move_input * speed
	move_and_slide()
