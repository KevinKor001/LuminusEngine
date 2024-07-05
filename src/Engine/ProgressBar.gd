extends ProgressBar
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	DisplayServer.window_set_title("Luminus Engine 4 Bootloader [V0.2AP3334]")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	$".".value = $".".value + rng.randf_range(0.1, 0.5)
	if ($".".value >= 100):
		await get_tree().create_timer(2.0).timeout
		get_tree().change_scene_to_file("res://Windows/Main Windows/NewProject.tscn")
		DisplayServer.window_set_title("Luminus Engine - New Project")
	pass
