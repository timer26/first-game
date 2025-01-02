extends Node2D
const  SPEED_DEFAULT = 35
const AGGRESION = 2
var attack_speed = 1

var direction = 1


@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_floor = $RayCastFloor
@onready var animated_sprite = $AnimatedSprite2D

#for purple slime
@onready var ray_cast_plazer_trigger_left = $RayCastPlazerTriggerLeft
@onready var ray_cast_plazer_trigger_rigth = $RayCastPlazerTriggerRigth



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !ray_cast_floor.is_colliding():
		direction = direction * -1
		
	if ray_cast_right.is_colliding():
		direction = -1

	if ray_cast_left.is_colliding():
		direction = 1
	
#	for purple slime	
	if ray_cast_plazer_trigger_left.is_colliding():
		direction = -1
		
			
	if ray_cast_plazer_trigger_rigth.is_colliding():
		direction = 1
		
		
	if ray_cast_plazer_trigger_left.is_colliding() or ray_cast_plazer_trigger_rigth.is_colliding():
		attack_speed = SPEED_DEFAULT * AGGRESION
	else:
		attack_speed = SPEED_DEFAULT


#	sprite orientation
	if direction < 1:
		animated_sprite.flip_h = true
	else:
		animated_sprite.flip_h = false
		

		
		
	position.x += direction * delta * attack_speed
	
