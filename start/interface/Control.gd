extends Control

signal tryagen

onready var time : = $CenterContainer/column/time

func initislize(total_play_time : float) -> void :
	var minites :String = str(int(total_play_time / 60.0))
	var seconds : String = str(int(fmod(total_play_time,60.0)))
	var timetext = "Total time %s m %s s" %[minites,seconds]
	time.text=timetext
	
	show()


func _on_try_pressed():
	emit_signal("tryagen")


func _on_exit_pressed():
	get_tree().quit()
