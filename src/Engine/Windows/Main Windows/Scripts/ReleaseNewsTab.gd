extends Panel
@export var ReleaseName = ""
@export var ReleaseDesc = ""
@export var ReleaseVers = ""
@export var ReleaseDate = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	
	$Button/VBoxContainer/Label.text = ReleaseName
	$Button.tooltip_text = ReleaseDesc
	$Button/VBoxContainer/Label2.text = ReleaseDesc
	$Button/VBoxContainer/Label3.text = ReleaseVers
	$Button/VBoxContainer/Label4.text = ReleaseDate
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().emit_signal("test")
	pass # Replace with function body.
