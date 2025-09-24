extends Resource
class_name StatModifier

@export var amount: float = 0
@export var operation_type: OperationType
@export var stat_type: Stats.StatType

var operation

func _init():
	if operation_type == OperationType.Addition:
		operation = func method(x: float) -> float:
			return x + amount
	elif operation_type == OperationType.Multiplication:
		operation = func method(x: float) -> float:
			return x * amount

func OnValue(querry: float) -> float:
	return operation.call(querry)

func OnStats(querry: Stats) -> float:
	return operation.call(querry.Get(stat_type))

enum OperationType {
	Addition,
	Multiplication
}