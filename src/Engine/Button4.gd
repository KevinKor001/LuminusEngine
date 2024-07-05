extends Button
#var WarningWin = preload("res://Windows/WarningPopUp.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	
	get_viewport().gui_embed_subwindows = false
	#var warn = WarningWin.instantiate()
	#add_child(warn)
#	warn.visible = true

	
	pass # Replace with function body.
