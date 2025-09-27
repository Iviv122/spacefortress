extends Button
class_name LevelUpChoice

var stat : Stat
var rare : Rarity = get_random_rarity() # use custom function for weighted rarity

enum Rarity {
	Basic,
	Rare,
	Epic,
	Legendary
}

func _ready() -> void:
	GetColor()

func _pressed() -> void:
	PlayerInstance.stats.AddStat(stat)
	get_tree().call_group("next_step", "next_step")

func SetStat(s : Stat) -> void:
	stat = s.duplicate()
	stat._a *= rare+1
	text = Stats.Name(stat.type()) + "+" + str(stat.amount())

func GetColor() -> void:
	var color : Color

	match rare:
		Rarity.Basic:
			color = Color("1a1a1a99")
		Rarity.Rare:
			color = Color("1a1abd99")
		Rarity.Epic:
			color = Color("d5e45799")
		Rarity.Legendary:
			color = Color("d51a5799")

	var stylebox := StyleBoxFlat.new()
	stylebox.bg_color = color
	stylebox.border_color = Color(1, 1, 1, 0.2)

	add_theme_stylebox_override("normal", stylebox)
	add_theme_stylebox_override("hover", stylebox)
	add_theme_stylebox_override("pressed", stylebox)

func get_random_rarity() -> Rarity:
	var roll := randf() * 100.0 # random float between 0 and 100

	if roll < 60.0:
		return Rarity.Basic
	elif roll < 80.0:
		return Rarity.Rare
	elif roll < 95.0:
		return Rarity.Epic
	else:
		return Rarity.Legendary
