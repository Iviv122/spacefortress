extends Resource
class_name Stats

signal change
var stats: Array[float]
func _init():
	stats.resize(StatType.size())

func Mult(s: Stats) -> void:
	var iterator = 0
	for i in StatType:
		stats[iterator] *= s.stats[iterator]
		iterator += 1
		change.emit()

func Add(s: Stats) -> void:
	var iterator = 0
	for i in StatType:
		stats[iterator] += s.stats[iterator]
		iterator += 1
		change.emit()

func Apply(s: Array[Stat]) -> void:
	for i in s:
		AddStat(i)
		change.emit()
func ApplyMultyplication(s: Array[Stat]) -> void:
	for i in s:
		MultiplyStat(i)
		change.emit()



func Copy() -> Stats:
	return duplicate()



func AddStat(s :Stat) ->void:
	stats[s.type()] += s.amount()
	change.emit()
func SubstractStat(amount: float, t : StatType) ->void:
	stats[t] -= amount
	change.emit()
func MultiplyStat(s :Stat) ->void:
	stats[s.type()] *= s.amount()
	change.emit()
func DivideStat(s :Stat) ->void:
	stats[s.type()] /= s.amount()
	change.emit()


func Set(amount : float, t: StatType) ->void:
	stats[t] = amount
	change.emit()

func Get(t: StatType) ->float:
	return stats[t]


static func Description(t: StatType) -> String:
	match t:
		StatType.MaxHealth:
			return "Your maximux health limit"
		StatType.Damage:
			return "Your damage multiplier"
		StatType.CritChance:
			return "Your chance to deal double damage"
		StatType.ReloadSpeed:
			return "How many shots per second you are able to do"
		StatType.Harvesting:
			return "Pacs gain multiplier"
		StatType.Learnability:
			return "Expirience gain multiplier"
		StatType.Baiting:
			return "Enemy spawn rate multiplier"
		_:
			return "Unknown"

static func Name(t: StatType) -> String:
	match t:
		StatType.MaxHealth:
			return "Max Health"
		StatType.Damage:
			return "Damage"
		StatType.CritChance:
			return "Crit Chance"
		StatType.ReloadSpeed:
			return "Reload Speed"
		StatType.Harvesting:
			return "Harvesting"
		StatType.Learnability:
			return "Learnability"
		StatType.Baiting:
			return "Baiting"
		_:
			return "Unknown"
	

enum StatType {
	MaxHealth,
	Damage,
	CritChance,
	ReloadSpeed,
	Harvesting,
	Learnability,
	Baiting
}
