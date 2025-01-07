extends Button
@export var ItemText = ""
@export var ItemIcon = Texture2D
@export var Tooltip = ""



# Called when the node enters the scene tree for the first time.
func _ready():
	
	$".".tooltip_text = Tooltip
	$".".icon = ItemIcon
	$"Label".text = ItemText
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
