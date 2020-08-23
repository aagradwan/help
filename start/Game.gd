extends Node
onready var  final_menu : = $Control
onready var player :  = $player

var play_time : = 0.0 
func _process(delta:float)-> void :
	play_time += delta

func _on_level2_level_ended():
	var total_play_time = play_time
	player.queue_free()
	final_menu.initislize(total_play_time)


func _on_Control_tryagen():
	get_tree().reload_current_scene()
