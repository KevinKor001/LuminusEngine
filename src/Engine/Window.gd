extends Window
var Progress = 0
var Load = false
var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Load == true):
	
		$VBoxContainer/ProgressBar.value = $VBoxContainer/ProgressBar.value + rng.randf_range(0.1, 0.5)
#		if ($VBoxContainer/ProgressBar.value >= 100):
#			await get_tree().create_timer(8.0).timeout
		
pass


func _on_button_2_pressed():
	
	self.queue_free()
	
	pass # Replace with function body.


func _on_button_3_pressed():
	
	Load = true

	pass # Replace with function body.
