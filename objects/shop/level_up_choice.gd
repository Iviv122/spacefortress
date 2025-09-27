extends Button
class_name LevelUpChoice

var stat : Stat
var rarity : Rarity

#var rarity =((Chance per Wave * (Current Wave - Min Wave - 1)) + Base Chance)
# credits to Brotato

var basic = ((0 * (PlayerInstance.misc_stats.wave_count - 0 - 1)) + 100) 
var rare = ((0 * (PlayerInstance.misc_stats.wave_count - 0 - 2)) + 0)
var epic = ((0 * (PlayerInstance.misc_stats.wave_count - 0 - 4)) + 0)
var legendary = ((0 * (PlayerInstance.misc_stats.wave_count - 0 - 8)) + 0)

func get_random_rarity() -> Rarity:
	var roll = randf() * 100.0

	if roll < legendary:
		return Rarity.Legendary
	elif roll < epic:
		return Rarity.Epic
	elif roll < rare:
		return Rarity.Rare
	else:
		return Rarity.Basic

func _ready() -> void:
	rarity = get_random_rarity()
	GetColor()

enum Rarity {
	Basic,
	Rare,
	Epic,
	Legendary
}

func SetStat(s : Stat) -> void:
	stat = s.duplicate()
	stat._a *= rare+1
	text = Stats.Name(stat.type()) + "+" + str(stat.amount())


func _pressed() -> void:
	PlayerInstance.stats.AddStat(stat)
	get_tree().call_group("next_step", "next_step")

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
