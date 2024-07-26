extends GraphNode


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_option_button_item_selected(index):
	
	if(index == 1):
		$HSeparator.visible = false
		$Button.visible = false
		$Button2.visible = false
		$CheckButton.visible = false
		$CheckButton2.visible = false
		$CheckButton3.visible = false
		$CheckButton4.visible = false
		$CheckButton5.visible = false
		$CheckButton6.visible = false
		$CheckButton7.visible = false
		$MenuButton.visible = false
	else:
		$HSeparator.visible = true
		$Button.visible = true
		$Button2.visible = true
		$CheckButton.visible = true
		$CheckButton2.visible = true
		$CheckButton3.visible = true
		$CheckButton4.visible = true
		$CheckButton5.visible = true
		$CheckButton6.visible = true
		$CheckButton7.visible = true
		$MenuButton.visible = true
	
	pass # Replace with function body.
