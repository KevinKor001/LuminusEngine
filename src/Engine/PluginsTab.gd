extends Panel
@export var ReleaseName = ""
@export var ReleaseDesc = ""
@export var ReleaseVers = ""
@export var ReleaseDate = ""
@export var Icon = CompressedTexture2D

# Called when the node enters the scene tree for the first time.
func _ready():
	
	$Button/VBoxContainer/HBoxContainer/Label.text = ReleaseName
	$Button.tooltip_text = ReleaseDesc
	$Button/VBoxContainer/Label2.text = ReleaseDesc
	$Button/VBoxContainer/Label3.text = ReleaseVers
	$Button/VBoxContainer/Label4.text = ReleaseDate
	$Button/VBoxContainer/HBoxContainer/TextureRect.texture = Icon
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	print("Ping@githubusercontent... succ > recieving data : void 1 [Nuke as broke.nuke.com] void 2 [The ported version of nuke as an LVS] void 3 [#6 + 233422] void 4 [UTFULL STOP.self > VAR x self.OBJ > x.Vin4 REG 3774#5 STR AS Vin5 > ROOT.UPDATE > UTFULL RESUME.self > eof#404] void 5 [By the broke team :)]")
	pass # Replace with function body.
