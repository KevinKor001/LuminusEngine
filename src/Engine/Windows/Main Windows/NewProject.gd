extends Button
var dir = DirAccess
var file = FileAccess
var data = {}


# Called when the node enters the scene tree for the first time.
func _ready():
	




	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	MakeNewProject.Create_Directory($"../..".ProjectDir,$"../../Panel/VBoxContainer/HBoxContainer/ProjectName".text, true,",","")
	# FIX DIS





	print(data)
	
	

	print("Check Made File:")


	

	
	get_window().unresizable = false
	get_tree().change_scene_to_file("res://Windows/MainEditor/main.tscn")
	
	pass # Replace with function body.





