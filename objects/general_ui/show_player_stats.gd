extends VBoxContainer 
class_name ShowPlayerStats

func redraw()->void:

	for i in get_children():
		i.queue_free()

	for i in Stats.StatType.size():
		var l = Label.new()

		l.text += Stats.Name(i) + " : " + str(PlayerInstance.stats.Get(i)) + "\n"
		l.mouse_filter = Control.MOUSE_FILTER_STOP
		l.tooltip_text = Stats.Description(i)

		add_child(l)

func _ready():
	PlayerInstance.stats.changed.connect(redraw)
	redraw()
