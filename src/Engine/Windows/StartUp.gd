extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	get_window().size = Vector2i(617, 648)
	
	
	$Panel/ProgressBar.value = 0
	
	
	await get_tree().create_timer(2.0).timeout
	$Panel/ProgressBar.value = 12
	await get_tree().create_timer(1.0).timeout
	$Panel/ProgressBar.value = 21
	await get_tree().create_timer(.5).timeout
	$Panel/ProgressBar.value = 34
	await get_tree().create_timer(1.2).timeout
	$Panel/ProgressBar.value = 65
	await get_tree().create_timer(.1).timeout
	$Panel/ProgressBar.value = 82
	await get_tree().create_timer(.2).timeout
	$Panel/ProgressBar.value = 100
	
	get_window().size = Vector2i(1152, 648)
	
	get_tree().change_scene_to_file("res://Windows/Main Windows/NewProject.tscn")
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
