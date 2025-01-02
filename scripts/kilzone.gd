extends Area2D

@onready var timer = $Timer
@onready var player = get_node_or_null("/root/Game/Player")

func _on_body_entered(body):
	
	print("mrtvola")

	
	if(player != null):
		player.removeHeatlth()
	#Engine.time_scale = 0.5
	#body.get_node ("CollisionShapePlayer").queue_free()

	#timer.start()
#
#func _on_timer_timeout():
	#Engine.time_scale = 1
	#get_tree().reload_current_scene()
