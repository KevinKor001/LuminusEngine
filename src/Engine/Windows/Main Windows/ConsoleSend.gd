extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	RunCommand()

	pass # Replace with function body.
func RunCommand():
	var command = $"../LineEdit".text
	print("Request to main : " + command)
	
	if (command=="Quit" || command=="quit"):
		$"../../Panel/RichTextLabel".Log("Shutting Down Services...")
		$"../../Panel/RichTextLabel".Log("SSD Done .. cya later!")
		get_tree().quit()
	else:
		$"../../Panel/RichTextLabel".Log("no Command")
	
	


func _on_line_edit_text_submitted(new_text):
	RunCommand()
	pass # Replace with function body.
