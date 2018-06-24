extends KinematicBody2D

# This is a demo showing how KinematicBody2D
# move_and_slide works.

# Member variables
const MOTION_SPEED = 300 # Pixels/second

var motion = Vector2()

func _physics_process(delta):


	if Input.is_action_pressed("ui_up"):
		motion.x = MOTION_SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -MOTION_SPEED

	#if Input.is_action_pressed("ui_down"):
	#	motion += Vector2(0, 1)

	#if Input.is_action_pressed("ui_left"):
	#	motion += Vector2(-1, 0)
	#if Input.is_action_pressed("ui_right"):
	#	motion += Vector2(1, 0)

	#motion = motion.normalized() * MOTION_SPEED

	move_and_slide(motion)
