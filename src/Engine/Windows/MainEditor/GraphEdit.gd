extends GraphEdit
var SelectedNode

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if(Input.is_action_just_pressed("Code_esc")):
		$Control.visible = false
	
	pass


func _on_gui_input(event):
	
	

	
	pass # Replace with function body.


func _on_control_focus_exited():
	print("Aeuifuhei")
	$Control.visible = false
	
	pass # Replace with function body.


func _on_control_mouse_exited():

	$Control.visible = false
	
	pass # Replace with function body.

func AddNode(NodeType):
	if (NodeType == "Variable"):
		$".".add_child(load("res://Windows/MainEditor/CodeEditor/Nodes/DataTypes/VariableNode.tscn").instantiate())
	elif (NodeType == "Script"):
			$".".add_child(load("res://Windows/MainEditor/CodeEditor/Nodes/LsCodeNode.tscn").instantiate())


func _on_button_pressed():
	
	$Control.visible = true

	pass # Replace with function body.


func _on_node_selected(node):
	
	SelectedNode = node
	
	pass # Replace with function body.


func _on_delete_nodes_request(nodes):
	for i in nodes:
		$".".remove_child(find_child(i))
	
	pass # Replace with function body.
