extends MenuButton


# Called when the node enters the scene tree for the first time.
func _ready():
	
#	$".".get_popup().connect("id_pressed", self, "_OnItemPressed")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _OnItemPressed(id):
	print("fdf")


func _on_pressed(id):
	print(id)
	pass # Replace with function body.
