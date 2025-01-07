extends VBoxContainer
@export var ProjectDir = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	

	SetPreview("blank")
	
	
	pass # Replace with function body.

func SetPreview(name: String):
	var Selection_txt = $TemplateSlection
	var BannerImg = $Banner
	var Warningtxt = $Panel/VBoxContainer/Warningtext
	match name:
		"blank":
			Selection_txt.text = "Selected Template : (Default)"
			BannerImg.texture = load("res://Textures/TemplateBanners/Default.png")
			Warningtxt.text = "This is a bug  :)"
			Warningtxt.visible = false
		"Game2D":
			Selection_txt.text = "Selected Template : 2D Game"
			BannerImg.texture = load("res://Textures/TemplateBanners/Game2D.png")
			Warningtxt.text = "This is a bug  :)"
			Warningtxt.visible = false
		"Game3D":
			Selection_txt.text = "Selected Template : 3D Game"
			BannerImg.texture = load("res://Textures/TemplateBanners/Game3D.png")
			Warningtxt.text = "WARNING: judging you see this option youre using a compiled version \n so be aware of compatibillity leaks"
			Warningtxt.visible = true
		"PhysSim":
			Selection_txt.text = "Selected Template : Physics Simulator"
			BannerImg.texture = load("res://Textures/TemplateBanners/Phys.png")
			Warningtxt.text = "WARNING: judging you see this option youre using a compiled version \n so be aware of compatibillity leaks"
			Warningtxt.visible = true

	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_blank_game_pressed():
	
	SetPreview("blank")
	
	pass # Replace with function body.


func _on_dgame_pressed(): #2d
	
	SetPreview("Game2D")
	
	pass # Replace with function body.


func _on_d_game_pressed():
	
	SetPreview("Game3D")
	
	pass # Replace with function body.


func _on_phys_sim_pressed():
	
	SetPreview("PhysSim")
	
	pass # Replace with function body.


func _on_browse_pressed():
	var fd = $"../../../../NativeFileDialog"
	fd.show()
	
	
	
	
	pass # Replace with function body.


func _on_native_file_dialog_dir_selected(dir):
	ProjectDir = dir
	$Panel/VBoxContainer/HBoxContainer3/LineEdit.text = dir
	
	pass # Replace with function body.
