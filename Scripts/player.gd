extends CharacterBody2D


const SPEED = 400.0

@onready var Pharoah_sprite: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	var xdirection := Input.get_axis("ui_left", "ui_right")
	if Global.canmove:
		if xdirection:
			velocity.x = xdirection * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			
		var ydirection := Input.get_axis("ui_up", "ui_down")
		if ydirection:
			velocity.y = ydirection * SPEED
		else:
			velocity.y = move_toward(velocity.y, 0, SPEED)

		if xdirection == 0 && ydirection == 0:
			Pharoah_sprite.play("default")
		elif xdirection:
			Pharoah_sprite.play("walking")
		elif ydirection == 1:
			Pharoah_sprite.play("walkingup")
		elif ydirection == -1:
			Pharoah_sprite.play("walkingdown")
			
		if xdirection < 0:
			Pharoah_sprite.flip_h = false
		elif xdirection > 0:
			Pharoah_sprite.flip_h = true

		move_and_slide()
