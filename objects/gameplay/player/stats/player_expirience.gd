extends Node
class_name PlayerExpirience

var Exp : float = 0
var ExpToNextLevel : float = 9
var Level : int = 0

signal levelup
signal gained(amount : float,ToLevelUp : float)

func _ready():
    add_to_group("enemy_death")

func _on_enemy_death():
    AddExp(0.75)

func AddExp(amount:float):
    Exp += amount
    gained.emit(Exp,ExpToNextLevel)
    if Exp > ExpToNextLevel:
        level_up()

func level_up():
    ExpToNextLevel += (Level+3)*(Level*3)
    Level+=1 
    Exp = 0
    levelup.emit()
    gained.emit(Exp,ExpToNextLevel)