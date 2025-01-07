extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	Output("Lscript>")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func Output(Output: String):
	$"../Panel/VBoxContainer/Panel/RichTextLabel".Log(Output)
