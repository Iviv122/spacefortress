extends VBoxContainer
class_name ShopSwitchMenu

@export var item : Array[Control]

func switch(i : int)->void:
    for m in item:
        m.hide()

    item[i].show()

func _ready():
    var iterator = 0
    for i in item:
        var b = SwitchButton.new(iterator)
        b.text = i.name
        b.switch.connect(switch)
        add_child(b)
        iterator+=1

    switch(0) 