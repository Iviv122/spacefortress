extends Label 
class_name MoneyDisplay

func update(c : float):
	text = str(int(c))

func _ready() -> void:
	tooltip_text = "Pacs, main crypto-currency in this world"
	size = Vector2(32,32)
	horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	vertical_alignment = VERTICAL_ALIGNMENT_CENTER

	mouse_filter = Control.MOUSE_FILTER_STOP

	var stylebox := StyleBoxTexture.new()
	stylebox.texture = load("res://raw_assets/sprite/pac.png")

	add_theme_stylebox_override('normal',stylebox)
	add_theme_stylebox_override('focus',StyleBoxEmpty.new())

	text =  str(int(PlayerInstance.money.current_money))
	PlayerInstance.money.changed.connect(update)
