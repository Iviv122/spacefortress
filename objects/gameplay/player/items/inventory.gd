class_name Inventory    
var _items : Array[Item]

func AddItem(i : Item) -> void:
    
    i.OnPickUp()
    _items.push_back(i)
