extends KinematicBody
class_name Player

export var move_speed : float= 30.0
export var rotate_speed : float = 3.0

func _physics_process(delta : float) -> void:
	var z_movement : float = Input.get_action_strength("back") - Input.get_action_strength("amam")
	var rotate : float =Input.get_action_strength("left") - Input.get_action_strength("right")
	
	rotation.y += rotate * rotate_speed * delta 
	
	
	var dirction : Vector3 = Vector3(0,0,1).rotated(Vector3(0,1,0), rotation.y )
	
	
	var motion :Vector3 = dirction * z_movement * delta * move_speed
	move_and_collide(motion)
	 
