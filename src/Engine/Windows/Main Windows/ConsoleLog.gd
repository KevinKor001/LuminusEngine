extends RichTextLabel
var log = ["-=-=-=[ Luminus Engine v4.8 ]=-=-=-"]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass



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
