extends RichTextLabel
var log = []

# Called when the node enters the scene tree for the first time.
func _ready():
	Log("Setting Up Cvars")
	Log("Gpu Drivers : Supported & Initialized")
	Log("Setting Up PhysL Engine .... Done!")
	Log("Starting Luminus Compiler")
	Log("-=-=-=[ Luminus Engine v4.6 ]=-=-=-")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$".".text = array_to_string(log)
	pass
	
func Log(msg):
	log.append(msg)
	
func array_to_string(arr: Array) -> String:
	var s = ""
	for i in arr:
		s += String(i)
		s += "\n"
	return s
