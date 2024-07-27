extends GraphNode
var NodeType = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_line_edit_text_changed(new_text):
	
	$".".title = NodeType + " Variable " + $LineEdit.text
	
	pass # Replace with function body.


func _on_option_button_item_selected(index):
	if(index == 1):
		NodeType = "Set"
		$LineEdit2.editable = true
		$".".set_slot_enabled_left(2, true)

		$LineEdit2.text = ""
	else:
		NodeType = "Get"
		$LineEdit2.editable = false
		$".".set_slot_enabled_left(2, false)
		$LineEdit2.text = "Value is grabbed"
	
	$".".title = NodeType + " Variable " + $LineEdit.text
	
	print(NodeType)
	pass # Replace with function body.
