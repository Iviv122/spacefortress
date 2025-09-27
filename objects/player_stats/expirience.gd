class_name Expirience

var exp_per_kill : float = 1

var expirience : float = 0
var exp_to_next_level : float = 9
var level : int = 0
var skill_points : int = 0

signal levelup
signal gained(amount : float,ToLevelUp : float)

func _on_enemy_death():
    AddExp(exp_per_kill*PlayerInstance.stats.Get(Stats.StatType.Learnability))

func AddExp(amount:float):
    expirience += amount
    gained.emit(expirience,exp_to_next_level)
    if expirience > exp_to_next_level:
        level_up()
        print("Level up")

func level_up():
    exp_to_next_level += (level+3)*(level*3)
    level+=1 
    skill_points +=1
    expirience = 0
    levelup.emit()
    gained.emit(expirience,exp_to_next_level)