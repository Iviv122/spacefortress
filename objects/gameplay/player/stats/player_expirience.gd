extends Node
class_name PlayerExpirience

var Exp : float
var ExpToNextLevel : float
var Level : int = 0

signal levelup

func AddExp(amount:float):
    Exp += amount 
    if Exp > ExpToNextLevel:
        level_up()

func level_up():
    ExpToNextLevel *= (Level+3)*(Level*3)
    Level+=1 
    levelup.emit()