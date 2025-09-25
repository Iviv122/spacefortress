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

func Copy() -> Stats:
    return duplicate()

func Set(amount : float, t: StatType) ->void:
    stats[t] = amount
    change.emit()

func Get(t: StatType) ->float:
    return stats[t]

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
        _:
            return "Unknown"
    

enum StatType {
    MaxHealth,
    Damage,
    CritChance,
    ReloadSpeed,
    Harvesting,
    Learnability
}
