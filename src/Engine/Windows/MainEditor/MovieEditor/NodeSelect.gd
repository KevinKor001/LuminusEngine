extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	self.visible = false
	get_parent().AddNode("Variable")
	pass # Replace with function body.


func _on_button_17_pressed():
	
	self.visible = false
	get_parent().AddNode("Script")
	pass # Replace with function body.
