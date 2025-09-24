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

enum StatType {
    Damage,
    CritChance,
    ReloadSpeed,
    Harvesting,
    Learnability
}
