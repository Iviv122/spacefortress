extends Resource 
class_name Stats

signal change

# damage related
@export var Damage: float # flat buff
@export var CritChance: float # percent

# attack related
@export var ReloadSpeed: float # every gun will multyply by this stat

# utility
@export var Harvesting: float # money mult
@export var Learnability: float # exp mult


func Mult(s: Stats) -> void:
    Damage *= s.Damage
    CritChance *= s.CritChance
    ReloadSpeed *= s.ReloadSpeed
    Harvesting *= s.Harvesting
    Learnability *= s.Learnability
    change.emit()

func Add(s: Stats) -> void:
    Damage += s.Damage
    CritChance += s.CritChance
    ReloadSpeed += s.ReloadSpeed
    Harvesting += s.Harvesting
    Learnability += s.Learnability
    change.emit()

func Copy() -> Stats:
    var s : Stats = Stats.new()

    Damage = s.Damage
    CritChance = s.Damage
    ReloadSpeed = s.Damage
    Harvesting = s.Damage
    Learnability = s.Damage

    return s

